import 'package:flutter/material.dart';
class Onboardingpage extends StatefulWidget {
  const Onboardingpage({Key? key}) : super(key: key);

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  List onboardingdata = [{
    "image": 'assets/images/bwink_tsp_06_single_01.jpg',
    "title": 'Supply Chain Digitalization',
    "description": " "
  },
    {
      "image": 'assets/images/8487305.jpg',
      "title": 'Inventory Management',
      "description": "  "
    },
    {
      "image": 'assets/images/29969.jpg',
      "title": 'Logistic',
      "description": " "
    },
    {
      "image": 'assets/images/New entries-bro.png',
      "title": 'Warehouse Management',
      "description": " "
    },
  ];
  Color whitecolor = Colors.white;
  Color othercolor = Color(0xFF272728);
  PageController pageController = PageController();
int currpage = 0;
  OnChanged(int index){
    setState(() {
      currpage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(onPressed: (){
            Navigator.pushNamed(context, 'login');
          }, child: Text("Skip",style: TextStyle(color: othercolor),)),
        ],
        elevation: 0,
      ),
body: Center(
  child:   Stack(
    alignment: Alignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("WELCOME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: othercolor),),
          Text("ONBOARDING!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w100,color: othercolor),),
        ],
      ),
      PageView.builder(

        scrollDirection:  Axis.horizontal,

        controller: pageController,

        itemCount: onboardingdata.length,
        onPageChanged: OnChanged,
         itemBuilder: (context,index){

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                  Image.asset(onboardingdata[index]['image']),

              Text(onboardingdata[index]['title'],style: TextStyle(

                fontSize: 20,color: othercolor

              ),),

              const SizedBox(height: 20,),

              Text(onboardingdata[index]['description'],style: TextStyle(

                  fontSize: 15,color: othercolor

              ),),

            ],

          );

         },



      ),
      Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            (currpage == (onboardingdata.length-1))?
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,'login');
            }, child: Text('Get Started ?'), style: ElevatedButton.styleFrom(
              primary: Colors.redAccent, // Background color
            ), ):
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(onboardingdata.length, (index){
                return AnimatedContainer(duration: const Duration(milliseconds: 200),

                height: 10,
                width: (index ==currpage)?15:10,
                margin: const  EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: (index==currpage)?Colors.redAccent:Colors.grey,
                ),);
              }),
            ),
          ],
        ),
      )

    ],

  ),
),

    );
  }
}


