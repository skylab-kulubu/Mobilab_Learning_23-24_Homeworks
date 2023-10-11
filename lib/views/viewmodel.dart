import 'package:ecesu_odev/views/view.dart';
import 'package:ecesu_odev/views/views_second.dart';
import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';
part 'viewmodel.g.dart';

class FirstViewModel = _FirstViewModelBase with _$FirstViewModel;

abstract class _FirstViewModelBase with Store {}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage(data: '', key: const Key('firstPage')));
      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
              key: const Key('secondPage'),
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('ERROR'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ));
    });
  }
}
