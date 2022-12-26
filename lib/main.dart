import 'package:flutter/material.dart';
import 'package:listmodelclass/modelclass.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Ayshu> abc=[
    Ayshu(i:'https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2' , t: 'Brazilian portugese', st:'portugeese do brazil' ),
    Ayshu(i:'https://images.pexels.com/photos/1271620/pexels-photo-1271620.jpeg?auto=compress&cs=tinysrgb&w=600' , t: 'spanish latin america', st: 'espanol latino americano'),
    Ayshu(i: 'https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg?auto=compress&cs=tinysrgb&w=600', t: 'japanese', st: 'Nihongo')
  ];




  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
    appBar: AppBar(leading: Icon(Icons.menu,color: Colors.orangeAccent,),title: Text('ListView',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,actions: [
      Icon(Icons.close,color: Colors.blueGrey,)
    ],
    ),
        body: ListView.builder(itemCount:abc.length,itemBuilder: (BuildContext context,int index) {
         return Container(

           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(

               children: [
                 CircleAvatar(
                   backgroundImage: NetworkImage(abc[index].i),
                   radius: 35,

                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(abc[index].t,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
                       Text(abc[index].st,style: TextStyle(color: Colors.blueGrey,fontSize: 24),),
                     ],
                   ),
                 )
               ],
             ),
           ),

          );
        }),
     ),  );
  }
}
