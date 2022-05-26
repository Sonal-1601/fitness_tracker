import 'package:fitness_tracker/sleep.dart';
import 'package:flutter/material.dart';

class EatPage extends StatefulWidget {
  const EatPage({Key? key}) : super(key: key);

  @override
  State<EatPage> createState() => _EatPageState();
}

class _EatPageState extends State<EatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height:430,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/eat.png'),
                      fit: BoxFit.cover


                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 70 ,0 ,20 ),
            child: Text('Eat Well',style: TextStyle(
                fontSize: 24
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0 ,0 ,0 ),
            child: Text('Let\u0027s start a healthy lifestyle with us, we can\ndetermine your diet every day. healthy\neating is fun',style: TextStyle(
                fontSize: 14,
                color:Colors.grey
            ),),
          ),

          SizedBox(
            height: 100,
          ),

          Row(
            children: [
              SizedBox(
                width: 300,

              ),

              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SleepPage()),
                  );


                },
                backgroundColor: Color(0xff92A3FD),
                child: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
