// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_list/pages/components/button.dart';
import 'package:login_list/pages/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.menu_book,
                size: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Selamat Datang Kembali Di Aplikasi HepiVapeStore",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 32, 27, 27),
                  ),
                ),
              ),
              MyTextField(
                hintext: "Masukan Username",
                controller: usernameController,
                obsecuretext: false,
                width: 25,
                height: 20,
              ),
              MyTextField(
                obsecuretext: true,
                controller: passwordController,
                hintext: "Masukan Password",
                width: 25,
                height: 13,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Lupa Password?"),
                    )
                  ],
                ),
              ),
              MyBUtton(),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text("Atau Masuk Dengan"),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSocialButton("images/FB.png"),
                  buildSocialButton("images/TWT.png"),
                  buildSocialButton("images/GG.png"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?"),
                  SizedBox(
                    width: 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Daftar Sekarang"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton(String imagePath) {
    return InkWell(
      onTap: () {
        // Handle social login
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
