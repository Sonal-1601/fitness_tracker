import 'package:flutter/material.dart';

class FinishPage extends StatefulWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height:480,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/finish.png'),
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
