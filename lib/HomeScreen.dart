import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/DishScreen.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName ='HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Color.fromARGB(255, 15, 21, 41),

      backgroundColor:  Color.fromARGB(255, 15, 21, 41),
        title: Text('Our best Dishes',style: TextStyle(color:Colors.white),),
        elevation: 0,
      ),
          backgroundColor: Color.fromARGB(255, 15, 21, 41),
          body:
          SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, DishScreen.routeName);
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 24, 44),
                    borderRadius: BorderRadius.circular(20),
                  ),
                    child:
                    Column(
                      children: [
                        Container(child: Image(image: AssetImage('assets/images/13.png'),)),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Text('Duck Breast',style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),),)
                      ],
                    ),
                    // width:376,
                    // height: 280,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 24, 44),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Column(
                    children: [
                      Container(child: Image(image: AssetImage('assets/images/13.png'),)),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Text('Duck Breast',style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),),)
                    ],
                  ),
                  // width:376,
                  // height: 280,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 24, 44),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Column(
                    children: [
                      Container(child: Image(image: AssetImage('assets/images/13.png'),)),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Text('Duck Breast',style: TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),),)
                    ],
                  ),
                  // width:376,
                  // height: 280,
                ),
              ],

    ),
          ),
    );
  }


}