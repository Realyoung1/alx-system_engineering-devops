#!/usr/bin/python3
"""
    i recorded all the task ownerd by the employer
    the format used was "USER_ID","USERNAME"
    "TASK_COMPLETED_STATUS","TASK_TITLE"
    USER_ID.csv is the first name
"""
import csv
import requests
from sys import argv

if __name__ == "__main__":
    id_em = argv[1]
    url_employ = "https://jsonplaceholder.typicode.com/users/{}".format(id_em)
    url_todos = url_employ + "/todos"
    r_employ = requests.get(url_employ).json()
    r_todos = requests.get(url_todos).json()
    username = r_employ.get("username")
    total_num_task = r_todos
    list_report = []
    for task in total_num_task:
        report = {}
        report["USER_ID"] = str(task.get("userId"))
        report["USERNAME"] = str(username)
        report["TASK_COMPLETED_STATUS"] = str(task.get("completed"))
        report["TASK_TITLE"] = str(task.get("title"))
        list_report.append(report)
    header = ["USER_ID", "USERNAME", "TASK_COMPLETED_STATUS", "TASK_TITLE"]
    with open("{}.csv".format(id_em), "w") as fcsv:
        f_csv = csv.DictWriter(fcsv, fieldnames=header, quoting=csv.QUOTE_ALL)
        f_csv.writerows(list_report)
