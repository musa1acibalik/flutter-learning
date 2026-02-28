// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const TestApp());
// }

// class TestApp extends StatelessWidget {
//   const TestApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var container = Container(
//           color: Colors.pink,
//           height: 200,

//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               myContainer(),
//               myContainer(),
//             ],
//           ),
//         );
//     return MaterialApp(
//       home: Scaffold(
//         appBar: myAppBar(),
//         body: Row(
//           children: [
//             Flexible(
//               child: Container(
//                 color:Colors.amber,
//                 width: 150,
//                 height: 150,
//               ),
//             ),
//             Container(
//               color:const Color.fromARGB(255, 255, 32, 7),
//               width: 150,
//               height: 150,
//             ),
//           ]

//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             debugPrint("butona tıklandı");
//           },
//           backgroundColor: Colors.black,
//           child: const Icon(Icons.add_a_photo_outlined),
//         ),
//       ),
//     );
//   }

//   List<Widget> get expendedAnlatimi {
//     return [
//           Expanded(
//             flex: 1,
//             child: Container(
//               width:200,
//               height:150,
//               color:const Color.fromARGB(255, 193, 244, 54)
//             ),
//           ),
//            Expanded(
//             flex: 1,
//              child: Container(
//               width:200,
//               height:150,
//               color:Colors.red
//                          ),
//            ),
//            Expanded(
//             flex: 1,
//              child: Container(
//               width:200,
//               height:150,
//               color:const Color.fromARGB(255, 92, 54, 244)
//                          ),
//            ),
//         ];
//   }

//   AppBar myAppBar() {
//     return AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Test App'),
//       );
//   }

//   Column myMainContainer(Container container) {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           container,
//           container,
//         ],
//       );
//   }

//   Container myContainer() {
//     return Container(
//         color: Colors.amber,
//         height: 100,
//         width: 100,
//         margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         padding: EdgeInsets.all(8),
//         alignment: Alignment.center, // ← buraya geldi
//         child: Container(
//           width:100,
//           alignment: Alignment.center,
//           height: 100,

//           color: Colors.deepOrange,

//           child: const Text('merhaba dunya'),
//         ),
//       );
//   }
// }
