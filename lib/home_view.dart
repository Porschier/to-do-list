//this will allow you to use widgets in your app
import 'package:flutter/material.dart';
import 'package:todoapp/create_to_do_view.dart';
import 'package:todoapp/utilities.dart';

// this is the class for our home page
class HomeView extends StatelessWidget {
   final List<Map<String, dynamic>> completedTask =[];
  final List<Map<String, dynamic>> mydatabase = [

    {
    'title': 'Plan trip  to Accra',
    'description': 'I will be going to Accra',
    'time': 'Yesterday',
    'is completed': false
    },
    {'title': 'Go to work five out of seven days',
    'description': 'work begins at 7 am on workdays',
    'time': 'today',
    'is completed': true

    },
    {'title': 'Plan trip  to Singapore  ',
    'description': 'Singapore is a a must tour country',
    'time': 'tomorrow',
    'is completed': false

    },
  ];

  var itemCount; 

  @override
  Widget build(BuildContext context) {
    for(var element in mydatabase){
      if(element['isCompleted']==true) {
        completedTask.add(element); 
      }
    }
    // the scaffold is the root widget for the app( it has the Appbar,body,floating Action and many others)
    return Scaffold(
      appBar: AppBar(
        //Appbar consists of a title,actions and icons. you can press ctrl=space for all properties
        //properties start with small letters and class begins with upperclass

        leading:  Center(child: CircleAvatar(radius: 25, backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/poznan-pol-jan-6-2021-600w-1924116089.jpg"))), 
//this is used when you want something to lead
        title: Text("My task"),
        actions: const [
          // actions allow to place items to the far right
            
         Icon(Icons.search), Icon(Icons.filter_list),
          
        ],
      ),
     body:  Padding(
       // padding helps with uniformity of the pic in terms of placement9social distance)
       padding: const EdgeInsets.all(8.0),
       child: ListView//allows for scrolling as compared to column
       (
    
         children: const [
              // this was the card i extracted from the main class and called it multiple times
           ToDoWidget(
           task: "Plan a trip to Singapore",
           description: "Its an Asian country with beautiful sceneries",
           time: "next three months",
         ),
            
       ]),
     ),
      floatingActionButton: FloatingActionButton
      // is circular in shape and has a child enablinh you to put  an item in it
      (onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CreateTodo();
        } ));
      },child: Icon(Icons.add),),

      bottomNavigationBar:// chanfes bottom sheet to bottom navigation bar 
      Padding(
        // allowed the housing of completed and all the other items seen at the bottom sheet
        padding: const EdgeInsets.all(8.0),
        child:InkWell//allows for the tap property where when you tap the completed the completed task
        (
          onTap: (){
        showModalBottomSheet // when the completed is selected it displays the number oftasks completed
        (context: context, builder: (context)
        {
        return 
        ListView.separated(itemBuilder: (context,index){
          return ToDoWidget(
            task: mydatabase[index]['task'],
             description:  mydatabase[index]['description'], 
             time: mydatabase[index]['time']);  
          },
         separatorBuilder: (context,index){
          return SizedBox(height: 10,);
        }, itemCount: mydatabase.length);
          }
          );},
          // helps to pop up the completed task ,
        child: Card // card was used to allow for elevation so we will know the is a text on it
         ( child:Padding(
          padding: const EdgeInsets.all(15),
          child: Row
          // row allows alingment of items in oone row
          
          (children: const [Icon(Icons.check_circle),SizedBox(width: 10,), // spaced box gave a space between the icon check box and completed
          
           Text("Completed"), Icon(Icons.arrow_drop_down ), SizedBox(width: 10,),  Spacer()
          //spacer pushed 24 to the very end
          , Text("24")] ),
        ),
        color: Colors.blue[50]),
      )));
       
       
     
    
  }
}

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    Key? key, required this.task, required this.description, required this.time,
  }) : super(key: key);
  //this is the variable for the title
  final String task;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 15, child: 
    ListTile(
      leading: Icon(Icons.check_box, color: paint(time)),
      title: Text("Plan the trip to Finland"),
      subtitle: Text("the family's trip to finland next summer"),
     trailing:  Text("yesterday"),
      ),
  
    );
  }
}
