import 'package:flutter/material.dart';
import 'package:questionscreator/objetos/obj.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  Scaffold buildScaffold() {
    return Scaffold(
        appBar: AppBar(),
        body: FlatButton(
            onPressed: () {
             
              }, child: Text("data"),

            
            )
            );
  }
}
