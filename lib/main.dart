

// import 'package:flutter/material.dart';
// import 'package:pages/new/constants.dart';
// import 'package:pages/new/footer_examples.dart';
// import 'package:pages/new/header_examples.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Onboarding Example Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: background,
//         centerTitle: true,
//         title: const Text(
//           'Onboarding Example Demo...',
//           style: TextStyle(color: Colors.white, fontSize: 20.0),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child:
//             Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
//           Card(
//             margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 32.0),
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                     child: Text(
//                       'Header Indicators',
//                       style: TextStyle(fontWeight: FontWeight.normal),
//                     ),
//                   ),
//                   Wrap(
//                     spacing: 16.0, // gap between adjacent chips
//                     runSpacing: 16.0, // gap between lines
//                     children: [
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const LineHeaderIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Header Line Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const TriangleHeaderIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Header Triangle Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const CircleHeaderIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Header Circle Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all<Color>(background),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const SquareHeaderIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Header Square Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Card(
//             margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 32.0),
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                     child: Text(
//                       'Footer Indicators',
//                       style: TextStyle(fontWeight: FontWeight.normal),
//                     ),
//                   ),
//                   Wrap(
//                     spacing: 16.0, // gap between adjacent chips
//                     runSpacing: 16.0, // gap between lines
//                     children: [
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const LineFooterIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Footer Line Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const TriangleFooterIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Footer Triangle Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           //Route to string multiline
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const CircleFooterIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Footer Circle Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all<Color>(
//                             background,
//                           ),
//                         ),
//                         onPressed: () {
//                           //Route to string multiline
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   const SquareFooterIndicator(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Footer Square Indicator',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:pages/person/person2.dart';
import 'package:pages/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}

