import 'package:flutter/material.dart';
import 'package:flutter_calismalari/listview_kullanimi.dart';

class GridviewCesitleri extends StatelessWidget {
  GridviewCesitleri({super.key});

  final List<ogrenci> ogrenciler = List.generate(500, (index) {
    return ogrenci(
      id: (index + 1),
      isim: 'ogrenci ${index + 1}',
      erkekMi: index % 2 == 0,
    );
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue[100 * (index % 9)],
          child: Text(ogrenciler[index].toString()),
        );
      },
    );
  }

  GridView gridviewCount() {
    return gridviewextent();
  }

  GridView gridviewextent() {
    return GridView.extent(
      reverse: true,
      maxCrossAxisExtent: 200,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,
      crossAxisSpacing: 5,
      children: createContainers(20),
      scrollDirection: Axis.vertical,
    );
  }
}

List<Widget> createContainers(int lenght) {
  return List.generate(lenght, (index) {
    var renkShade = 100 * ((index % 9) + 1);
    var sonShade = renkShade == 0 ? 100 : renkShade;
    return Container(
      alignment: Alignment.center,
      color: Colors.purple[sonShade],
      child: Text(
        'container $sonShade',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  });
}
