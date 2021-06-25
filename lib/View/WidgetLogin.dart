import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class WidgetLogin extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
  
}

class _LoginPageState extends State<WidgetLogin> {
  String email = '';
  String password = '';

  Widget _body(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 100,
          child: Image.asset('assets/images/logo.png')
        ),
        SizedBox(height: 100,),
        TextField(
          onChanged: (text) {
            email = text;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'E-mail',
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          onChanged: (text) {
            password = text;
          },
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
              labelText: 'Senha',
              border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10,),
        RaisedButton(
            onPressed: () {
              if(!(email == 'edmar_espinola@hotmail.com') || !(password == 'abcedfg')) {
                return print('Erro ao fazer login');
              }
              print('feito login com sucesso');
            },
            child: Text('Login')
        )
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Stack(
              children: [_body()],
            )
          ),
        )
      ),
    );
  }
}