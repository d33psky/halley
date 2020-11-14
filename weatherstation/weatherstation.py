#!/usr/bin/env python3
# This is simple proof-of-concept code to read the ascii log lines of a
# Vantage Pro2 weatherstation and store them in a database.
import sys
import re
import pymysql
import datetime

database = pymysql.connect(
    host="lxc-rrd",
    port=3306,
    user='XXX',
    passwd='XXX',
    db="Halley")
db_cursor = database.cursor()


def record_values(date_time, pressure, temperature, humidity, dewpoint):
    print("record {} pressure {} bar, temp {} C, hum {} %, dew {} C".format(date_time, pressure, temperature,
                                                                            humidity, dewpoint))
    sql = """
INSERT INTO Halley.lucht (datetime, luchtvocht, luchtdruk)
     VALUES ("{date_time}", "{humidity}", "{pressure}");
    """.format(
        date_time=date_time,
        humidity=humidity,
        pressure=pressure,
    )
    # print("{}".format(sql.lstrip().rstrip()))
    try:
        db_cursor.execute(sql)
        database.commit()
    except pymysql.MySQLError as e:
        database.rollback()
        raise Exception("pymysql.connect error {}".format(e))

    sql = """
INSERT INTO Halley.temperatuur (datetime, tempvalue, dauwpunt)
     VALUES ("{date_time}", "{temperature}", "{dewpoint}");
    """.format(
        date_time=date_time,
        temperature=temperature,
        dewpoint=dewpoint,
    )
    # print("{}".format(sql.lstrip().rstrip()))
    try:
        db_cursor.execute(sql)
        database.commit()
    except pymysql.MySQLError as e:
        database.rollback()
        raise Exception("pymysql.connect error {}".format(e))


def read_treintje_line(line):
    words = line.split()
    word_count = len(words)
    if word_count != 38:
        print("skip line [{}] because of unexpected word count {} != 38".format(line, word_count))
        return

    # for word_index in list(range(word_count)):
    #     print("[{}] [{}]".format(word_index, words[word_index]))

    # repair broken date 05-11-20 to ISO8601
    match = re.fullmatch(r'^(\d\d)-(\d\d)-(\d\d)$', words[0])
    if not match:
        print("skip line [{}] because of it does not start with a date string".format(line))
        return
    date_time_string = "20" + match.group(3) + "-" + match.group(2) + "-" + match.group(1) + "T" + words[1]
    date_time = datetime.datetime.strptime(date_time_string, '%Y-%m-%dT%H:%M')
    pressure = words[16]  # or # pressure = float(words[16]) / 1000.0
    temperature = words[27]
    humidity = words[28]
    dewpoint = words[29]

    record_values(date_time, pressure, temperature, humidity, dewpoint)


if __name__ == '__main__':
    for line in sys.stdin:
        read_treintje_line(line.rstrip())

#
