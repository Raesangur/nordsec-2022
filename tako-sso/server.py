
from flask import Flask, session, render_template, request
from flask_session import Session
import secrets
from flask_json import FlaskJSON, JsonError, json_response, as_json

app = Flask(__name__)
app.config['SESSION_TYPE'] = 'filesystem'
Session(app)
FlaskJSON(app)

@app.route("/")
def set():
    session['tries'] = session.get('tries',0)
    return render_template('index.html')

@app.route("/guess", methods=['POST'])
def guess():
    session['tries'] = int(session.get('tries',0))
    x = secrets.randbelow(100)
    data = request.get_json(force=True)
    value= data['value']
    if str(x) in value:
        session['tries'] = session['tries'] + 1
        if session['tries'] > 1000:
            msg = "The flag is CHANGEME"
        else:
            msg = "This is the value expected. You are at " + str(session['tries']) + " out of 1000. Sending a new challenge"
    else:
        msg = "I expected the challenge value " + str(x) + " Resetting you to 0 tries. Good luck"
        session['tries'] = 0
    return msg

