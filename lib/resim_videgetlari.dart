import 'package:flutter/material.dart';

class ResimWidgetlari extends StatelessWidget {
  ResimWidgetlari({super.key});
  var _url = "https://picsum.photos/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('resim videgetleri')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      'assets/images/cat.png',
                      fit: BoxFit.cover,
                    ),
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(_url, fit: BoxFit.cover),
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/cat.png',
              image: _url,
            ),
          ],
        ),
      ),
    );
  }
}
