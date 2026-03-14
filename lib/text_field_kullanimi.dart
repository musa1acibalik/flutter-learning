import 'package:flutter/material.dart';

class TextFieldKullanimi extends StatefulWidget {
  const TextFieldKullanimi({super.key});

  @override
  State<TextFieldKullanimi> createState() => _TextFieldKullanimiState();
}

class _TextFieldKullanimiState extends State<TextFieldKullanimi> {
  String deger = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("textfieldkullanimi")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.search,
              maxLength: 50,
              maxLines: 1,
              cursorColor: Colors.amber,
              readOnly: false,
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  deger = value;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.clear),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "email giriniz",
                labelText: "e-mail",
                hintStyle: TextStyle(color: Colors.orange),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
              ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text(deger),
          ],
        ),
      ),
    );
  }
}
