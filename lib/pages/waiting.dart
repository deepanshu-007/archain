import 'package:flutter/material.dart';
class RegistrationDone extends StatelessWidget {
  const RegistrationDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Registration Done"),
      ),
      body:Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/6, width:MediaQuery.of(context).size.width/1.2,
                child: Image.asset("assets/images/logo1.png"),),
              SizedBox(height: MediaQuery.of(context).size.height/2.5, width:MediaQuery.of(context).size.width/1.5 ,
                  child: Image.asset("assets/images/Done.png")),
              SizedBox(height: 10,),
              Text('You will be receiving confirmation mail soon' ,textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,)),
            ],
          ),
        ),
      ),
    );
  }
}
