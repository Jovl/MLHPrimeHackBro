import sqlite3 as sql


def insert_account_holder(name, warning, phone):
    con = sql.connect("database.db")
    cur = con.cursor()
    cur.execute("INSERT INTO account_holder (name,warning,phone) VALUES (%s,%s,%s)",
                (name, warning, phone))
    con.commit()
    con.close()


def select_phone_warning():
    warning = ''
    phone = ''
    con = sql.connect("database.db")
    cur = con.cursor()
    cur.execute("SELECT warning,phone FROM account_holder ",
                (warning, phone))
    info = {
        'warning': warning,
        'phone': phone
    }
    con.commit()
    con.close()
    return info

def select_phone_name():
    phone = ''
    name = ''
    con = sql.connect("database.db")
    cur = con.cursor()
    cur.execute("SELECT name,phone FROM account_holder",
                (warning, phone))
    con.commit()
    con.close()
