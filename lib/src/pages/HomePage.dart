import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

final List _Pagelist =[
  {
  "Título": "Alertas"
    "Icono": Icons.add_alarm,
    "ruta": "alerts"

  },{
"Título": "Avatars"
"Icono": Icons.accessibility,
"ruta": "avatars"

},{
"Título": "Cards-Tarjetas"
"Icono": Icons.Icons.folder_open,
"Ruta": "cards"

}
];

@override
Widget build(BuildContext context){
  return Scaffold(
appBar: AppBar(
  title:Text('Pagina principal'),
),
    body: ListView(
      children: _Pagelist.map((item) {
        return Container(
          padding: EdgeInsets.symmetric(vertical:10),
          child: ListTile(
            title: Text(item["Título"]),
            leading: Icon(item["Icono"], color: Colors.blue,),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        );
      }).toList(),
    ),
  );

}
}