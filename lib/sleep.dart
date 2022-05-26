import 'package:fitness_tracker/Signup.dart';
import 'package:flutter/material.dart';

class SleepPage extends StatefulWidget {
  const SleepPage({Key? key}) : super(key: key);

  @override
  State<SleepPage> createState() => _SleepPageState();
}

class _SleepPageState extends State<SleepPage> {
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
                      image: AssetImage('assets/images/sleep.png'),
                      fit: BoxFit.cover


                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 70 ,0 ,20 ),
            child: Text('Improve Sleep\nQuality',style: TextStyle(
                fontSize: 24
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0 ,0 ,0 ),
            child: Text('Improve the quality of your sleep with us,\ngood quality sleep can bring a good mood\nin the morning',style: TextStyle(
                fontSize: 14,
                color:Colors.grey
            ),),
          ),

          SizedBox(
            height: 70,
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
                    MaterialPageRoute(builder: (context) => Signup()),
                  );


                },
                backgroundColor: Color(0xff92A3FD),
                child: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
          ),

        ],
      ),
    );;
  }
}
