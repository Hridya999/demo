import 'package:demo/register.dart';
import 'package:flutter/material.dart';
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);
  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  bool _passwordvisible=false;
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController usernamecontroller=TextEditingController();
  bool _isLoading=false;
  final _formkey=GlobalKey<FormState>();
  pressdLoginButton()async{
    setState(() {
      _isLoading=true;
    });
    var data={
      'username':usernamecontroller.text.trim(),
      'password':passwordcontroller.text.trim(),
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage(""),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("login",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 10,),
          SizedBox(height: 30,width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                    primary:Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),onPressed: (){
                pressdLoginButton();
            },child: Text("login"),
            ),
          ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>reg()));
                },
                child: Text("do you have an account"),
              )
            ]
          ),
        )
            ),
        );
  }
}
