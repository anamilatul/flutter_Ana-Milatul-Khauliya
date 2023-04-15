import 'package:flutter/material.dart';
import 'package:project_mvvm_architecture/model/contact_model.dart';
import '../../model/api/contact_api.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;
  getAllContacts() async {
    final c = await ContactAPI.getContacts();
    _contacts = c;
    notifyListeners();
  }
}
