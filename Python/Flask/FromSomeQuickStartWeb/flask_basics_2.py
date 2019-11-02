from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def index():
	if (request.method == 'POST'):
		some_json = request.get_json()
		return jsonify({"input json is:": some_json}), 201
	else:
		return jsonify({"about": "Hello world"})

@app.route("/multi/<int:num>", methods=['GET'])
def get_multiply5(num):
	return jsonify({"result": num*5})

if __name__ == '__main__':
	app.run(debug=True)