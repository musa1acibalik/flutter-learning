import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("buttonlar", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text('text button')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('text button with icon'),
            ),
            SizedBox(height: 4),
            ElevatedButton(onPressed: () {}, child: Text('elevated button')),
            SizedBox(height: 4),

            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              icon: Icon(Icons.remove),
              label: Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
              child: Text('outline button'),
            ),
            SizedBox(height: 4),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text('outline button with icon'),
            ),
          ],
        ),
      ),
    );
  }
}
