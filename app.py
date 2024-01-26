from flask import Flask, render_template, redirect, request, url_for, abort, jsonify


app = Flask(__name__)


@app.route("/")
def index():
    return "Hello World"



if __name__ == "__main__":
    app.run(host="8.0.8.0")
