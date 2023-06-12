import 'package:flutter/material.dart';
class MyDriver extends StatefulWidget {
  const MyDriver({Key? key}) : super(key: key);

  @override
  State<MyDriver> createState() => _MyDriverState();
}

class _MyDriverState extends State<MyDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:PopupMenuButton(
          icon: Icon(Icons.menu,color: Colors.black,size: 30,),
          color: Colors.white,
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text("Active Trips",style: TextStyle(
                  color: Colors.black
              ),),
              onPressed: (){
              },
            ),
              value: 1,),
            PopupMenuItem(child: TextButton(
              child: Text("Trip History",style: TextStyle(color: Colors.black),),
              onPressed: (){},
            ),
              value: 2,),
            PopupMenuItem(child: TextButton(
              child: Text("Helper Info.",style: TextStyle(
                  color: Colors.black,
              ),),
              onPressed: (){
              },
            ),
              value: 3,),
            PopupMenuItem(child: TextButton(
              child: Text("Vehicle Details",style: TextStyle(
                  color: Colors.black,
              ),),
              onPressed: (){
              },
            ),
              value: 4,),
            PopupMenuItem(child: TextButton(
              child: Text("Settings",style: TextStyle(
                  color: Colors.black,
              ),),
              onPressed: (){
              },
            ),
              value: 3,)
          ],
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Driver',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,color: Colors.black,size: 35,)),
        ],
      ),
    );
  }
}
