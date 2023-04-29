import 'package:flutter/material.dart';
import 'sidebar.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Availble flights'),
      ),
      drawer: const SideBar(),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: <Widget>[
          Container(
            constraints: const BoxConstraints.expand(
              height: 170.0,
            ),
            padding: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/airplane2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text(
              'Pick your flight',
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
          Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 18,
                  ),
                  const SizedBox(
                    width: 360,
                    child: Text(
                      'Beirut to Dubai',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    width: 360,
                    child: Text(
                      'Departure: 6:30 AM',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/preferences');
                    },
                    child: const Text('Choose'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              )),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 18,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    'Beirut to Dubai',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    'Departure: 12:15 PM',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/preferences');
                  },
                  child: const Text('Choose'),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 18,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    'Beirut to Dubai',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  width: 360,
                  child: Text(
                    'Departure: 4:30 PM',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/preferences');
                  },
                  child: const Text('Choose'),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
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
            child: const Text('Go back'),
          ),
        ],
      ),
    );
  }
}
