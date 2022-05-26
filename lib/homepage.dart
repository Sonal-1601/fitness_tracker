import 'package:fitness_tracker/Signup.dart';
import 'package:fitness_tracker/goal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:40,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 210),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                          children: [
                            Text('Fitness',style: TextStyle(
                              color: Color(0xff92A3FD),
                              fontSize: 55
                            ),),
                            Text('XR',style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 60
                            ),)
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45,vertical:0),
                        child: Row(
                          children: [
                            Text('One step towards better health!',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12

                              )
                              ,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              SizedBox(

                height:25

              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Goal()),
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
                      child: Text('Get Started',style: TextStyle(
                          color:Colors.white,
                          fontSize: 20

                      ),),
                    )
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
