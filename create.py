import os
import json
from flask import Flask, render_template, request
from models import *

with open('config.json','r') as c:
    params = json.load(c)["params"]

local_server = True

app = Flask(__name__)
if(local_server):
    app.config["SQLALCHEMY_DATABASE_URI"] = params['local_uri']
else:
    app.config["SQLALCHEMY_DATABASE_URI"] = params['prod_uri']
#app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql://postgres:password@localhost/myblog"
#app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
db.init_app(app)

def main():
    db.create_all()

if __name__ == "__main__":
    with app.app_context():
        main()