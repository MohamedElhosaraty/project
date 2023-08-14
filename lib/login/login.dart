import 'package:flutter/material.dart';
import 'package:project_iti/login/welcome.dart';
import 'package:project_iti/models/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _forKey =GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
          children: [
            //image
          Container(
          height: 400,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(top: 50,right: 50,left: 50,bottom: 10),
                child: Image(
                   image: AssetImage('assets/shop1.jpg')),
          )
    ),
            // Text form email
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value){
                if(value == null || value.contains('@gmail.com') ==false){
                  return 'Enter valid Email';
                }
              },
              decoration: InputDecoration(labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder()),
            ),
          ),

          SizedBox(
              height: 20,
            ),

            // Text form Password
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if(value == null || value.length <8){
                    return 'Enter valid passwoed';
                  }
                },
                decoration: InputDecoration(labelText: 'password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder()),
              ),
            ),

          SizedBox(
            height: 20,
          ),

          // bottom login
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 300,
            child: MaterialButton(onPressed: (){
              if(_forKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('success')),
                );
              }

              Navigator.push(
              context, MaterialPageRoute(
              builder: (context) =>WelcomeScreen(

              )

              ),
              );

            },
              child: Text('LOGIN',
                style: TextStyle(fontSize: 25),),),
          ),

          SizedBox(
              height: 20,
            ),

          // bottom sing up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('you don\'t have an account?',
                style: TextStyle(fontSize: 20),),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed('sing_up');
              },
                  child: Text('sing up',
                      style: TextStyle(fontSize: 20)))
            ],
          ),



    ]
          ),
    ),
      ),
    );
  }
}

