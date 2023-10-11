import 'package:ecesu_odev/product/utility/font_size_utility.dart';
import 'package:ecesu_odev/product/utility/text_utility.dart';
import 'package:ecesu_odev/views/viewmodel_second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../core/enum/image_enum.dart';

class SecondPage extends StatelessWidget {
  final SecondViewModel _secondViewModel = SecondViewModel();
  SecondPage({required Key key, required String data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(TextUtil.blossom)),
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
                  const SizedBox(height: 40),
                  Image.asset(
                    (ImagePaths.blossom.pngPath()),
                    width: 300,
                    height: 200,
                  ),
                  const SizedBox(height: 50),
                  Observer(
                    builder: (_) => Text(
                      _secondViewModel.currentSkill,
                      style: const TextStyle(fontSize: FontSizeUtil.mediumFontSize),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FloatingActionButton(
                    onPressed: _secondViewModel.nextSkill,
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
