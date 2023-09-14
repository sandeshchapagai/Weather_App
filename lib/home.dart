import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Weather'),
        centerTitle:true,
        titleTextStyle:TextStyle(color:Colors.white),
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.search,size: 30,color: Colors.white,),
        
        onPressed: (){},),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Image.asset('assests/background.jpg'),
          )
        ],
        
      ),
      body: Container(
        height: 100,
        
      ),
    );
  }
}