import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('HBK.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text('Menu'),
            ),
          ),
          Container(
            decoration: const BoxDecoration(border: Border(top: BorderSide())),
            child: Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide())),
              child: ListTile(
                title: const Text('Home'),
                tileColor: Colors.grey[200],
                trailing: const Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ),
          Container(
            decoration:
                const BoxDecoration(border: Border(bottom: BorderSide())),
            child: ListTile(
              title: const Text('Book a flight'),
              tileColor: Colors.grey[200],
              trailing: const Icon(Icons.airplane_ticket),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/searchflights');
              },
            ),
          ),
          Container(
            decoration:
                const BoxDecoration(border: Border(bottom: BorderSide())),
            child: ListTile(
              title: const Text('Login/Signup'),
              tileColor: Colors.grey[200],
              trailing: const Icon(Icons.person_outline),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/login');
              },
            ),
          ),
        ],
      ),
    );
  }
}
