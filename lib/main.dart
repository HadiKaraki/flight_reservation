import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'search_flights.dart';
import 'preferences.dart';
import 'search_results.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      title: 'International Airways',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/searchflights': (context) => const SearchFlightsPage(),
        '/searchresults': (context) => const SearchResultsPage(),
        '/preferences': (context) => const PreferencesPage(),
      },
    );
  }
}
