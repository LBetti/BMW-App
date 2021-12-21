import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(context),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/screen.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    return SafeArea(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Container(
            height: 120,
            width: 140,
            child: Image(
              image: AssetImage(
                'assets/logo.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 75),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }

  Widget _pagina2(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(0, 0, 0, 1),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(
                side: BorderSide(color: Color(0xFFB71C1C), width: 2)),
            color: Color.fromRGBO(0, 0, 0, 1),
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text(
                'Welcome',
                style: TextStyle(color: Color(0xFFB71C1C), fontSize: 20.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }),
      ),
    );
  }
}
