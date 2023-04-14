import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_rest_api/service/service.dart';

class Prioritas2 extends StatefulWidget {
  const Prioritas2({super.key});

  @override
  State<Prioritas2> createState() => _Prioritas2State();
}

class _Prioritas2State extends State<Prioritas2> {
  String image = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Image'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image.isNotEmpty
              ? SvgPicture.string(
                  image,
                  height: 400,
                )
              : Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 400,
                    child: const Text(
                      "Image belum terfetching",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
          ElevatedButton(
            onPressed: () async {
              final _result = await Service().getImage();
              image = _result.toString();
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Text(
              "Get Image",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
