"""
MLH Prime 2016
Author: Jeremiah Lantzer
Description: This project is to be a recurring payments management app.
This File: Will run the backend of the website and control the Twilio functionality.
"""

from flask import Flask, render_template, request
from twilio import twiml
from twilio.rest import TwilioRestClient

# allows for use of the flask decorator
app = Flask(__name__)

# Use this to send Twilio API calls
client = TwilioRestClient('ACCOUNT_SID_HERE', 'AUTH_TOKEN')


@app.route('/', methods=['POST'])  # pulls up the homepage with the standard URL
def home1():
    text = request.form['Body']
    print text
    response = twiml.Response()
    response.message('Hey dude')
    return str(response)


@app.route('/home')  # pulls up the home page from a link on the site
def home2():
    if days == 5:
        client.messages.create(to='your phone number', from_='your twilio number', body='What you want to send them')
    return render_template()


@app.route('/login')  # pulls up the login screen
def login():
    return render_template()


@app.route('/profile')  # pulls up the profile section
def profile():
    # TODO: if not signed in prompt for sign up or login
    return render_template()


@app.route('/signup')
def signup():
    return render_template()


if __name__ == "__main__":
    app.run()
