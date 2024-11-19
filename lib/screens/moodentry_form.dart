import 'package:flutter/material.dart';
import '../widgets/left_drawer.dart';

class MoodEntryFormPage extends StatefulWidget {
  const MoodEntryFormPage({super.key});

  @override
  State<MoodEntryFormPage> createState() => _MoodEntryFormPageState();
}

class _MoodEntryFormPageState extends State<MoodEntryFormPage> {
  final _formKey = GlobalKey<FormState>(); // Global key for form state
  String _mood = ""; 
  String _feelings = ""; 
  int _moodIntensity = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add Product', // Title of the page
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(), 
      body: Form(
        key: _formKey, 
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Add padding around the form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
              children: [
                // Mood Input Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Products',
                      hintText: 'Enter Product Name',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _mood = value; // Update the _mood variable
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your product';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16.0), 

                // Feelings Input Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Product Description',
                      hintText: 'Enter Product Description',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _feelings = value; // Update the _feelings variable
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please describe your product';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16.0), 

                // Product Rating Slider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Product Rating',
                    labelText: 'Enter Product Rating',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _moodIntensity = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your rating!';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Product rating must be a number!';
                    }
                    return null;
                  },
                ),
              ),

                const SizedBox(height: 16.0), // Add spacing

                // Submit Button
// Inside the children of the Column widget in your Form            
                Align(
                  alignment: Alignment.bottomCenter, // Align button to bottom center
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding around the button
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary, // Set button color
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Display a pop-up message
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Product successfully saved"),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Product Name: $_mood"),
                                      Text("Description: $_feelings"),
                                      Text("Rating: $_moodIntensity"),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog
                                      _formKey.currentState!.reset(); // Reset the form
                                      setState(() {
                                        _mood = "";
                                        _feelings = "";
                                        _moodIntensity = 0;
                                      });
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white), // Text color
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
