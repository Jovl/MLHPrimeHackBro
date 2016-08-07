import sqlite3 as sql


def insert_account_holder(name,warning,phone)
    con = sql.connect("database.db")
    cur = con.cursor()
    cur.execute("INSERT INTO account_holder (name,warning,phone) VALUES (?,?,?)",
                (name, warning, phone))
    con.commit()
    con.close()
