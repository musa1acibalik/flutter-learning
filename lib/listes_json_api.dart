import 'package:flutter/material.dart';
import 'package:flutter_calismalari/Card_Listile.dart';
import 'package:flutter_calismalari/gridview_cesitleri.dart';
import 'package:flutter_calismalari/listview_kullanimi.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [FlutterSmartDialog.observer],
      // here
      builder: FlutterSmartDialog.init(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liste ve Veri İşlemleri'),
          centerTitle: true,
        ),
        body: GridviewCesitleri(),
      ),
    );
  }
}
