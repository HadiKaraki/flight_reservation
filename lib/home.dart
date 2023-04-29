import 'package:flutter/material.dart';
import 'sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('International Airways'),
      ),
      drawer: const SideBar(),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(
                height: 300.0,
              ),
              padding: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Travelers.jpg"),
                    fit: BoxFit.cover),
              ),
              child: const Text(
                'In A World Full Of Wonders\n\t\t\t\t\t\t Reach for the skies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
                Navigator.pushNamed(context, '/searchflights');
              },
              child: const Text('Explore flights'),
            ),
          ],
        ),
      ),
    );
  }
}
