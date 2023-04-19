import sys,os
import pymysql.cursors
import pandas as pd
from datetime import datetime
from clickhouse_driver import Client

# 连接ClickHouse
def get_ck_execute(run_sql):

    ck_conn = Client(host='192.168.119.136', port=9000, user='default', password='123456', database=app, send_receive_timeout=5)
    result = ck_conn.execute(run_sql)
    return result

if __name__=="__main__":
    print("test")
