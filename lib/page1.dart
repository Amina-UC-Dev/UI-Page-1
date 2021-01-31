import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      cont = 1;
    });
    _controller = TabController(length: 3, vsync: this);
  }

  int cont;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2026),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFF1E2026),
        title: Text("FoodWall"),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Image.asset(
                    "assets/ami.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      drawer: Drawer(
        elevation: 10,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, top: 20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Text("Tile 1")),
                Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Text("Tile 2")),
                Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Text("Tile 3")),
                Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Text("Tile 4")),
                Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    child: Text("Tile 5")),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xFF23252E),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.transparent
                        )
                    ),
                  hintText: "Location",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.location_on,color: Colors.white,size: 22,),
                  suffixIcon: Icon(Icons.gps_fixed,color: Colors.white,size: 22,),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 70,
                color: Color(0xFF23252E),
                child: TabBar(
                  indicator: BoxDecoration(
                  color: Color(0xFFffd55e),borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.purpleAccent,width: 5)
                ),
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  controller: _controller,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on,),
                      text: "FoodizWall",
                    ),
                    Tab(
                      icon: Icon(Icons.kitchen,),
                      text: "Home Kitchen",
                    ),
                    Tab(
                      icon: Icon(Icons.store,),
                      text: "Local Store",
                    )
                  ],

                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height-130,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Container(
                      height: 40*5.toDouble(),
                      child: ListView.builder(
                        itemCount: 5,
                          itemBuilder: (context,ind1){
                        return Container(
                          height: 40,
                          child: Text("Wall "+ind1.toString(),style: TextStyle(
                            color: Colors.white
                          ),),
                        );
                      }),
                    ),
                    Column(
                      children: [
                       Container(
                         height: 130,
                         child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                             itemCount: 10,
                             itemBuilder: (context,ind2){
                           return Center(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                 clipBehavior: Clip.antiAlias,
                                 height: 100,
                                 width: 100,
                                 decoration: BoxDecoration(
                                   color: Colors.red,
                                   borderRadius: BorderRadius.circular(10)
                                 ),
                                 child: Image.asset("assets/ami.jpg",fit: BoxFit.cover,),
                               ),
                             ),
                           );
                         }),
                       ),
                        Divider(color: Colors.black,thickness: 2,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          cont = 1;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:6,right: 3),
                                        child: Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: cont==1 ? Colors.black : Colors.transparent,
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8,right: 8),
                                            child: Center(
                                              child: Text("Popular",style: TextStyle(
                                                color: Colors.white
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          cont = 2;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:3,right: 3),
                                        child: Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: cont==2 ? Colors.black : Colors.transparent,
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8,right: 8),
                                            child: Center(
                                              child: Text("Order Again",style: TextStyle(
                                                  color: Colors.white
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          cont = 3;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:3,right: 6),
                                        child: Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: cont==3 ? Colors.black : Colors.transparent,
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8,right: 8),
                                            child: Center(
                                              child: Text("Favourites",style: TextStyle(
                                                  color: Colors.white
                                              ),),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text("View All",style: TextStyle(color: Colors.white),),
                                SizedBox(width: 6,),
                                Icon(Icons.filter_list,color: Colors.white,size: 20,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 108,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context,ind2){
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          clipBehavior: Clip.antiAlias,
                                          height: 70,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Image.asset("assets/ami.jpg",fit: BoxFit.cover,),
                                        ),
                                        SizedBox(height: 6),
                                        Text("Text "+ind2.toString(),style: TextStyle(
                                          color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Divider(color: Colors.black,thickness: 2,),

                      ],
                    ),
                    Column(
                      children: [
                        Text("avbccc",style: TextStyle(color: Colors.white),),
                        Text("23456",style: TextStyle(color: Colors.white),),
                        Text("32456",style: TextStyle(color: Colors.white),),
                        Text("ghfgh",style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
