import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/tugas_assets_dialog_bottom_sheet_navigation/components/bottom_sheet.dart';
import 'model/image_model.dart';

// ignore: must_be_immutable
class GalleryPage extends StatelessWidget {
  GalleryPage({super.key});
  List<ImageModel> itemImage = [
    ImageModel(
      image: 'assets/images/sepatu_adidas.jpg',
      name: 'Sepatu Adidas',
    ),
    ImageModel(
      image: 'assets/images/sepatu_converse.jpg',
      name: 'Sepatu Converse',
    ),
    ImageModel(
      image: 'assets/images/sepatu_nike.jpg',
      name: 'Sepatu Nike',
    ),
    ImageModel(
      image: 'assets/images/sepatu_reebokk.jpg',
      name: 'Sepatu Reebok',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 223),
      appBar: AppBar(
        title: Text(
          'Gallery Sepatu',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: itemImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => ShowBottomSheet(
                  image: itemImage[index].image,
                  name: itemImage[index].name,
                ),
              );
            },
            child: Card(
              elevation: 2,
              margin: const EdgeInsets.all(8),
              child: Image.asset(
                itemImage[index].image,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
