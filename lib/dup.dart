// import 'package:flutter/material.dart';
// import 'Services/ProductService.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Mobile World'), centerTitle: true),
//         body: FutureBuilder(
//             future: ProductService().getProduct(),
//             initialData: null,
//             builder: (context, result) {
//               if (result.hasData) {
//                 return ListView.builder(
//                   itemCount: result.data?.products?.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         border: Border.all(color: Colors.blueGrey, width: 6),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Column(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: NetworkImage(result
//                                               .data?.products?[index].thumbnail
//                                               .toString() ??
//                                           ''),
//                                       fit: BoxFit.cover)),
//                               height: 200,
//                               width: double.infinity,
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 10),
//                                 child: Align(
//                                   alignment: Alignment.topCenter,
//                                   child: Text(
//                                     result.data?.products?[index].title
//                                             .toString() ??
//                                         '',
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               width: double.infinity,
//                               color: Colors.blueGrey,
//                               child: Text(
//                                 result.data?.products?[index].price
//                                         .toString() ??
//                                     '',
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               } else {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             }
//             )
//             )
//             ;
//   }
// }
