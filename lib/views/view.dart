import 'package:ecesu_odev/product/utility/font_size_utility.dart';
import 'package:ecesu_odev/product/utility/text_utility.dart';
import 'package:flutter/material.dart';
import '../core/enum/image_enum.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({required Key key, required String data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TextUtil.filmchar)),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  TextUtil.blossom,
                  style: const TextStyle(fontSize: FontSizeUtil.largeFontSize),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  ImagePaths.blossom.pngPath(),
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    child: Text((TextUtil.details), style: const TextStyle(fontSize: FontSizeUtil.smallFontSize)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/second', arguments: TextUtil.details);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
