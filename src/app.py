from flask import Flask

HELLO_WORLD_MARKUP = "<h1>Hello, World!</h1>"

app = Flask(__name__)


@app.route("/")
def index():
    return HELLO_WORLD_MARKUP
