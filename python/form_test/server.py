
#Cleland Austin

from flask import Flask, render_template, request, redirect
app = Flask(__name__)


@app.route('/')
def index():
	return render_template("index.html")

# @app.route('/success')
# def success():
# 	return render_template("success.html")
# can make a route or use render_template(somthing.html)

@app.route('/users', methods=['POST'])
def create_user():
	print "Got Post Info"
	name = request.form['name']
	email = request.form['email']
	langPref = request.form['langPref']
	belt = request.form['belt']
	print name,email

	return render_template('success.html')

app.run(debug=True)
