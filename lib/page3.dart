import 'package:ardhra_chechi_ui/page2.dart';
import 'package:flutter/material.dart';

class PgeThree extends StatefulWidget {
  @override
  _PgeThreeState createState() => _PgeThreeState();
}

class _PgeThreeState extends State<PgeThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Listing"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            FlatButton(color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Container(width: 120,
                child: Row(
                  children: [
                    Icon(Icons.add_circle_outline,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("Add Contact")
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: contactList.length.toDouble() * 110,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: contactList.length,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300]
                    ),
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(contactList[index]["name"].toString().substring(0,1).toUpperCase()),
                          ),
                          SizedBox(width: 10,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(contactList[index]["name"]),
                              SizedBox(height: 3,),
                              Text(contactList[index]["phone"]),
                              Text(contactList[index]["address"]),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
