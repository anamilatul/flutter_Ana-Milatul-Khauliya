import 'package:flutter/material.dart';
import '../model/contact.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void updateContact(Contact contact, int index) {
    _contacts[index] = contact;
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
