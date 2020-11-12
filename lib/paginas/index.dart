import 'package:flutter/material.dart';
import 'package:questionscreator/paginas/home.dart';

class IndexViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomPanel(),
            child: Container(
              height: 200,              
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Questions Creator",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Image(image: AssetImage('inicio.png')),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Crea, edita y exporta",
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomeView()),
                    (route) => false);
              },
              child: Text("INICIAR"),
              color: Color(0xff13B6F0),
              shape: StadiumBorder(),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class CustomPanel extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0,size.height);
    path.quadraticBezierTo(size.width*0.39,size.height*0.74,size.width*0.59,size.height*0.77);
    path.quadraticBezierTo(size.width*0.75,size.height*0.79,size.width,size.height*0.53);
    path.lineTo(size.width,0);
    path.lineTo(0,0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


