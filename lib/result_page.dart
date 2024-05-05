import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        scrolledUnderElevation: 0,
        title:  Container(
          child: Row(
              children: [
            Container(

              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey,width: 1),
              ),
              child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(CupertinoIcons.arrow_left,color: Colors.black,size: 22,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.28,),
            Center(child: Text('Result',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
          ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.withOpacity(0.08),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.99),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/phinix.png',)
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Color(0xFF1B1BF1).withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.99),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(child: Text('Re - Generate', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text('A Golden-Adorned Young Girl, Radiant in her Beautiful Mask', style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),)),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width*0.27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(BootstrapIcons.bookmark_check_fill,color: Colors.grey,),
                    ),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width*0.27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(BootstrapIcons.trash),
                    ),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width*0.27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(BootstrapIcons.upload),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  height: 55,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(BootstrapIcons.repeat),
                      SizedBox(width: 10,),
                      Text('Repeat the Prompt',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),
                    ],
                  )
                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 25),
                    height: 55,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(BootstrapIcons.download),
                        SizedBox(width: 10,),
                        Text('Download',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                      ],
                    )
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}
