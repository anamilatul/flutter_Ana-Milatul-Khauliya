import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_rest_api/model/contact.dart';

class Service {
  final Dio dio = Dio();

  Future createContact({
    required String name,
    required String phone,
  }) async {
    try {
      final Response response = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: {
          'name': name,
          'phone': phone,
        },
      );
      debugPrint(response.data.toString());
    } catch (e) {
      rethrow;
    }
  }

  Future getContact() async {
    try {
      final Response response = await dio.get(
          "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2");
      final contactJson = jsonDecode(response.toString());
      final contacts = Contacts.fromJson(contactJson);

      debugPrint('ID: ${contacts.id}');
      debugPrint('Nama: ${contacts.name}');
      debugPrint('Nomor telepon: ${contacts.phone}');
    } catch (e) {
      rethrow;
    }
  }

  Future putContact() async {
    try {
      final Response response = await dio.put(
        "https://jsonplaceholder.typicode.com/posts/1",
        data: {
          'id': 1,
          'title': 'foo',
          'body': 'bar',
          'userId': 1,
        },
      );
      debugPrint(response.data.toString());
    } catch (e) {
      rethrow;
    }
  }

  String imgUrl = '';
  Future getImage() async {
    final response = await dio.get('https://api.dicebear.com/6.x/bottts/svg');
    imgUrl = response.data;
    debugPrint(imgUrl);
  }

  Future getImageInput(String nameImage) async {
    final Response response = await dio
        .get('https://api.dicebear.com/6.x/pixel-art/svg?seed=$nameImage');
    imgUrl = response.data;
    debugPrint("Name image : $nameImage");
    debugPrint(response.data);
  }
}
