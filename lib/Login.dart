//login
// ignore_for_file: unused_import, prefer_const_constructors

//import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //para firebase
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              //"SingleChildScrollView": es para la separacion del teclado del telefono al momento de escribir
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Para centrar todo
                children: [
                  //logo
                  Icon(
                    Icons
                        .add_shopping_cart, //money_off_csred_rounded//attach_money
                    size: 100,
                  ),
                  SizedBox(height: 80),

                  //titulo numero 1
                  Text(
                    'Punto de venta!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24, //tamaño de letra
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //titulo numero 2
                  Text(
                    'Bienvenido!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ), //para separacion entre espacios

                  //para la parte del email ==================================================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.5),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Email',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),

                  SizedBox(height: 10), //para tamaño de caja o separacion

                  //para la contrasena
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.5),
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Contraseña',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  //para ingresar usuario y pass
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                              12), //para los bordes de la caja
                        ),
                        child: Center(
                            child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //para poder registrarse(nuevo)
                ],
              ),
            ),
          ),
        ));
  }
}
