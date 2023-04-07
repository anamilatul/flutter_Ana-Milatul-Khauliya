import 'dart:io';
import 'package:flutter/material.dart';
import '../model/image_model.dart';

class ImageProvider with ChangeNotifier {
  final List<ImageModel> _images = [];

  List<ImageModel> get images => _images;

  void addImage(String name, File imageFile) {
    final newImage = ImageModel(name: name, imagePath: imageFile.path);
    _images.add(newImage);
    notifyListeners();
  }

  void updateImage(String name, File image, int index) {
    final updatedImage = ImageModel(name: name, imagePath: image.path);
    _images[index] = updatedImage;
    notifyListeners();
  }

  void deleteImage(int index) {
    _images.removeAt(index);
    notifyListeners();
  }
}
