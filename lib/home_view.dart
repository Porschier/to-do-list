//this will allow you to use widgets in your app
import 'package:flutter/material.dart';

// this is the class for our home page
class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    
         children: const [ToDoWidget(),
       Padding(
         padding: EdgeInsets.all(8.0),
         child: Card(elevation: 15,
         // gives background shadow
          child: 
           ListTile(
             // gives options such as leading title and subtitle
             leading: Icon(Icons.check_box),
             title: Text("Plan the trip to Finland"),
             subtitle: Text("the family's trip to finland next summer"),
             
         trailing:  Text("yesterday"),
         // trailing puts several items to the far right
             ),
  
           ),
           // this was the card i extracted from the main class and called it multiple times
       ),ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
         ToDoWidget(),
          ToDoWidget(),
           ToDoWidget(), ToDoWidget(),
        
       ]),
     ),
      floatingActionButton: FloatingActionButton
      // is circular in shape and has a child enablinh you to put  an item in it
      (onPressed: (){},child: Icon(Icons.add),),

      bottomSheet:Padding(
        // allowed the housing of completed and all the other items seen at the bottom sheet
        padding: const EdgeInsets.all(8.0),
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
