import 'dart:html';

import 'package:flutter/material.dart';
class CreateTodo extends StatelessWidget {
  const CreateTodo ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Create to do"),backgroundColor: Colors.blueAccent
      ),
      body: 
      ListView(children: [TextFormField(decoration:InputDecoration(label: Text("Title")),
      
      
      ),SizedBox(height: 100,),
      TextFormField(decoration: InputDecoration(label: Text("Description")),
      ),
      Row(children: [
        Expanded(
          child: TextFormField(decoration: InputDecoration(label: Text("Date")),
              ),
        ),
      TextFormField(decoration: InputDecoration(label: Text("Time")),
      
      ),
      ],)
      
      
      ],
      
      )
      
    );
  }
}