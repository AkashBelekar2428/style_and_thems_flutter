import 'package:flutter/material.dart';

void main(){
  runApp(styleAndThems());
}

class styleAndThems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Style and thems",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
            textTheme: const TextTheme(
      titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize:18,fontStyle: FontStyle.italic,color: Colors.yellow),
      titleSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 11,fontStyle: FontStyle.normal,color: Colors.pink)
      )
      ),
      home:stylenandThemsScreen(),
    );
  }
}
class stylenandThemsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("Style and Thems",),
   ),
   body: Column(
    children: [
    Text("text 1",style:Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.orange),),
    Text("text 2",style:Theme.of(context).textTheme.titleSmall,),
      Text("text 3",style:Theme.of(context).textTheme.titleMedium,),
      Text("text 4",style:Theme.of(context).textTheme.titleSmall,),
    ],
   )
 );
  }
}