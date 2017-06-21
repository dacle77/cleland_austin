
#Cleland Austin

from flask import Flask, render_template, request, redirect
app = Flask(__name__)


@app.route('/')
def index():
	return render_template("index.html")

@app.route('/ninjas')
def ninjas():
	return render_template("ninjas.html")

@app.route('/dojos')
def dojos():
	return render_template("dojos.html")

@app.route('/dojos/dojoNew')
def new():
	return render_template("dojosNew.html")

app.run(debug=True)
