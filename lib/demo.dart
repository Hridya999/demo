import 'package:flutter/material.dart';

import 'homepage.dart';
class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  TextEditingController phone_nocontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController pincodecontroller=TextEditingController();
  bool _isLoading=false;
  final _formkey=GlobalKey<FormState>();
  pressLoginButton()async{
    setState(() {
      _isLoading=true;
    });
    var data={
      'name':namecontroller.text.trim(),
      'address':addresscontroller.text.trim(),
      'phone_no':phone_nocontroller.text.trim(),
      'email':emailcontroller.text.trim(),
      'pincode':pincodecontroller.text.trim(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("REGISTRATION"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){},
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration:BoxDecoration(image: DecorationImage(
            image: AssetImage(""),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Registration",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: addresscontroller,
                decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: phone_nocontroller,
                decoration: InputDecoration(
                    labelText: "Phone_no",
                    hintText: "Phone_no",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: pincodecontroller,
                decoration: InputDecoration(
                    labelText: "Pincode",
                    hintText: "pincode",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(height: 40,width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),onPressed: (){},child: Text("submit"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>abc()));
            Tooltip:"add complaint";
          },
        ),
      ),
    );
    Tooltip:"ADD COMPLAINT";

  }
}
