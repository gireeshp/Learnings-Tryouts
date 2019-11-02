# Flask

Trying out creating REST APIs using flask & flask-restful.


### Setup:
1. Setup conda environment.
2. conda install Flask (for flask_basics_1.py & flask_basics_2.py)
3. conda install -c conda-forge flask-restful (for flask_restful_1.py)

### Run:
python flask_basics_1.py   
curl -v http://127.0.0.1:5000/   

python flask_basics_2.py   
curl -v -H "Content-Type: application/json" -X POST -d '{"name":"Gireesh"}' http://127.0.0.1:5000/   
curl -v http://127.0.0.1:5000/multi/8   

python flask_restful_1.py   
curl -v -H "Content-Type: application/json" -X POST -d '{"name":"Gireesh"}' http://127.0.0.1:5000/   
curl -v http://127.0.0.1:5000/multi/8   


From video URL - https://www.youtube.com/watch?v=s_ht4AKnWZg