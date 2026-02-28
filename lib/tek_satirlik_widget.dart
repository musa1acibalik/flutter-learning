import 'package:flutter/material.dart';

class TekSatirlikListile extends StatelessWidget {
  const TekSatirlikListile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.add)),
          trailing: CircleAvatar(child: Icon(Icons.arrow_back)),
          title: Text('Musa Acıbalık'),
          subtitle: Text('Geliştirici'),
        ),
        Divider(thickness: 2, color: Colors.black, indent: 20, endIndent: 20),
      ],
    );
  }
}
