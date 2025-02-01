from flask import Flask                     # From the flask module (or package) import the Flask class.

# OOP
app = Flask(__name__)                       # Create an instance of the Flask class into app, now an object.

@app.get("/")                               # Flask decorator that maps routes to view functions.
def index():
    me = {                                  # python dictionary
        "first_name": "Rafael",
        "last_name": "GPL",
        "is_online": True,
        "hobbies": "DIY stuff"
    }
    return me                               # Important: When you return a dictionary from a view function, it becomes a JSON.
