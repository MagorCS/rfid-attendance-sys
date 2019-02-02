import mysql.connector
import time

# Setup queries according to databases in use
def setupQueries(studentDatabase, tapRecordDatabase):
    global queries
    queries = {
        #Tap and Record
        "searchRfid" : "SELECT id, classNum, surname, firstName, middleName, sex, section, gName, gNum, rfid FROM "+studentDatabase+" WHERE rfid = '{}'", #format with rfid; returns student info
        "recordTap" : "INSERT INTO "+tapRecordDatabase+" VALUES(0,'{}','{}', CURDATE(), CURTIME());",  #Format with studentId, rfid; records in database
        #Database to Excel
        "classList" : "SELECT classNum, surname, firstName, middleName, sex FROM "+studentDatabase+" where section='{}';",    #Format with section; returns section students
        "listDays" : "select date_format(date,'%a, %e %b') from "+tapRecordDatabase+" group by date;", #Returns dates that have tap records
        "classAttendance" : "select classNum, date_format(date,'%a, %e %b'), time_format(time, '%H:%i %p') from "+tapRecordDatabase+" " \
                             "inner join "+studentDatabase+" on "+studentDatabase+".id="+tapRecordDatabase+".studentId where "+studentDatabase+".section='{}' "
                            "group by "+tapRecordDatabase+".date, "+studentDatabase+".id;" #Format with section; returns students' tap dates and time
        #Excel to Database
        "importExcel" : "INSERT INTO "+studentDatabase+"(section, classNum, surname, firstName, middleName, gName, gNum, sex) VALUES ('{}',{},'{}','{}','{}','{}','{}','{}');"  #Format accordingly

    }

# Setup database connection; resets if not; returns cursor
def setupDbCon(user, database):
    try:
        # Setup MySql connection
        global cnx, cursor
        cnx = mysql.connector.connect(user=user, database=database)
        cursor = cnx.cursor()
        print("Connected to database {}, with user {}.".format(database,user))
        return True
    except Exception as e:
        print(e)
        print("Retrying in 5 seconds...")
        time.sleep(5)
        checkDb(user, database)


# Search the students database for the rfid and return info or False
def searchDb(rfid):
    print(queries["searchRfid"].format(rfid))
    cursor.execute(queries.get("searchRfid").format(rfid))
    for (id, classNum, surname, firstName, middleName, sex, section, gName, gNum, rfid) in cursor:
        print("{} has tapped with rfid code {}.".format(firstName, rfid))
        print("Name:", firstName, middleName, surname, "Sex:", sex)
        print("Section:", section)
        print("Class Number:", classNum, "Student ID:", id)
        if (gName != "nan" and gNum != "nan"):
            print("Contact", gName, "through", gNum)
        return id, classNum, surname, firstName, middleName, sex, section, gName, gNum, rfid
    return False

# Record on the records database the studentId, date, and time of tap
def recordDb(studentId, rfid):
    try:
        cursor.execute(queries["recordTap"].format(studentId, rfid))
        cnx.commit()
        print("Recorded {} - {} in database.".format(studentId, rfid))
    except Exception as e:
        print("Error in recordDb()", e)

# Update students database with the new rfid
def updateDbRfid():
    pass

# Move excel classlist to database
def importExcelToDb():
    pass



# Test if these functions work
if __name__ == "__main__":
    rfid = "CE 17 8B 22"    #In place for scan()

    setupQueries("students20","tapRecords")
    setupDbCon("cs","test")
    result = searchDb(rfid)
    if(result):
        recordDb(result[0], result[9])
    else:
        recordDb(None, rfid)