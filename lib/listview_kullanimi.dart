import 'package:flutter/material.dart';
import 'package:flutter_calismalari/tek_satirlik_widget.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ListviewKullanimi extends StatelessWidget {
  ListviewKullanimi({super.key});
  List<ogrenci> tumogrenciler = List.generate(
    100,
    (index) => ogrenci(
      id: index + 1,
      isim: "ogrenci adi ${index + 1}",
      erkekMi: index % 2 == 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tumogrenciler.length,
      itemBuilder:
          (context, index) => GestureDetector(
            onLongPress: () {
              SmartDialog.show(
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "card widget tıklanıldı ${tumogrenciler[index].isim}",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              );
              debugPrint("card widget tıklanıldı ${tumogrenciler[index].isim}");
            },
            child: Card(
              color: tumogrenciler[index].erkekMi ? Colors.blue : Colors.pink,
              child: ListTile(
                onTap: () {
                  SmartDialog.show(
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "ListTile tıklanıldı ${tumogrenciler[index].id}",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  );
                  debugPrint("ListTile tıklanıldı ${tumogrenciler[index].id}");
                },
                title: Text(tumogrenciler[index].isim),
                leading: CircleAvatar(child: Text(index.toString())),
              ),
            ),
          ),
    );
  }

  ListView listviewKullanimi() {
    return ListView(
      children: [
        TekSatirlikListile(),
        TekSatirlikListile(),
        TekSatirlikListile(),
      ],
    );
  }

  SingleChildScrollView SingleChildScroll() =>
      SingleChildScrollView(child: TekSatirlikListile());
}

class ogrenci {
  final int id;
  final String isim;
  final bool erkekMi;

  ogrenci({required this.id, required this.isim, required this.erkekMi});

  @override
  String toString() {
    // TODO: implement toString
    return "$isim";
  }
}
