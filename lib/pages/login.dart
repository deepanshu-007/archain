import 'package:flutter/material.dart';
class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final Usertypelist = [ "Admin", "Warehouse Manager", "Driver" , "Helper" ,"Worker"];

  @override
  Widget build(BuildContext context) {
    final emailfields = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: (),
    onSaved: (value){
        emailController.text = value!;
    },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
    final passwordlfields = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      // validator: (),
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
    );
 final loginButton = Material(
   elevation: 5,
   borderRadius: BorderRadius.circular(10),
    color: Colors.redAccent,
   child: MaterialButton(
     padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
     minWidth: MediaQuery.of(context).size.width,
     // height: 25,
     onPressed: (){},
     child: Text("Login",textAlign: TextAlign.center,style: TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.bold,
       color: Colors.white,
     ),),
   ),
 );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 28,)),
      ),
      body: Center(
        child: SingleChildScrollView(child:Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50,width:MediaQuery.of(context).size.width/1.2,
              child: Image.asset("assets/images/logo1.png"), ),
                  SizedBox(height: 45,),
                  emailfields,
                  SizedBox(height: 25,),
                  passwordlfields,
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(),
                    child: DropdownButton(onChanged: (val){} , hint: Text('Select Usertype'),items: Usertypelist.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(),
                    ),
                  ),

                  SizedBox(height: 25,),
                  loginButton ,
                  SizedBox(height:10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account ?"),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      }, child: Text('SignUp',style:
                        TextStyle(color: Colors.redAccent,fontSize: 15,fontWeight: FontWeight.w600),),)
                    ],
                  )

                ],
              ),
            ),
          ),
        ),),
      ),
    );
  }
}
