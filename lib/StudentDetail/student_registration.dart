import 'package:ardhra_chechi_ui/StudentDetail/students_list.dart';
import 'package:flutter/material.dart';

class StudentRegistration extends StatefulWidget {
  @override
  _StudentRegistrationState createState() => _StudentRegistrationState();
}

List STUDENTS = [];

class _StudentRegistrationState extends State<StudentRegistration> {

  TextEditingController _name = TextEditingController();
  TextEditingController _cls = TextEditingController();
  TextEditingController _sex = TextEditingController();
  TextEditingController _sub1 = TextEditingController();
  TextEditingController _sub2 = TextEditingController();
  TextEditingController _sub3 = TextEditingController();
  TextEditingController _sub4 = TextEditingController();

  registerStudent(){
    var subjectwise = {};
    subjectwise["subject1"] = _sub1.text;
    subjectwise["subject2"] = _sub2.text;
    subjectwise["subject3"] = _sub3.text;
    subjectwise["subject4"] = _sub4.text;
    var data = {};
    data["name"] = _name.text;
    data["class"] = _cls.text;
    data["sex"] = _sex.text;
    data["marks"] = subjectwise;
    setState(() {
      STUDENTS.add(data);
    });
    print("Student data list : "+STUDENTS.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Registration"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              TextField(
                controller: _name,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Name"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _cls,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Class"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _sex,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Sex"
                ),
              ),
              SizedBox(height: 15,),
              Text("Marks : ",style: TextStyle(color: Colors.blue,fontSize: 18),),
              SizedBox(height: 5,),
              TextField(
                controller: _sub1,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Subject1"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _sub2,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Subject2"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _sub3,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Subject3"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: _sub4,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Subject4"
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(height: 40,
                onPressed: (){
                  registerStudent();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.grey[400],
                child: Center(child: Text("Register")),
              ),
              SizedBox(height: 30,),
              MaterialButton(height: 40,
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) => StudentsList()
                 ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.grey[400],
                child: Center(child: Text("View Students")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
