
#Cleland Austin

from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
	return render_template("index.html", phrase="hello", times=5, snarf="farting")

app.run(debug=True)


