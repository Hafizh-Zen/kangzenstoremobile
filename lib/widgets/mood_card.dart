import 'package:flutter/material.dart';
import 'left_drawer.dart';
import '../screens/moodentry_form.dart';
import '../screens/menu.dart';

class ItemHomepage {
  final String name; // Name of the button
  final IconData icon; // Icon of the button

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.secondary, // Background color
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // Show a SnackBar when the card is pressed
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You pressed the ${item.name} button!")),
            );

          // Navigate to the appropriate page based on item name
          if (item.name == "Add Product") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MoodEntryFormPage(),
              ),
            );
          } else if (item.name == "View Product") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProductPage(), // Replace with appropriate page
              ),
            );
          } else if (item.name == "Logout") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LogoutPage(),
              ),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3.0)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}