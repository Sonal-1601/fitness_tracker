import 'package:fitness_tracker/burn.dart';
import 'package:flutter/material.dart';

class Goal extends StatefulWidget {
  const Goal({Key? key}) : super(key: key);

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
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
                    image: AssetImage('assets/images/Frame.png'),
                    fit: BoxFit.cover


                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(35, 70 ,0 ,20 ),
            child: Text('Track Your Goal',style: TextStyle(
              fontSize: 24
            ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0 ,0 ,0 ),
            child: Text('Don\u0027t worry if you have trouble determining\nyour goals, We can help you determine your goals and track your goals.',style: TextStyle(
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
                    MaterialPageRoute(builder: (context) => Burn()),
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
