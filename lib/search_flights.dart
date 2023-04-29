import 'package:flutter/material.dart';
import 'sidebar.dart';

class SearchFlightsPage extends StatefulWidget {
  const SearchFlightsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchFlightsPageState createState() => _SearchFlightsPageState();
}

class _SearchFlightsPageState extends State<SearchFlightsPage> {
  String dropdownFromValue = 'Abu dhabi';
  String dropdownToValue = 'Abu dhabi';
  String dropdownTypeValue = 'Economy';
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
          Container(
            constraints: const BoxConstraints.expand(
              height: 170.0,
            ),
            padding: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/airplane.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Center(
            child: Text(
              'Enter flight itinerary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'From',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: 350, // Set the desired width of the DropdownButton
            child: DropdownButton(
              isExpanded: true, // Set isExpanded property to true
              value: dropdownFromValue,
              items: <String>[
                'Abu dhabi',
                'Riyadh',
                'Cairo',
                'Istanbul',
                'Paris'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownFromValue = value!;
                });
              },
            ),
          ),
          const Text(
            'To',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: 350, // Set the desired width of the DropdownButton
            child: DropdownButton(
              isExpanded: true, // Set isExpanded property to true
              value: dropdownToValue,
              items: <String>[
                'Abu dhabi',
                'Riyadh',
                'Cairo',
                'Istanbul',
                'Paris'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownToValue = value!;
                });
              },
            ),
          ),
          const Text(
            'Type',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: 350, // Set the desired width of the DropdownButton
            child: DropdownButton(
              isExpanded: true, // Set isExpanded property to true
              value: dropdownTypeValue,
              items: <String>['Economy', 'Business', 'First class']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownTypeValue = value!;
                });
              },
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
              Navigator.pushNamed(context, '/searchresults');
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}
