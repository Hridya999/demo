import 'package:flutter/material.dart';

import 'login.dart';
class abc extends StatefulWidget {
  const abc({Key? key}) : super(key: key);

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  String _selectedGender = 'male';
  bool _isLoading=false;
  final _formkey=GlobalKey<FormState>();
  pressLoaginButton()async{
    setState(() {
      _isLoading=true;
    });
    var data={
      'name':namecontroller.text.trim(),
      'address':addresscontroller.text.trim(),
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'REGISTRATION PAGE',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>demo()));
          },

        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Please let us know your gender:'),
              ListTile(
                leading: Radio<String>(
                  value: 'male',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                ),
                title: const Text('Male'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'female',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                ),
                title: const Text('Female'),
              ),
        SizedBox(height: 30,),
        TextField(
        controller:namecontroller,
        decoration: InputDecoration(
            labelText: "name",
            hintText: "name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      ),
      SizedBox(height: 30,),
    TextField(
      controller:addresscontroller,
      decoration: InputDecoration(
          labelText: "Address",
          hintText: "address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    ),
              SizedBox(height: 50),
              Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!'),
              Center(
                child: SizedBox(height: 40,width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),onPressed: (){},child: Text("submit"),
                    ),
                  ),
              ),
              SizedBox(height: 30,)
            ],
          )),
    );
  }
}