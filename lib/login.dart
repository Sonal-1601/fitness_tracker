import 'package:fitness_tracker/register_page.dart';
import 'package:fitness_tracker/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();
  final _email = TextEditingController();
  bool _isHidden = true;


  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Hey,there',style: TextStyle(fontSize: 16),),
                Text('Welcome Back',style: TextStyle(fontSize: 20),),

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

                SizedBox(height: 5,),
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
                SizedBox(height: 300),

                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
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
                        child: Text('Login',style: TextStyle(
                            color:Colors.white,
                            fontSize: 20

                        ),),
                      )
                  ),
                ),

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
                      Text('Don\u0027t have an account?',style:TextStyle(fontSize:16)),
                      SizedBox(width:5),
                      Column(
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterPage()),
                                );
                              },
                              child: Text('Register',
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
