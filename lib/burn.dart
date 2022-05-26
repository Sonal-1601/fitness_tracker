import 'package:fitness_tracker/Eat.dart';
import 'package:flutter/material.dart';

class Burn extends StatefulWidget {
  const Burn({Key? key}) : super(key: key);

  @override
  State<Burn> createState() => _BurnState();
}

class _BurnState extends State<Burn> {
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
                      image: AssetImage('assets/images/burn.png'),
                      fit: BoxFit.cover


                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 70 ,0 ,20 ),
            child: Text('Get Burn',style: TextStyle(
                fontSize: 24
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0 ,0 ,0 ),
            child: Text('Let\u0027s keep burning, to achive yours goals, it\nhurts only temporarily, if you give up now\nyou will be in pain forever',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => EatPage()),
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
