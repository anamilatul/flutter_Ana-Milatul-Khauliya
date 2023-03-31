// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../detail_page.dart';

class DialogComp extends StatelessWidget {
  final String image;
  final String name;
  const DialogComp({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Konfirmasi',
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      content: Text(
        'Apakah anda ingin berpindah ke Detail Page?',
        style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Image(
          image: AssetImage(image),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'No',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      image: image,
                      name: name,
                    ),
                  ),
                );
              },
              child: Text(
                'Yes',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
