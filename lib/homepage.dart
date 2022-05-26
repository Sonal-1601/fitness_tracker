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
              Row(
                children: [
                  Text('Fitness')
                ],
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
