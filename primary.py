"""
MLH Prime 2016
Author: Jeremiah Lantzer
Description: This project is to be a recurring payments management app.
This File: Will run the backend of the website and control the Twilio functionality.
"""

from flask import Flask, request
from twilio import twiml
from twilio.rest import TwilioRestClient
from time import sleep
import jsonify

# allows for use of the flask decorator
app = Flask(__name__)

# Use this to send Twilio API calls
client = TwilioRestClient('ACff5b36cf0ccdc108d7297d213891351b', '2c36f2c692e1a0f87dbc0c91d33135e6')


def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


@app.route('/receive', methods=['GET', 'POST'])  # WIP
def home1():
    text = request.form['Body']
    print text
    response = twiml.Response()
    response.message('Hey dude')
    return str(response)


@app.route('/notify', methods=['POST'])  # path is temporary. Not sure what to name it.
def notify():
    # TODO: Call database for the day of a warning and the user phone number
    # info = select_phone_warning()  # for DB

    # name = request.form['Name']  # will hold a user's name
    warning = int(request.form['Days'])  # will hold the amount of days before a payment notification is sent
    phone = request.form['Phone']  # wil
    # l receive the user's phone number

    print warning
    print phone

    for daysleft in range(10, warning, -1):  # demo purposes simulates days counting down
        print str(daysleft) + " days left"

        if daysleft == warning + 1:
            message = client.messages.create(to=phone, from_='13862678050',
                                             body='Your account will be charged in %d days' % warning)
            response = twiml.Response()
            response.message(message)

    return_info = {
        'Warning Days': warning,
        'Recipient': phone,
        'Result': 'All good'
    }

    return str(return_info)


# @app.route('/signup', methods=['GET', 'POST'])
# def signup():
#
#
#     # return insert_account_holder(name, warning, phone)  # for DB
#     return userinfo

if __name__ == "__main__":
    app.run()
