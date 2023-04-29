import 'package:flutter/material.dart';
import 'sidebar.dart';

class PreferencesPage extends StatefulWidget {
  const PreferencesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PreferencesPageState createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  int _counterAdults = 0;
  int _counterChildren = 0;
  int _counterInfants = 0;

  void _incrementAdults() {
    setState(() {
      _counterAdults = _counterAdults + 1;
    });
  }

  void _incrementChildren() {
    setState(() {
      _counterChildren = _counterChildren + 1;
    });
  }

  void _incrementInfants() {
    setState(() {
      _counterInfants = _counterInfants + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book flights'),
      ),
      drawer: const SideBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          const Center(
            child: Text(
              'Enter nb of adults/children/infants',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Adults',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            '$_counterAdults',
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton.small(
            onPressed: _incrementAdults,
            child: const Icon(Icons.add),
          ),
          const Text(
            'Children',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            '$_counterChildren',
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton.small(
            onPressed: _incrementChildren,
            child: const Icon(Icons.add),
          ),
          const Text(
            'Infants',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            '$_counterInfants',
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          FloatingActionButton.small(
            onPressed: _incrementInfants,
            child: const Icon(Icons.add),
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
            child: const Text('Finish'),
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
            child: const Text('Go back'),
          ),
        ],
      ),
    );
  }
}
