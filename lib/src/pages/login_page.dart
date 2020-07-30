import 'package:flutter/material.dart';
import 'package:pspsystem/src/animations/fade_animation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _imagenFondo(),
            _formulario(),
          ],
        ),
      ),
    );
  }

Widget _imagenFondo(){

  final width = MediaQuery.of(context).size.width;

  return Container(
    height: 400,
    child: Stack(
      children: <Widget>[
        Positioned(
          height: 400,
          width: width,
          child: FadeAnimation(1.5,Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background-3.png'),
                fit: BoxFit.fill
              )
            ),
          ))
        ),
      ],
    ),
  );
}

Widget _formulario(){
  return Column(
    children: <Widget>[
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            Text('PSP SYSTEM',style: TextStyle(color: Color.fromRGBO(49, 39, 79, 3),fontWeight: FontWeight.bold,fontSize: 30)),
            SizedBox(height: 30),
            _cajaParaInput(),
            _botonEntrar(),
          ],
        ),
      )
    ],
  );
}

Widget _cajaParaInput(){

  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(196, 135, 198, .5),
          blurRadius: 20,
          offset: Offset(9,10)
        )
      ]
    ),
    child: Column(
      children: <Widget>[
        _inputEmail(),
        _inputPass(),
      ],
    ),
  );

}

Widget _inputEmail(){
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.white)
      )
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Nombre de usuario o email',
        hintStyle: TextStyle(color: Colors.grey)
      ),
    ),
  );
}

Widget _inputPass(){
  return Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Contraseña',
        hintStyle: TextStyle(color: Colors.grey)
      ),
    ),
  );
}

Widget _botonEntrar(){
  return Column(
    children: <Widget>[
      SizedBox(height:20),
      Text('Olvidaste tu constraseña?',style:TextStyle(color: Color.fromRGBO(196, 135, 198, 1))),
      SizedBox(height: 20),
      Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color.fromRGBO(49, 39, 79, 3)
        ),
        child: Center(
          child: Text('Acceder', style: TextStyle(color: Colors.white))
        ),
      )
    ],
  );
}


}