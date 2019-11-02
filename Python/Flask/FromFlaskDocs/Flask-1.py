from flask import Flask, escape, url_for, render_template, make_response, request

app = Flask(__name__)

@app.route("/")
def hello_world():
	return "Hello World!"

@app.route("/user/<username>")
def show_user(username):
	return "User is: %s" % escape (username)

@app.route("/toy/<int:toy_id>")
def show_toy(toy_id):
	return "Toy ID is: %s" % toy_id

@app.route("/path/<path:subpath>")
def show_subpath(subpath):
	return "Subpath is: %s" % subpath

@app.route("/hello")
def hello():
	return render_template("hello.html")

@app.errorhandler(404)
def handle_404(error):
	return render_template("pagenotfound.html")

# Example to set cookie in the response
@app.route("/set-cookie-test")
def set_cookie_test():
	resp = make_response(render_template("hello2.html"))
	resp.set_cookie("c1", "haha")
	return resp

# Example to read the request body and cookie from the request
@app.route("/get-cookie-test", methods=['GET', 'POST'])
def get_cookie_test():
	ck = request.cookies.get("c1")
	print ("returning cookie %s " % ck)

	try:
		# Reading requst body
		print (request.get_json())

		# Reading arguments from URL
		key = request.args.get('search')
		print ("Search string is %s " % key)

	except Exception as e:
		print (e)

	return "Cookie found: %s" % ck

@app.route("/upload", methods=['POST'])
def upload():
	print ("inside upload method")

	try:
		f = request.files.get("fl")
		print (f)
		print (type(f))
		print ("Got f from request.files")
	except Exception as e:
		print (e)

	f.save('/tmp/abc.txt')
	print ("File saved to /tmp/")
	return "Success"


with app.test_request_context():
	print("---------------- Showing URLs ---------------")
	print(url_for('hello_world'))
	print(url_for('show_user', username="abc"))
	print(url_for('show_toy', toy_id=1))
	print(url_for('show_subpath', subpath="ddd/dd/d"))
	print("---------------- Done ---------------")
