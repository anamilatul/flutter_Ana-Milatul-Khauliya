import 'package:flutter/material.dart';
import '../../model/api/contact_api.dart';
import '../../model/contact_model.dart';

enum ContactViewState {
  none,
  loading,
  error,
}

class ContactViewModel with ChangeNotifier {
  //Menambahkan getter dan setter
  ContactViewState _state = ContactViewState.none;
  ContactViewState get state => _state;

  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllContacts() async {
    changeState(ContactViewState.loading);
    try {
      final c = await ContactAPI.getContacts();
      _contacts = c;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }
}
