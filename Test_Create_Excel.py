import xlsxwriter
import mysql.connector

cnx = mysql.connector.connect(user='cs', database='test')
cursor = cnx.cursor()


def deciToLetters(deci):
    output = ""
    while (deci != 0):
        r = (deci -1) % 26
        deci = deci - r
        output = output + chr(r + 65)
        deci = deci // 26
    return output
    print("Column is",output)

labels = ["Class Number", "Surname", "First Name", "Middle Name", "Sex"]
names = ["Marew","JP","Bregg"]
color = ["Pink", "red", "greg"]
address = ["fish", "ham", "kwek"]
# i = 1
# for something in [names, color, address]:
#     j = 2
#     for some in something:
#         worksheet.write(deciToLetters(i) + str(j), some)
#         j += 1
#     i += 1


querySearch = "SELECT classNum, surname, firstName, middleName, sex \
              FROM students20;"

cursor.execute(querySearch)

row = 2 #Numbers
for (classNum, surname, firstName, middleName, sex) in cursor:
    worksheet.write("A"+str(row), classNum)
    worksheet.write("B"+str(row), surname)
    worksheet.write("C"+str(row), firstName)
    worksheet.write("D"+str(row), middleName)
    worksheet.write("E"+str(row), sex)
    row += 1
##################

################## Set Dates as column

queryDays = "select date_format(date,'%a, %e %b %y') from taprecords group by date;"

days = []
cursor.execute(queryDays)
for date in cursor:
    worksheet.write(deciToLetters(column) + "1", date[0], bold)
    days.append(date[0])
    column += 1
print(days)

##################

################## Set attendance per student per day ((hekhek per section))

queryBatchAttendance = "select classNum, date_format(date,'%a, %e %b %y') from students20 left join taprecords " \
                       "on taprecords.studentId=students20.id group by id, date order by id where;"

cursor.execute(queryBatchAttendance)
for date in cursor:
    print(day)

##################





workbook.close()