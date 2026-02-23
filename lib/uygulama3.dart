// import 'package:flutter/material.dart';
// import 'package:flutter_calismalari/buton_turleri.dart';
// import 'package:flutter_calismalari/dropdown_popup.dart';
// import 'package:flutter_calismalari/resim_videgetlari.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, //köşedeki debug yazısını kaldırır
//       theme: ThemeData(
//         textTheme: TextTheme(
//           labelLarge: TextStyle(color: Theme.of(context).colorScheme.primary),
//         ), // kullanıcının kullandığı temaya göre renk seçe
//         primarySwatch: Colors.blue, //kullanıcın kullandığı temayı burda seçtik
//         useMaterial3: false,
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: Colors.black,
//         ),
//       ),

//       home: DropdownPopup(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var _sayac = 0;

//   void _sayacArttir() {
//     setState(() {});
//     _sayac++;
//     debugPrint('şuanki sayaç durumu $_sayac');
//   }

//   void _sayacAzalt() {
//     setState(() {});
//     _sayac--;
//     debugPrint('şuanki sayaç durumu $_sayac');
//   }

//   void _sayacReset() {
//     setState(() {});
//     _sayac = 0;
//     debugPrint('şuanki sayaç durumu $_sayac');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: Text("Renk Seçimi")),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "butona basılma miktarı:",
//               style: Theme.of(context).textTheme.labelLarge,
//             ),
//             SizedBox(height: 4),
//             Text(
//               _sayac.toString(),
//               style: Theme.of(context).textTheme.displayMedium?.copyWith(
//                 color: _sayac < 0 ? Colors.red : Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               _sayacArttir();
//             },
//             child: Icon(Icons.add),
//           ),
//           SizedBox(height: 4),
//           FloatingActionButton(
//             onPressed: () {
//               _sayacAzalt();
//             },
//             child: Icon(Icons.remove),
//           ),
//           SizedBox(height: 4),
//           FloatingActionButton(
//             onPressed: () {
//               _sayacReset();
//             },
//             child: Icon(Icons.abc),
//           ),
//         ],
//       ),
//     );
//   }
// }
