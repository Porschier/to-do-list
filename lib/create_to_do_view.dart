import 'dart:html';

import 'package:flutter/material.dart';
class CreateTodo extends StatelessWidget {
   CreateTodo ({ Key? key }) : super(key: key);
  final GlobalKey<FormState> createAToDokey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Create to do"),backgroundColor: Colors.blueAccent
      ),
      body: 
      Form(
        key: createAToDokey,
        child: ListView(children: [TextFormField(
          validator: (value){
            if (value!.isEmpty)
      
      {
          return "This Field must not be empty"; 
      }        },
          decoration:InputDecoration(label: Text("Title")),
        
        
        ),SizedBox(height: 100,),
        TextFormField(validator: (value) {
          if (value!.isEmpty) {
            return "This Field must not be empty";
          }
        },
          decoration:
           InputDecoration(label: Text("Description")),
        ),
        Row(children: [
          Expanded(
            child: TextFormField(
              validator: (value) {
                if (value! . isEmpty)
                return "This Field must not be empty";
              },
              decoration: InputDecoration(label: Text("Date")),
                ),
          ),
        Expanded(
          child: TextFormField(
          validator: (value) {
            if (value!.isEmpty)
            return "This Field must not be empty";
          },
            decoration: InputDecoration(label: Text("Time")), 
          
          ),
        ),
        ],),
        const SizedBox(
          height: 30,
        ),
        Padding(padding: const EdgeInsets.all(10.0),
        child: 
        TextButton(onPressed:(){
      
         
if( createAToDokey.currentState!.validate())
         
         
         {
           // send to database
         } else {
           //dont send to database
         }
         },
            child: Text("create",
        style: TextStyle(color: Colors.white,fontSize: 30),
        ),style: TextButton.styleFrom(backgroundColor: Colors.blue),
        
        )
        
        )]
        
          ),
      )
      );
  }
}


