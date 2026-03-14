import 'package:flutter/material.dart';

class TextFieldKullanimi extends StatefulWidget {
  const TextFieldKullanimi({super.key});

  @override
  State<TextFieldKullanimi> createState() => _TextFieldKullanimiState();
}

class _TextFieldKullanimiState extends State<TextFieldKullanimi> {
  // String deger = "";
  int _maxLine = 1;
  late TextEditingController _emailController;
  late FocusNode _emailFocusNode;
  @override
  void initState() {
    super.initState();

    _emailFocusNode = FocusNode();
    _emailFocusNode.addListener(() {
      setState(() {
        _maxLine = _emailFocusNode.hasFocus ? 3 : 1;
      });
    });

    _emailController = TextEditingController(text: "ilk durum");
    _emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("textfieldkullanimi")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _emailController.clear();
              },
              child: Text("sıfırla"),
            ),
            TextField(
              focusNode: _emailFocusNode,
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.search,
              maxLength: 50,
              maxLines: _maxLine,
              cursorColor: Colors.amber,
              readOnly: false,
              onChanged: (value) {
                // debugPrint(value);
                // setState(() {
                //   deger = value;
                // });
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
            SizedBox(height: 8),
            Text(_emailController.text, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
