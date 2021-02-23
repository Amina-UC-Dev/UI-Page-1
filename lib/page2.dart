import 'package:ardhra_chechi_ui/page3.dart';
import 'package:flutter/material.dart';
List contactList = [];
class pageTwo extends StatefulWidget {
  @override
  _pageTwoState createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {

  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _address = TextEditingController();


  _addservice(){
    var data = {};
    data["name"] = _name.text;
    data["phone"] = _phone.text;
    data["address"] = _address.text;
    var len = contactList.length;
    setState(() {
      contactList.insert(len,data);
    });
    print("ADreesss Bookkk "+contactList.toString());
    setState(() {
      _name.text = "";
      _phone.text = "";
      _address.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Contact"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: _name,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "name"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _phone,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Phone"
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _address,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Address"
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                color: Colors.grey[300],
                onPressed: (){
                  _addservice();
                },
                child: Text("Add Address"),
              ),
              SizedBox(height: 50,),
              MaterialButton(
                color: Colors.grey[300],
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) => PgeThree()
                 ));
                },
                child: Text("View Contact List"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
