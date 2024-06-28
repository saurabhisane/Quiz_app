import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';


void main() {
  runApp(const Quiz());
}
































// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:ui';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor:Color.fromARGB(100, 14, 165, 232),
//           title: Text(
//             "Quiz Game",
//             style: TextStyle(
//                 color: Colors.white,
//                fontSize: 35,
//             ),
//           ),
//         ),
//         // backgroundColor: Colors.purple,
//         body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(
//             colors: [
//               Colors.lightBlue,
//               Colors.lightBlueAccent,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           )),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(28.0),
//                 child: Image.asset(
//                   "asset/images/quiz-logo.png",
//                   height: 500,
//                   width: 300,
//                 ),
//               ),
//               const Center(
//                 child: Text(
//                   "Learn Flutter the fun Way!",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 22,
//                     fontFamily: AutofillHints.birthdayMonth,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   width: 200,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(elevation: 2),
//                     onPressed: () {},
//                     child: Text('Start Quiz'),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});
// //
// //   final String title;
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
// //
// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //
// //         child: Column(
// //
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }
