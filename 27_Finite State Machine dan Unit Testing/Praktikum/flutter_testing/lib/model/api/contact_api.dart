import 'package:dio/dio.dart';

import '../contact_model.dart';

class ContactAPI {
  //getContacts digunakan untuk mengambil data dari server
  //dengan metode REST API
  //dan mengubah data tersebut ke dalam bentuk class Contact

  Future<List<Contact>> getContacts() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');
    List<Contact> contacts = (response.data as List)
        .map(
          (e) => Contact(
            id: e['id'],
            name: e['name'],
            phone: e['phone'],
          ),
        )
        .toList();
    return contacts;
  }
}
