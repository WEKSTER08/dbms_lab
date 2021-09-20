from flask import Flask,request,jsonify
from .import app 
from dbhandler import dbh

@app.route("/user/register/", methods = ["POST"])
def register():  
    data = dbh.add_user()
    return data

@app.route("/user/update/", methods = ["POST"])
def update():
    data = dbh.update_user()
    return data

@app.route("/user/delete", methods = ["POST"])
def delete():
    data = dbh.delete_user()
    return data


@app.route("/user/view/", methods = ["GET"])
def view():
    data = dbh.display_user()
    return data
