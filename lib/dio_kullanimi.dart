import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calismalari/models/photo_model.dart';

class DioKullanimi extends StatelessWidget {
  const DioKullanimi({super.key});

  Future<List<Photo>> _getPhotos() async {
    try {
      final dio = Dio();
      var url = 'https://jsonplaceholder.typicode.com/photos';
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final List<Photo> photoList =
            data.map((Element) => Photo.fromJson(Element)).toList();
        return photoList;
      } else {
        return [];
      }
    } on DioException catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bunu ekle
      body: FutureBuilder(
        future: _getPhotos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var photoList = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                var oankieleman = photoList[index];
                return ExpansionTile(
                  leading: CircleAvatar(
                    child: Text(oankieleman.albumId.toString()),
                  ),
                  title: Text(oankieleman.title),
                  children: [Image.network(oankieleman.url)],
                );
              },
              itemCount: photoList.length,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
