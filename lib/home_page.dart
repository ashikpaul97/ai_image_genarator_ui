import 'package:ai_image_genarator/result_page.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  double bottom_icon_size = 20;

  double bottom_font_size = 12;

  double bottom_gap_between_icon_text = 4;

  TextEditingController _textController = TextEditingController();
   bool isClicked = false;



  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            child: Row(
              children:[
                Container(height:25,width:25,child: Image.asset('assets/images/filter.png'),),
                Spacer(),
                Icon(BootstrapIcons.bell_fill,size: 28,),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 35,
                  width: 77,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFF1B1BF1),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFD4D2D2),
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      //Icon(BootstrapIcons.star_fill,color: Colors.white,size: 20,),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/premium.png',color: Colors.white,),
                      ),
                      SizedBox(width: 5,),
                      Text('PRO',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.white),)
                    ],
                  ),
                )

              ]
            ),
          ),
        ),
        bottomNavigationBar: buildMyNavBar(context),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.grey.withOpacity(0.1),
              child:  Column(
                children:[
                  Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height: 200,
                        padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFD4D2D2),
                              //offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 8,),
                            Container(
                              height: 30.0, // Adjust the height as per your requirements
                              //padding: EdgeInsets.all(5.0),
                              child:Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Enter Prompt", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
                            ),
                            //TextField
                            Expanded(
                              child: TextField(
                                controller: _textController,
                                maxLength: 100,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type anything....',
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.arrow_counterclockwise,color: Color(0xFF5806E8),size: 25,),
                                Spacer(),
                                Text('0/100',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
                                Icon(BootstrapIcons.x,color: Color(0xFF5806E8),size: 27,)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD4D2D2),
                                  //offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //icon and text add photo
                                Icon(CupertinoIcons.photo_on_rectangle,color: Colors.grey,),
                                SizedBox(width: 10.0),
                                Text("Add Photo", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                              ],
                            ),

                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFD4D2D2),
                                  //offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //icon and text add photo
                                Icon(CupertinoIcons.lightbulb,color: Colors.grey,),
                                SizedBox(width: 10.0),
                                Text("Inspiration", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                              ],
                            ),

                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 190,
                        padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFD4D2D2),
                              // offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0, // Adjust the height as per your requirements
                              padding: EdgeInsets.all(5.0),
                              child:
                              Row(
                                children: <Widget>[
                                  Text("Aspect Ratio", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                                  //Type Anything.... textfield

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: isClicked? Color(0xFF5806E8):Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("1:1",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("9:16",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("16:9",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("3:2",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("4:3",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFD4D2D2),
                                        //offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width*0.25,
                                  child: Text("5:4",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFD4D2D2),
                              //offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Art Style',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Spacer(),
                                Text('See All',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF1B1BF1)),),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset('assets/images/phinix.png',height: 100,width: 100,)
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Colorful',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                        child: Image.asset('assets/images/tree.jpg',height: 100,width: 100,)),
                                    SizedBox(height: 5,),
                                    Text('Cyberpunk',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset('assets/images/phinix.png',height: 100,width: 100,),
                                    SizedBox(height: 5,),
                                    Text('Real',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultPage()));
                        },
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color:  Color(0xFF1B1BF1),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFD4D2D2),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('Generate',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),)
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ]
              ),
            ),

          ),
        )
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
      padding: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        color:  Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
        ),
        /*boxShadow: [
          BoxShadow(
            color: Color(0xFFD4D2D2),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],*/
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
              height: 30,
              width: MediaQuery.of(context).size.width*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD4D2D2),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],*/
              ),
              alignment: Alignment.center,
              child:Center(
                child:MaterialButton(
                  onPressed: () {
                    /* setState(() {
                    pageIndex = 0;
                  });*/
                  },
                  child: Icon(
                    BootstrapIcons.house,
                    size: 23,
                    color: Colors.grey[700],
                    /* color: pageIndex == 0 ? Colors.redAccent : Colors.grey,
                      size: bottom_icon_size,*/
                  ),
                ) ,
              )
              ,
            ),
              Text('Home',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
            ],
          ),
          Column(
            children: [
              Container(
              height: 30,
              width: MediaQuery.of(context).size.width*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD4D2D2),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],*/
              ),
              alignment: Alignment.center,
              child:Center(
                child:MaterialButton(
                  onPressed: () {
                    /* setState(() {
                    pageIndex = 0;
                  });*//*
                    //go to option one
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SobdoOption()),
                    );*/
                  },
                  child: Icon(
                    BootstrapIcons.vinyl,
                    size: 23,
                    color: Colors.grey[700],
                    /* color: pageIndex == 0 ? Colors.redAccent : Colors.grey,
                      size: bottom_icon_size,*/
                  ),
                ) ,
              )
              ,
            ),
              Text('Discover',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
            ],
          ),
          Column(
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width*0.15,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD4D2D2),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],*/
              ),
              alignment: Alignment.center,
              child:Center(
                child:MaterialButton(
                  onPressed: () {
                   /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthOption()),
                    );*/
                  },
                  child: Icon(
                    BootstrapIcons.grid,
                    size: 23,
                    color: Colors.grey[700],

                    /* color: pageIndex == 0 ? Colors.redAccent : Colors.grey,
                      size: bottom_icon_size,*/
                  ),
                ) ,
              )
              ,
            ),
              Text('ToolBox',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
            ],
          ),
          Column(
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width*0.15,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD4D2D2),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],*/
              ),
              alignment: Alignment.center,
              child:Center(
                child:MaterialButton(
                  onPressed: () {},

                  child: Icon(
                    BootstrapIcons.gear,
                    size: 23,
                    color: Colors.grey[600],
                    /* color: pageIndex == 0 ? Colors.redAccent : Colors.grey,
                      size: bottom_icon_size,*/
                  ),
                ) ,
              )
              ,
            ),
              Text('Settings',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
            ]
          ),
          Column(
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width*0.15,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Color(0xFFD4D2D2),
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],*/
              ),
              alignment: Alignment.center,
              child:Center(
                child:MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    BootstrapIcons.person,
                    size: 24,
                    color: Colors.grey[700],
                    /* color: pageIndex == 0 ? Colors.redAccent : Colors.grey,
                      size: bottom_icon_size,*/
                  ),
                ) ,
              )
              ,
            ),
              Text('Profile',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
            ]
          ),


        ],
      ),
    );
  }
}
