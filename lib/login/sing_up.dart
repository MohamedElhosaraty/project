import 'package:flutter/material.dart';
import 'package:project_iti/models/home_screen.dart';

class Sing_upScreen extends StatefulWidget {
  const Sing_upScreen({Key? key}) : super(key: key);

  @override
  State<Sing_upScreen> createState() => _Sing_upScreenState();
}

class _Sing_upScreenState extends State<Sing_upScreen> {

  final _forKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 40,bottom: 10),
                child: Text('Sing Up',
                  style: TextStyle(fontSize:60 ,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:40 ),
                child: Text('Create your account in secounds'),
              ),
              // Text full name
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Full Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder()),
                ),
              ),
              //Text phone
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 10),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value == null || value.length < 11){
                      return 'Enter valid phone';
                    }
                  },
                  decoration: InputDecoration(labelText: 'Phone',
                      prefixIcon: Icon(Icons.mobile_friendly),
                      border: OutlineInputBorder()),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              // bottom email
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
                height: 15,
              ),
              // bottom password
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
              // bottom create
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,

                  child: MaterialButton(onPressed: (){
                    if(_forKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('success')),
                      );
                    }
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomeScreen()));
                  },
                    child: Text('Create an account',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              // member
              Padding(
                padding: const EdgeInsets.only(left:20 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Aleady a member?',
                      style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushNamed('login');
                    },
                        child: Text('login',
                            style: TextStyle(fontSize: 20)))
                  ],
                ),
              ),

              SizedBox(
                height: 70,
              ),
              Text(
                  '----------------------------    Of Continue With    ----------------------------')

            ],
          ),
        ),
      ),
    );
  }
}
