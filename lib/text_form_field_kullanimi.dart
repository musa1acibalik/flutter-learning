import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  final _formkey = GlobalKey<FormState>();
  String _username = '', _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFormFieldKullanimi")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.disabled,
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.length < 6) {
                    return 'user name en az 6 karakter olmalı';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username ',
                  hintText: 'username giriniz',
                ),
                onSaved: (newValue) {
                  _username = newValue!;
                },
              ),
              SizedBox(height: 6),
              TextFormField(
                keyboardType: TextInputType.emailAddress,

                validator: (value) {
                  if (!EmailValidator.validate(value!)) {
                    return 'geçerli bir mail giriniz';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  _email = newValue!;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'e-mail ',
                  hintText: 'e-mail giriniz',
                ),
              ),
              SizedBox(height: 6),
              TextFormField(
                keyboardType: TextInputType.emailAddress,

                validator: (value) {
                  if (value!.length < 6) {
                    return 'karakter sayısı 6 dan fazla olmalı';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  _password != newValue;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'şifre ',
                  hintText: 'şifre giriniz',
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(
                    onPressed: () {
                      _formkey.currentState!.reset();
                    },
                    child: Text("temizle"),
                  ),
                  SizedBox(width: 6),
                  ElevatedButton(
                    onPressed: () {
                      bool sonuc = _formkey.currentState!.validate();
                      if (sonuc) {
                        _formkey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('username: $_username email:$_email'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('tüm veriler validate olmalı'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Text("kaydet"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
