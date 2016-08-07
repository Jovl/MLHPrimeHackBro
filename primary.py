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

# allows for use of the flask decorator
app = Flask(__name__)

# Use this to send Twilio API calls
client = TwilioRestClient('ACff5b36cf0ccdc108d7297d213891351b', '2c36f2c692e1a0f87dbc0c91d33135e6')


@app.route('/receive', methods=['GET', 'POST'])  # WIP
def home1():

    text = request.form['Body']
    print text
    response = twiml.Response()
    response.message('Hey dude')
    return str(response)


@app.route('/notify')  # path is temporary. Not sure what to name it.
def notify():
    # TODO: Call database for the day of a warning and the user phone number

    for daysleft in range(10, warning, -1):  # demo purposes simulates days counting down
        print daysleft + " days left"

        if daysleft == warning:
            client.messages.create(to=phone, from_='3862678050', body='What you want to send them')
        sleep(1)

    return


@app.route('/signup', methods=['POST'])
def signup():
    warning = request.form['Days']  # will hold the amount of days before a payment notification is sent
    phone = request.form['Phone']  # will receive the user's phone number

    # TODO: store values in the database

    return


if __name__ == "__main__":
    app.run()
