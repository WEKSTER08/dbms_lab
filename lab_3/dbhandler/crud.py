from flask import Flask,request,jsonify
import mysql.connector as mysql

db = mysql.connect(
    host = "localhost",
    user = "root",
    passwd = "yugesh",
    database = "userinfo"
)

print(db) 


cursor = db.cursor(buffered=True)

cursor.execute("show tables")
hi = "INSERT INTO user(name , phno , dob) VALUES (%s,%s,%s)"


print(cursor.fetchall())


class dbh :
    def add_user():
        if(request.content_type == 'application/json'):
            x = request.get_json()
            name = x.get('name')
            phno = x.get('phno')
            dob = x.get('dob')
            data = (name , phno , dob)
            cursor.execute(hi,data)
            db.commit()
            return jsonify("ok")
        else:
            return jsonify('not ok')
    def update_user():
        if(request.content_type == 'application/json'):
            x = request.get_json()
            name = x.get('name')
            phnum = x.get('phno')
            dob = x.get('dob')
            cursor.execute("select * from user where phno IN ('%s')"%(phnum))
            cursor.execute("UPDATE user SET name = '%s' ,phno = '%s', dob = '%s' where phno IN ('%s')"%(name , phnum ,dob , phnum))
            db.commit()
            return jsonify("ok")
        else:
            return jsonify("not ok")


    def delete_user():
        if(request.content_type == 'application/json'):
            x = request.get_json()
            name = x.get('name')
            phnum = x.get('phno')
            dob = x.get('dob')
            cursor.execute("delete from user where phno = '%s'"%(phnum))
            db.commit()
            return jsonify("ok")
    def display_user():
        cursor.execute("select *  from user")
        data1 = cursor.fetchall()
        return jsonify("ok")