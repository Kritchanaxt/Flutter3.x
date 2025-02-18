import 'package:flutter/material.dart';
import 'package:flutter_test42/models/person.dart';
import 'package:flutter_test42/screens/MyApp.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {

  final _formkey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.teacher;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "My Title",
       home: Scaffold(
         appBar: AppBar(
           title: const Text("แบบฟอร์มบันทึกข้อมูล"),
           backgroundColor: Colors.blueGrey,
           foregroundColor: Colors.white,
           centerTitle: true,
         ),
         body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form ( 
            key: _formkey,
            child: Column(
              children: [
                TextFormField (
                  maxLength: 20,
                  decoration: InputDecoration(
                    label: Text("ชื่อ", style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) { //* validation
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนชื่อ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!; // value not null
                  },
                ),
                TextFormField (
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("อายุ", style: TextStyle(fontSize: 20),)
                  ),
                  validator: (value) { //* validation
                    if (value == null || value.isEmpty) {
                      return "กรุณาป้อนอายุ";
                    }
                    return null;
                  },
                  onSaved: (value) { 
                    _age = int.parse(value.toString()); // value not String
                  },
                ),
                const SizedBox(height: 20,),
                DropdownButtonFormField( //* Form State
                  value: _job,
                  items: Job.values.map((key){ 
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(), 
                  onChanged: (value){
                     setState(() {
                       _job = value!; // value not null
                     });
                  }
                ),
                FilledButton(
                  onPressed: (){ //*  Submit Data
                    _formkey.currentState!.validate();
                    _formkey.currentState!.save();
                    data.add(
                      Person(
                        name: _name,
                        age: _age,
                        job: _job,
                      )
                    );
                    print(data.length);
                    _formkey.currentState!.reset();
                     Navigator.pushReplacement(context, MaterialPageRoute( //* Routing
                      builder: (ctx) => const MyApp())
                     );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ), 
                  child: Text("บันทึก", style: TextStyle(fontSize: 20),)) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}