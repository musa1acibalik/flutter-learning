// import 'package:flutter/material.dart';

// void main(List<String>args){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//  const MyApp({super.key});
//  final url='https://img.icons8.com/color/512/flutter.png';

//  Widget buildItem(String value,String label){
//   return Expanded(
//                           child:Column(
//                             children: [
//                               Text('1.5K',style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold
//                                 ),
//                                 ),
//                                 Text('Takipçi')
//                             ],
                    
//                         ),
//                     );

//  }

//  @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('Profil Sayfası'),
//         ),
//         body: Center(
//           child: Container(
//             width: 500,
//             color: const Color.fromARGB(255, 227, 217, 216),
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.transparent,
//                   backgroundImage: NetworkImage(url
//                   ),
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Text("Musa Acıbalık",
//                 style:TextStyle(
//                   color: Colors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold
                  
//                 ) ,
                
//                 ),
//                 Text("full stack developer",
//                 style:TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold
                  
//                 ) ,
//            ),
//            SizedBox(height: 24,
//            ),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         buildItem('1.5K', 'takipçi'),
//                         buildItem('1.2k', 'takip'),
//                         buildItem('35', 'Proje'),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 8,),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
                    
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Hakkımda',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,

//                         ),
                        
//                         ),
//                         SizedBox(height: 8,),
//                         Text('flutter öğrenerek mobil uygulama yapıyorum.python ve flutter ile hem backend hem de frontend çalışmaları yapıyroum'),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }