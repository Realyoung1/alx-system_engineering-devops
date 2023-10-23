#!/usr/bin/python3
"""
    I used urllib or requests moduled
    my scripted accepted int as para
    my scrit displayed standard
    second N next displayed TASK_TITLE
"""
import requests
from sys import argv

if __name__ == "__main__":
    id_em = argv[1]
    url_employ = "https://jsonplaceholder.typicode.com/users/{}".format(id_em)
    url_todos = url_employ + "/todos"
    r_employ = requests.get(url_employ).json()
    r_todos = requests.get(url_todos).json()
    name = r_employ.get("name")
    total_num_task = r_todos
    done_task = [task for task in r_todos if task.get("completed")]
    output = "Employee {} is done with tasks({}/{}):".format(
                name, len(done_task), len(total_num_task))
    for task in done_task:
        output += "\n\t " + task.get("title")
    print(output)
