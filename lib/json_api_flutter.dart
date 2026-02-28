import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calismalari/models/person_model.dart';

void main() {
  runApp(const MaterialApp(home: JsonApiFlutterBuilder()));
}

class JsonApiFlutterBuilder extends StatelessWidget {
  const JsonApiFlutterBuilder({super.key});

  Future<List<Person>> _loadJson() async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      var jsonString = await rootBundle.loadString('assets/data/persons.json');

      Map<String, dynamic> jsonMap = json.decode(jsonString);
      // debugPrint(jsonMap['persons'][0]['sevdigiRenkler'][0].toString());
      // debugPrint(jsonMap['persons'][1]['adress'][1]['il'].toString());

      List<dynamic> jsonList = jsonMap['persons'];
      List<Person> kisiler =
          jsonList.map((eleman) => Person.fromJson(eleman)).toList();

      for (var kisi in kisiler) {
        debugPrint(kisi.isim);
      }
      return kisiler;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Person>>(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var myPersonList = snapshot.data!;

          return ListView.builder(
            itemBuilder: (context, index) {
              var tekperson = myPersonList[index];
              return ListTile(title: Text(tekperson.isim));
            },
            itemCount: myPersonList.length,
          );
        } else if (snapshot.hasError) {
          return const Center(child: Text('error çıktı'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
