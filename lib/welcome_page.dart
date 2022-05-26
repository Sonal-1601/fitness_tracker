import 'package:fitness_tracker/dashboard.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height:430,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/welcome.png'),
                      fit: BoxFit.cover


                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 70 ,0 ,20 ),
            child: Text('Welcome,Sonal',style: TextStyle(
                fontSize: 24
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0 ,0 ,0 ),
            child: Text('You are all set now, let’s reach your\ngoals together with us',style: TextStyle(
                fontSize: 14,
                color:Colors.grey
            ),),
          ),

          SizedBox(
            height: 100,
          ),

          SizedBox(
            width: 300,

          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            child:Container(
                height:60,
                width:315,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff92A3FD),
                        Color(0xff9DCEFF),
                      ],
                    )



                ),
                child: Center(
                  child: Text('Go to home',style: TextStyle(
                      color:Colors.white,
                      fontSize: 20

                  ),),
                )
            ),
          ),

        ],
      ),
    );
  }
}
