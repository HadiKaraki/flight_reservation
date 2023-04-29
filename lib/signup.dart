import 'package:flutter/material.dart';
import 'sidebar.dart';

void main() => runApp(const MaterialApp(home: SignupPage()));

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              "Sign up",
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
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
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
            child: const Text('Sign up'),
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
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
