#!/usr/bin/python
# -*- coding: UTF-8 -*-

import xlrd
import pymysql
import csv

# 打开数据库连接
conn = pymysql.connect(
        host='localhost',
        port = 3306,
        user='root',
        passwd='sqlntb1203',
        db ='test',
        charset='utf8'
        )

# 使用cursor()方法获取操作游标
cursor = conn.cursor()

# 如果数据表已经存在使用 execute() 方法删除表。
cursor.execute("DROP TABLE IF EXISTS 君富磅计提")


# 创建数据表SQL语句

sql_create ="""create table 君富磅计提(
       id int not null AUTO_INCREMENT PRIMARY key,
       账号	VARCHAR(255) not null ,
       MG_id	VARCHAR(255) not null ,
       用户名称	VARCHAR(255) not null ,
       收益截止日期	VARCHAR(255) not null ,
       当日付息后余额	VARCHAR(255) not null ,
       当日付息前余额	VARCHAR(255) not null ,
       当日新增收益	VARCHAR(255) not null ,
       截止当前总未兑付收益 VARCHAR(255) not null ,
       君富镑来源 VARCHAR(255) not null ,
       付息日后余额 VARCHAR(255) not null ,
       当日账户余额 VARCHAR(255) not null ,
       使用期状态 VARCHAR(255) not null ,
       备注 VARCHAR(255) not null
       )"""


# 执行sql语句
cursor.execute(sql_create)

# 关闭数据库连接
conn.close()
