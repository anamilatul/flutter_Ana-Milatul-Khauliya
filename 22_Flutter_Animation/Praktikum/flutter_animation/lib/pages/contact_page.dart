import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/create_page.dart';
import 'package:provider/provider.dart';
import '../model/contact.dart';
import '../provider/contact_provider.dart';
import 'update_page.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: Consumer<ContactProvider>(
        builder: (context, contactProvider, child) {
          List<Contact> contacts = contactProvider.contacts;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.only(right: 10, left: 10, top: 15),
                elevation: 3,
                child: ListTile(
                  title: Text(
                    contacts[index].name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(contacts[index].phoneNumber),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return UpdatePage(
                                  contact: contacts[index],
                                  index: index,
                                );
                              },
                              transitionsBuilder: ((context, animation,
                                  secondaryAnimation, child) {
                                final tween = Tween(begin: 0.2, end: 1.0);
                                return FadeTransition(
                                  opacity: animation.drive(tween),
                                  child: child,
                                );
                              }),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          contactProvider.deleteContact(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return CreatePage();
              },
              transitionsBuilder:
                  ((context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: 0.0, end: 1.0);
                return ScaleTransition(
                  scale: animation.drive(tween),
                  child: child,
                );
              }),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
