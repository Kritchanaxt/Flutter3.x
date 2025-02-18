import 'package:flutter/material.dart';
import 'package:flutter_test42/models/person.dart';
import 'package:flutter_test42/screens/AddForm.dart';
import 'package:google_fonts/google_fonts.dart';

class Item2 extends StatefulWidget {
  const Item2({super.key});

  @override
  State<Item2> createState() => _ItemState2();
}

class _ItemState2 extends State<Item2> { 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder( //*  ListView
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: data[index].job.color,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), 
                padding: const EdgeInsets.all(25), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          style: GoogleFonts.kanit( //* Google Fonts
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )
                          ),
                        ),
                        Text(
                          "Age ${data[index].age} years, Job: ${data[index].job.title}",
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            )
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      data[index].job.image,
                      height: 70,
                      width: 70,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute( //* Routing
                builder: (ctx) => const Addform())
              );
            },
            icon: const Icon(Icons.add, size: 40, color: Colors.blueAccent),),
        )
      ],
    );
  }
}
