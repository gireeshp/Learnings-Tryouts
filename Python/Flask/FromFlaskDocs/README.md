# More flask examples from Flask Docs

## Run this using flask command:   
export FLASK_APP=Flask-1.py   
flask run   
   
With above run, app won't be from other machines in the network. It can be only accessed from the local machine. To fix that problem, do:   
flask run --host=0.0.0.0
   
Do the following to run in development mode (it has debugger mode active by default)   
export FLASK_ENV=development   
flask run   