import 'package:flutter/material.dart';
import 'sidebar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      drawer: const SideBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Container(
            constraints: const BoxConstraints.expand(
              height: 150.0,
            ),
            padding: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/join-us.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const Center(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
            child: const Text('Login'),
          ),
          const SizedBox(
            height: 6,
          ),
          const Center(
            child: Text(
              'or',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/signup');
            },
            child: const Text('Sign up'),
          ),
        ],
      ),
    );
  }
}

//mainAxisAlighnment