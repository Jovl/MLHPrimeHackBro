"""
MLH Prime 2016
Author: Jeremiah Lantzer
Description: This project is to be a recurring payments management app.
This File: Will run the backend of the website and control the Twilio functionality.
"""

from flask import Flask, request
from twilio import twiml
from twilio.rest import TwilioRestClient

# allows for use of the flask decorator
app = Flask(__name__)

# Use this to send Twilio API calls
client = TwilioRestClient('ACff5b36cf0ccdc108d7297d213891351b', '2c36f2c692e1a0f87dbc0c91d33135e6')


@app.route('/receive', methods=['POST'])  # WIP
def home1():
    services = ['Netflix', 'Hulu', 'Prime', 'Spotify']

    text = request.form['Body']
    print text  # checks what the text message said

    tmessage = text.split()
    print tmessage

    for y in tmessage:
        print y
        if y is services[0]:
            service = y
            for x in tmessage:
                print x
                if x is 'delete':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'remove':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'cancel':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)

        elif y == services[1]:
            service = y
            for x in tmessage:
                if x == 'delete':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'remove':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'cancel':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)

        elif y == services[2]:
            service = y
            for x in tmessage:
                if x == 'delete':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'remove':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'cancel':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)

        elif y == services[3]:
            service = y
            for x in tmessage:
                if x == 'delete':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'remove':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)
                elif x == 'cancel':
                    response = twiml.Response()
                    response.message('%s has been removed' % service)

    return 'All good'


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
