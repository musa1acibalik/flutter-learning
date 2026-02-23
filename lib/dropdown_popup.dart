import 'package:flutter/material.dart';

class DropdownPopup extends StatelessWidget {
  const DropdownPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown ve Popup')),
      body: const Center(
        child: Column(
          children: [DropdownButtonKullanimi(), _PopupMenuKullanimi()],
        ),
      ),
    );
  }
}

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() =>
      _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  var _secilenSehir = null;
  var _sehirler = ['Ankara', 'İzmir', 'Bursa', 'Van'];
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Text('seçilen sehir'),
      value: _secilenSehir,
      // items: [
      //   DropdownMenuItem(child: Text('Ankara'), value: 'Ankara'),
      //   DropdownMenuItem(child: Text('Bursa'), value: 'Bursa'),
      //   DropdownMenuItem(child: Text('İstanbul'), value: 'İstanbul'),
      // ],
      items:
          _sehirler
              .map(
                (String sehir) =>
                    DropdownMenuItem(child: Text(sehir), value: sehir),
              )
              .toList(),
      onChanged: (value) {
        debugPrint('seçilen şehir $value');
        setState(() {
          _secilenSehir = value!;
        });
      },
    );
  }
}

class _PopupMenuKullanimi extends StatefulWidget {
  const _PopupMenuKullanimi({super.key});

  @override
  State<_PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<_PopupMenuKullanimi> {
  var _sehirler = ['Ankara', 'İzmir', 'Bursa', 'Van'];
  var _secilenSehir = 'Ankara';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: _secilenSehir,
      itemBuilder: (context) {
        return _sehirler.map((String sehir) {
          return PopupMenuItem(child: Text(sehir), value: sehir);
        }).toList();
      },
      onSelected: (value) {
        setState(() {
          _secilenSehir = value;
        });
      },
    );
  }
}
