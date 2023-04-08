import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/contact.dart';
import '../provider/contact_provider.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name cannot be empty!';
                  } else if (value.split(' ').length < 2) {
                    return 'Please enter at least two words for the name!';
                  } else if (!RegExp(r'^[A-Z][a-z]*([ ][A-Z][a-z]*)*$')
                      .hasMatch(value)) {
                    return 'Name must start with a capital letter and only contain letters!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Phone Number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'phone number cannot be empty!';
                  } else if (!RegExp(r'^0[0-9]{7,14}$').hasMatch(value)) {
                    return 'Phone number must consist of 8-15 digits and start with 0!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final contact = Contact(
                      name: _nameController.text,
                      phoneNumber: _phoneNumberController.text,
                    );
                    Provider.of<ContactProvider>(context, listen: false)
                        .addContact(contact);
                    Navigator.pop(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text(
                  'Add Contact',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
