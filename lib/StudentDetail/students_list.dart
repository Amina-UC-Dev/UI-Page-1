import 'package:ardhra_chechi_ui/StudentDetail/student_detail.dart';
import 'package:ardhra_chechi_ui/StudentDetail/student_registration.dart';
import 'package:flutter/material.dart';

class StudentsList extends StatefulWidget {
  @override
  _StudentsListState createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students List"),),
      body: STUDENTS.length>0 ? ListView.builder(
          itemCount: STUDENTS.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => StudentDetail(indexxx: index,)
              ));
            },
            child: Container(width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[400]
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(STUDENTS[index]["name"],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(STUDENTS[index]["class"],)
                  ],
                ),
              ),
            ),
          ),
        );
      })
      : Center(child: Text("No Data !!!"),)
    );
  }
}
