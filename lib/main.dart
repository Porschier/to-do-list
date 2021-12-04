import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dem',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading:  Center(child: CircleAvatar(radius: 25, backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/poznan-pol-jan-6-2021-600w-1924116089.jpg"))), 

        title: Text("My task"),
        actions: const [
            
         Icon(Icons.search), Icon(Icons.filter_list),
          
        ],
      ),
     body:  Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
    
         children: const [ToDoWidget(),
       Padding(
         padding: EdgeInsets.all(8.0),
         child: Card(elevation: 15,
          child: 
           ListTile(
             leading: Icon(Icons.check_box),
             title: Text("Plan the trip to Finland"),
             subtitle: Text("the family's trip to finland next summer"),
         trailing:  Text("yesterday"),
             ),
  
           ),
       ),ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
          ToDoWidget(),
           ToDoWidget(), ToDoWidget(),
        
       ]),
     ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),

      bottomSheet:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card( child:Padding(
          padding: const EdgeInsets.all(15),
          child: Row(children: const [Icon(Icons.check_circle),SizedBox(width: 5,), Text("Completed"), Icon(Icons.arrow_drop_down ), Spacer(), Text("24")] ),
        ),
        color: Colors.blue[50]),
      ));
       
       
     
    
  }
}

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 15, child: 
    ListTile(
      leading: Icon(Icons.check_box, color: Colors.deepPurpleAccent,),
      title: Text("Plan the trip to Finland"),
      subtitle: Text("the family's trip to finland next summer"),
     trailing:  Text("yesterday"),
      ),
  
    );
  }
}
