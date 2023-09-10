import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DishScreen extends StatelessWidget{
  static const String routeName='DishScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 21, 41),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 15, 21, 41),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 60,right: 60),
            //margin: EdgeInsets.all(),

            child: Image(image: AssetImage('assets/images/13.png'),),

          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16,bottom: 24,top: 24),
                child:
                Text('Duck Breast',style: TextStyle(color: Colors.white,fontSize: 36),)
                ,),
            ],
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.grey
              ),
              child: Text('Scallion',style: TextStyle(color: Colors.white),),),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.grey
              ),
              child: Text('mushrooms',style: TextStyle(color: Colors.white),),),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.grey
              ),
              child: Text('Crosnes',style: TextStyle(color: Colors.white),),),
          ],),
          Container(
            margin: EdgeInsets.only(left: 16,top: 16,right: 70,bottom: 30),

            child: Text("""Lorem Ipsum is simply dummy text of the since the 1500s, when an unknown printer took a galley""",style: TextStyle(color: Colors.grey,fontSize: 16),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('250',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('Cal',style: TextStyle(color: Colors.grey,fontSize: 14))
                ],
              ),
            ),
            Container(height:30, child: VerticalDivider(thickness: 2,color: Colors.white,)),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('180g',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                  Text('Fat',style: TextStyle(color: Colors.grey,fontSize: 14))
                ],
              ),
            ),
            Container(height:30,child: VerticalDivider(thickness: 2,color: Colors.white,)),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('100',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('Carb',style: TextStyle(color: Colors.grey,fontSize: 14))
                ],
              ),
            ),
            Container(
                height:30,
                child: VerticalDivider(thickness: 2,color: Colors.white,)),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('850g',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                  Text('Pro',style: TextStyle(color: Colors.grey,fontSize: 14))
                ],
              ),
            ),
          ],),
          Container(
            margin: EdgeInsets.all(16),
            child: ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))),backgroundColor: Color.fromARGB(255, 253, 202, 109) , builder: (BuildContext context)
                {
                return Container(

                  // decoration: BoxDecoration(
                  //     color: Colors.black,
                  //   borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                  // ),
                   //margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(40),
                  child: Column(
                   mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Text('Add to cart',style: TextStyle(
                          color:Color.fromARGB(255, 15, 21, 41),
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                        alignment: Alignment.topLeft,
                      ),
                      Row(
                        children: [
                          Container(
                              child: Text('Servings',style: TextStyle(color:Color.fromARGB(255, 15, 21, 41), ),),
                          alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20),
                          ),
                          Container(
                              child: Icon(Icons.add),
                            margin: EdgeInsets.only(left: 150),
                          ),
                          Container(child: Text('0',style: TextStyle(color:Color.fromARGB(255, 15, 21, 41), ),),margin: EdgeInsets.symmetric(horizontal: 10),),

                          Container(
                              child: Icon(Icons.minimize),

                            margin: EdgeInsets.only(left: 10,bottom: 12),
                          ),


                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8,right: 8,top: 24),
                        child: ElevatedButton(onPressed: (){}, child:Text('Checkout \$ 178.25',style: TextStyle(color:Color.fromARGB(255, 253, 202, 109),fontSize: 18 ),),
                          style: ButtonStyle(

                              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal:70,vertical: 20)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 15, 21, 41),
                              )),
                        ),
                      )
                    ],
                  ),
                );
              },
              );
            },
              child:
            Text('Add to cart \$178.25',style: TextStyle(color:Color.fromARGB(255, 15, 21, 41),fontSize: 18 ),),
            style: ButtonStyle(

              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal:99,vertical: 25)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
                backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 253, 202, 109),
            )),

            ),
          ),

        ],
      ),


    );
  }
}