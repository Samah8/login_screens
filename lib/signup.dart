import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
class MyForm extends StatefulWidget{
  @override
  _MyFormState createState()=> _MyFormState();
}


class _MyFormState extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.network(
                        'https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?w=2000'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Name',
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.phone),
                        hintText: 'Enter a Phone Number',
                        labelText: 'Phone',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today),
                        hintText: 'Enter your date of birth',
                        labelText: 'Date Of Birth',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => home(),
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: const Text('Register',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),


      ),
    );
  }
}