import 'package:ardhra_chechi_ui/StudentDetail/student_registration.dart';
import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {

  StudentDetail({this.indexxx});

  int indexxx;

  @override
  _StudentDetailState createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {

  int total=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      total = int.parse(STUDENTS[widget.indexxx]["marks"]["subject1"])+int.parse(STUDENTS[widget.indexxx]["marks"]["subject2"])+
          int.parse(STUDENTS[widget.indexxx]["marks"]["subject3"])+int.parse(STUDENTS[widget.indexxx]["marks"]["subject4"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name : "+STUDENTS[widget.indexxx]["name"]),
            SizedBox(height: 15,),
            Text("Sex : "+STUDENTS[widget.indexxx]["sex"]),
            SizedBox(height: 15,),
            Text("Class : "+STUDENTS[widget.indexxx]["class"]),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Marks : "),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Subject1 - "+STUDENTS[widget.indexxx]["marks"]["subject1"]),
                    SizedBox(height: 4,),
                    Text("Subject2 - "+STUDENTS[widget.indexxx]["marks"]["subject2"]),
                    SizedBox(height: 4,),
                    Text("Subject3 - "+STUDENTS[widget.indexxx]["marks"]["subject3"]),
                    SizedBox(height: 4,),
                    Text("Subject4 - "+STUDENTS[widget.indexxx]["marks"]["subject4"]),
                  ],
                )
              ],
            ),
            SizedBox(height: 25,),
            Text("Total Marks : "+total.toString()),
            SizedBox(height: 25,),
           total>50 ? Text("Student Status : Passed",style: TextStyle(color: Colors.green),) : Text("Student Status : Passed",style: TextStyle(color: Colors.red),)
          ],
        ),
      ),
    );
  }
}
