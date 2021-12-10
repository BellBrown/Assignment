import 'package:flutter/material.dart';
import 'package:level1/brownspage.dart';

class Level1 extends StatelessWidget {
  const Level1({ Key? key }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brown's App"),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more)

        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1638913367147-b657c72051fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(children: [
          CircleAvatar( radius: 50,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1638893427709-28865ba8f183?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Phonenumber/Email")) ,
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(label: Text("Password")) ,
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
            Level3()));
          }, child: Text("login"),
         style:TextButton.styleFrom(
           backgroundColor: Colors.blue
         ) , )
        ],),
      ),
        
         );
      
    
  }
}