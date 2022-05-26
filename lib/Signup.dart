import 'package:fitness_tracker/finish.dart';
import 'package:fitness_tracker/login.dart';
import 'package:fitness_tracker/register_page.dart';

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final myController = TextEditingController();
  final _email = TextEditingController();
  bool _isHidden = true;
  bool value = false;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Hey there,'),
                Text('Create an Account',style: TextStyle(fontSize: 28),),
                Row(
                  children: [
                    Icon(UniconsLine.user),
                    SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'First name',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,

                ),
                Row(
                  children: [
                    Icon(UniconsLine.user),
                    SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Last name',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,

                ),
                Row(
                  children: [
                    Icon(UniconsLine.postcard),
                    SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        controller:_email,
                        keyboardType: TextInputType.emailAddress,
                        textCapitalization: TextCapitalization.none,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Email ID',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,

                ),
                Row(
                  children: [
                    Icon(UniconsLine.lock),
                    SizedBox(
                      width: 8,

                    ),
                    Container(
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        obscureText: _isHidden,

                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          disabledBorder: InputBorder.none,
                          hintText: 'Password',
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ?         /// CHeck Show & Hide.
                              Icons.visibility :
                              Icons.visibility_off,
                            ),
                          ),



                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(value:this.value, onChanged:null),
                    SizedBox(width:5),
                    Text('By continuing you accept our Privacy Policy and\nTerm of Use',style: TextStyle(color: Colors.grey,
                    fontSize: 10),)



                    
                  ]
                ),
                SizedBox(height: 120),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinishPage()),
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
                        child: Text('Register',style: TextStyle(
                            color:Colors.white,
                            fontSize: 20

                        ),),
                      )
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 1,
                          width: 160,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(children: [Text('Or',style: TextStyle(color: Colors.grey),),
                    ],),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Container(
                          height: 1,
                          width: 160,
                          color: Colors.grey,
                        )
                      ],
                    )

                  ],
                ),
                SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/images/google_logo.png')
                          )
                        ),
                      ),
                      SizedBox(width: 50,),
                      Container(
                        height:50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/images/facebook.png'),

                            )
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                  child: Row(
                    children: [
                      Text('Already have an account?',style:TextStyle(fontSize:16)),
                      SizedBox(width:5),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                              );
                            },
                              child: Text('Login',
                                  style:TextStyle(fontSize:14,color: Colors.grey)))
                        ],
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),


    );
  }
}

    