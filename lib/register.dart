import 'package:flutter/material.dart';
class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);
  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  bool _isLoading=false;
  bool _passwordvisible=false;
  final _formkey=GlobalKey<FormState>();
  pressdLoginButton()async{
    setState(() {
      _isLoading=true;
    });
    var data={
      'username':namecontroller.text.trim(),
      'password': phonecontroller.text.trim(),
      'address': addresscontroller.text.trim(),
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage("images/img.png"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("USER REGISTRATION",
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
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: phonecontroller,
                    decoration: InputDecoration(
                        hintText: "Phone number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: addresscontroller,
                    decoration: InputDecoration(
                        hintText: "Address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 30,width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),onPressed: (){},child: Text("Submit"),
                    ),
                  ),
                ]
            ),
          )
      ),
    );
  }
}
