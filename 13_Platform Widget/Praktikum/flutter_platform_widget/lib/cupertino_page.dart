import 'package:flutter/cupertino.dart';

class IosDesign extends StatelessWidget {
  //SoalPrioritas2
  const IosDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('CupertinoApp'),
          ),
          child: Center(
            child: Text('This is Cupertino App'),
          )),
    );
  }
}
