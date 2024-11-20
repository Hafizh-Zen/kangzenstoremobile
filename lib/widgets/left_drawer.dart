import 'package:flutter/material.dart';
import 'package:kangzenstore/screens/menu.dart';
import 'package:kangzenstore/screens/list_moodentry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              children: [
                const Text(
                  'KangzenStore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Explore our products and manage your shopping experience here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Routing section
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushNamed(context, '/'); // Navigate to the home page
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('View Mood'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/view-mood'); // Replace with actual route
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/logout'); // Replace with actual route
            },
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page'),
            // Redirection to MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Product'),
            // Redirection to Add Product Page
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProductPage(), // Replace with your AddProductPage
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            // Logout logic or redirection
            onTap: () {
              // Example: Navigate to login page or handle logout logic
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LogoutPage(), // Replace with your LogoutPage
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Mood List'),
            onTap: () {
                // Route to the mood page
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MoodEntryPage()),
                );
            },
          ),
        ],
      ),
    );
  }
}
