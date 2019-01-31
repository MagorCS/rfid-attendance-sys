import mysql.connector
import xlsxwriter
import datetime

# Setup MySql connection
cnx = mysql.connector.connect(user='cs', database='test')
cursor = cnx.cursor()

# Queries
queryDays = "select date_format(date,'%a, %e %b %y') from taprecords group by date;"
querySearch = "SELECT classNum, surname, firstName, middleName, sex \
              FROM students20 where section='{}';"    #format with 'section'
queryBatchAttendance = "select * from students20 left join taprecords on taprecords.studentId=students20.id " \
                       "group by id, date order by id;"
querySectionAttendance = "select classNum, date_format(date,'%a, %e %b %y'), time from taprecords " \
                         "inner join students20 on students20.id=taprecords.studentId where students20.section='{}' group by taprecords.date,students20.id;" #Format with section

# Turns numbers to letters for excel column(eg. 1->A, 26->Z, 27->AA, 708->AAB)
def deciToLetters(deci):
    output = ""
    while (deci != 0):
        r = (deci -1) % 26
        deci = deci - r
        output = output + chr(r + 65)
        deci = deci // 26
    return output

# Create Excel sheet per section
def createExcelAttendance(section):
    workbook = xlsxwriter.Workbook(section+'_ARFID_Records_'+datetime.datetime.today().strftime('%b%e,%Y')+'.xlsx')
    worksheet = workbook.add_worksheet()

    header = workbook.add_format({'bold': True, 'align':'center'})
    green = workbook.add_format({'fg_color':'#ddffc6'})
    red = workbook.add_format({'fg_color':'#ffccc6'})
    gray = workbook.add_format({'fg_color':'#afafaf'})

    worksheet.set_column(1,3,12)
    worksheet.set_column(2,2,20)
    worksheet.set_column(4,4,5)

    # Add headers
    labels = ["CN", "Surname", "First Name", "Middle Name", "Sex"]

    column = 0 #Letters
    for label in labels:
        worksheet.write(0, column, label, header)
        column += 1

    # Add dates in headers
    days = []   #List of days with record
    cursor.execute(queryDays)
    for date in cursor:
        worksheet.write(0, column, date[0], header)
        days.append(date[0])
        column += 1


    # Classlist
    cursor.execute(querySearch.format(section))

    row = 1 #Starts on row 1 since row 0 holds the header
    for (classNum, surname, firstName, middleName, sex) in cursor:
        info = [classNum, surname, firstName, middleName, sex]
        j = 0
        for i in info:
            worksheet.write(row, j, i)
            j += 1

        # Blank info will stay blank instead of 'nan'
        while 'nan' in info:
            loc = info.index('nan')
            worksheet.write(row, loc, None)
            info[loc] = None
        row += 1

    # List attendance per student
    cursor.execute(querySectionAttendance.format(section))

    for (classNum, date, time) in cursor:
        col = days.index(date) + len(labels) + 1
        worksheet.write(deciToLetters(col)+str(classNum+1), time)

    worksheet.conditional_format('F2:'+deciToLetters(len(days)+6)+str(row),{'type':'cell','criteria':'>=','value':0.5,'format':red})
    worksheet.conditional_format('F2:'+deciToLetters(len(days)+6)+str(row),{'type':'cell','criteria':'<','value':0.5,'format':green})
    worksheet.conditional_format('F2:'+deciToLetters(len(days)+6)+str(row),{'type':'cell','criteria':'==','value':"",'format':green})

    workbook.close()
    print(workbook.filename, "created.")


if __name__ == "__main__":
    sections = ['Hernandez','Banzon','Sycip']
    for section in sections:
        createExcelAttendance(section)