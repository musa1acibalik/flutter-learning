import 'dart:math';

import 'package:flutter/material.dart';

class CardListileKullanimi extends StatefulWidget {
  const CardListileKullanimi({super.key});

  @override
  State<CardListileKullanimi> createState() => _CardListileKullanimiState();
}

class _CardListileKullanimiState extends State<CardListileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.amber,
        shadowColor: Colors.blue,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(children: [Expanded(child: TekSatir())]),
      ),
    );
  }

  Column TekSatir() {
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
