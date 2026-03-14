import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_calismalari/dio_kullanimi.dart';
import 'package:flutter_calismalari/text_field_kullanimi.dart';
import 'package:flutter_calismalari/text_form_field_kullanimi.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: TextFormFieldKullanimi());
  }
}

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key});

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  bool isCircular = false;
  Color selectedColor = Colors.blue;
  bool isShowColorName = false;
  final Map<Color, String> renkler = {
    Colors.red: 'kırmızı',
    Colors.blue: 'mavi',
    Colors.green: 'yeşil',
    Colors.yellow: 'sarı',
    Colors.purple: 'mor',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renk Seçici'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                isShowColorName = !isShowColorName;
              });
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'a',
                  child: Row(children: [Text('renk adını göster / gizle')]),
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(isCircular ? 100 : 10),
                boxShadow: [
                  BoxShadow(
                    color: selectedColor.withOpacity(0.5),
                    blurRadius: 15,
                    spreadRadius: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isShowColorName
                ? Text(renkler[selectedColor] ?? 'seçilen renk')
                : SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<Color>(
                  value: selectedColor,
                  items:
                      renkler.entries.map((entry) {
                        return DropdownMenuItem(
                          value: entry.key,
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: entry.key,
                              ),
                              SizedBox(height: 4),
                              Text(entry.value),
                            ],
                          ),
                        );
                      }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedColor = value!;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: _rastgeleRenkSec,
                  child: Text('Rastgele'),
                ),
                IconButton(
                  onPressed: _renginKodunuGoster,
                  icon: Icon(Icons.info),
                ),
                IconButton(
                  onPressed: () {
                    _containerSekliniDegistir();
                  },
                  icon: Icon(Icons.circle_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _rastgeleRenkSec() {
    final colors = renkler.keys.toList();
    final rastgeleSayi = Random().nextInt(colors.length);
    final randomColor = colors[rastgeleSayi];
    setState(() {
      selectedColor = randomColor;
      debugPrint(rastgeleSayi.toString());
    });
  }

  void _renginKodunuGoster() {
    Fluttertoast.showToast(
      msg:
          "RGB :(${selectedColor.red},${selectedColor.green},${selectedColor.blue},)",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void _containerSekliniDegistir() {
    setState(() {
      isCircular = !isCircular;
    });
  }
}
