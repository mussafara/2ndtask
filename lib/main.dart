import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({ Key key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(child: Text('Ecom App UI',style: TextStyle(color:Colors.black),)),
      backgroundColor: Colors.white,
      actions: [IconButton(icon: Icon(Icons.notifications_active,color: Colors.black,), onPressed: (){})],
      ),
      body: Column(
        children:[
          abc(),
          SizedBox(height:10),
          abc(),
          SizedBox(height:10),
          abc(),
          SizedBox(height:10),
          abc(),
        ]
      )
    );
  }
}

Widget abc(){
  return Stack(
              children:[ Container(
          width:390,
          height: 100,
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
          color:Colors.white,
          border: Border.all(color:Colors.grey)
          ),),
          Container(
          width:100,
          height: 98,
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
          color:Colors.white,
          border: Border.all(color:Colors.white),
           image: DecorationImage(image:AssetImage('assets/laptop1.jpg'),fit: BoxFit.fill)
          ),
          ),
          Container(
            margin: EdgeInsets.only(left:100),
            padding: EdgeInsets.only(left:5),
            width:100,
            height:98,
            child: ListTile(
            title:Text('Iphone',style:TextStyle(fontWeight:FontWeight.bold )) ,
            
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    SizedBox(width:5),
                     Text(' 5.0 (23 Reviews)'), ],),
               SizedBox(height:5),
                Row(
                  children: [
                    Text('20 Pieces'),
                    SizedBox(width:5),
                Text('\$90',style:TextStyle(fontWeight:FontWeight.bold,color: Colors.purple),),],),
                SizedBox(height:5),
                Row(
                  children: [
                    Text('Quantity: 1'),],)],
            ),
            ),
            
          )
        ]
  );
}