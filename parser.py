#!/usr/bin/env python3
import sys
import xml.dom.minidom as dom
import mysql.connector
from mysql.connector import errorcode

doc = dom.parse(sys.argv[1])
city = sys.argv[2]
print(city)
weather_info = ["period-name", "short-desc", "temp temp-high", "temp temp-low"]
periods = []
temps = []
short_descriptions = []
long_descriptions = []
paragraphs = doc.getElementsByTagName("p")
for p in paragraphs:
	if p.hasAttribute("class") and p.getAttribute("class") in weather_info:
		desc = p.getAttribute("class")
		nodes = p.childNodes
		words = []
		for node in nodes:
			if node.nodeType == 3:
				if desc == "temp temp-high" or desc == "temp temp-low":
					temps.append(node.nodeValue)
		if desc == "short-desc":
			for node in nodes:
				if (node.nodeType == 3 and "Warning" not in node.nodeValue):
					if node.nodeValue != '' and node.nodeValue!=' ':
						words.append(node.nodeValue)
						print(node.nodeValue)
			delim = ' '
			short_desc = delim.join(words)
			short_descriptions.append(short_desc)
			words = []
img_tags = doc.getElementsByTagName("img")
for element in img_tags:
	if element.hasAttribute("title"):
		#title attributes hold long desciptions
		desc = element.getAttribute("title")
		if ":" in desc:
			long_descriptions.append(element.getAttribute("title"))


#getting periods
for desc in long_descriptions:
	try:
		colon = desc.index(':')
		periods.append(desc[:colon])
	except:
		continue

print("short_descs: ", "\n", short_descriptions)
if (short_descriptions[0]==''):
	for i in range(len(words)):
		short_descriptions[i] = short_descriptions[i+1]
print("short_descs: ", "\n", short_descriptions)
print("long_descs: ", "\n", long_descriptions)
print("temps: ", "\n", temps)
print("periods: ", "\n", periods)



forecast_db = mysql.connector.connect(
	host="localhost",
	user="miknad",
	password="MajorHalen2022"
)

mycursor = forecast_db.cursor()

DB_NAME = 'forecasts'


try:
	mycursor.execute("CREATE DATABASE IF NOT EXISTS forecasts")
except mysql.connector.errors.DatabaseError:
	print("database already exists... entering...")

mycursor.execute("USE forecasts")


TABLES = {}

TABLES['Newark'] = (
	"CREATE TABLE `Newark` ("
	" `id` TINYINT,"
	" `periods` varchar(15),"
	" `temps` varchar(15),"
	" `short_desc` varchar(80),"
	" `long_desc` varchar(500),"
	" PRIMARY KEY (`id`)"
	") ENGINE=InnoDB")

TABLES['Freehold'] = (
	"CREATE TABLE `Freehold` ("
	" `id` TINYINT,"
	" `periods` varchar(15),"
	" `temps` varchar(15),"
	" `short_desc` varchar(80),"
	" `long_desc` varchar(500),"
	" PRIMARY KEY (`id`)"
	") ENGINE=InnoDB")

TABLES['Hoboken'] = (
	"CREATE TABLE `Hoboken` ("
	" `id` TINYINT,"
	" `periods` varchar(15),"
	" `temps` varchar(15),"
	" `short_desc` varchar(80),"
	" `long_desc` varchar(500),"
	" PRIMARY KEY (`id`)"
	") ENGINE=InnoDB")

TABLES['Leonia'] = (
	"CREATE TABLE `Leonia` ("
	" `id` TINYINT,"
	" `periods` varchar(15),"
	" `temps` varchar(15),"
	" `short_desc` varchar(80),"
	" `long_desc` varchar(500),"
	" PRIMARY KEY (`id`)"
	") ENGINE=InnoDB")

TABLES['Wildwood'] = (
	"CREATE TABLE `Wildwood` ("
	" `id` TINYINT,"
	" `periods` varchar(15),"
	" `temps` varchar(15),"
	" `short_desc` varchar(80),"
	" `long_desc` varchar(500),"
	" PRIMARY KEY (`id`)"
	") ENGINE=InnoDB")

TABLES['Personalization'] = (
	"CREATE TABLE `Personalization` ("
	" `ip` varchar(15),"
	" `set_homepage` varchar(20),"
	" PRIMARY KEY (`ip`)"
	") ENGINE=InnoDB")


INSERT_STATEMENTS = {}

INSERT_STATEMENTS['Newark'] = ("INSERT INTO Newark"
								"(id, periods, temps, short_desc, long_desc) "
								"VALUES (%s, %s, %s, %s, %s)")

INSERT_STATEMENTS['Freehold'] = ("INSERT INTO Freehold"
								"(id, periods, temps, short_desc, long_desc) "
								"VALUES (%s, %s, %s, %s, %s)")

INSERT_STATEMENTS['Hoboken'] = ("INSERT INTO Hoboken"
								"(id, periods, temps, short_desc, long_desc) "
								"VALUES (%s, %s, %s, %s, %s)")

INSERT_STATEMENTS['Leonia'] = ("INSERT INTO Leonia"
								"(id, periods, temps, short_desc, long_desc) "
								"VALUES (%s, %s, %s, %s, %s)")

INSERT_STATEMENTS['Wildwood'] = ("INSERT INTO Wildwood"
								"(id, periods, temps, short_desc, long_desc) "
								"VALUES (%s, %s, %s, %s, %s)")

UPDATE_STATEMENTS = {}

UPDATE_STATEMENTS['Newark'] = ("UPDATE Newark SET "
								"periods = %s,"
								"temps = %s,"
								"short_desc = %s,"
								"long_desc = %s"
								"where id = %s")

UPDATE_STATEMENTS['Freehold'] = ("UPDATE Freehold SET "
								"periods = %s,"
								"temps = %s,"
								"short_desc = %s,"
								"long_desc = %s"
								"where id = %s")

UPDATE_STATEMENTS['Hoboken'] = ("UPDATE Hoboken SET "
								"periods = %s,"
								"temps = %s,"
								"short_desc = %s,"
								"long_desc = %s"
								"where id = %s")

UPDATE_STATEMENTS['Leonia'] = ("UPDATE Leonia SET "
								"periods = %s,"
								"temps = %s,"
								"short_desc = %s,"
								"long_desc = %s"
								"where id = %s")

UPDATE_STATEMENTS['Wildwood'] = ("UPDATE Wildwood SET "
								"periods = %s,"
								"temps = %s,"
								"short_desc = %s,"
								"long_desc = %s"
								"where id = %s")


if city in TABLES:
	table_desc = TABLES[city]
	insert_stmt = INSERT_STATEMENTS[city]
	update_stmt = UPDATE_STATEMENTS[city]
	try:
		print("Creating table {}: ".format(city), end='')
		mycursor.execute(table_desc)
	except mysql.connector.Error as err:
		if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
			print("already exists")
		else:
			print(err.msg)
	else:
		print("OK")

	for i in range(len(words)-1):
		try:
			insert_values = (i, periods[i], temps[i], short_descriptions[i], long_descriptions[i])
			mycursor.execute(insert_stmt, insert_values)
		except:
			update_values = (periods[i], temps[i], short_descriptions[i], long_descriptions[i], i)
			mycursor.execute(update_stmt, update_values)
forecast_db.commit()

table_desc = TABLES['Personalization']
try:
	mycursor.execute(table_desc)
except mysql.connector.Error as err:
		if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
			print("already exists")
		else:
			print(err.msg)

forecast_db.commit()
mycursor.close()
forecast_db.close()

