// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter DropDownButton',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
// // Initial Selected Value
//   String dropdownvalue = 'Item 1';
//
// // List of items in our dropdown menu
//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Geeksforgeeks"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 37,
//               decoration: BoxDecoration(
//                 color: Color(0xFFEEEEEE),
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.only(left: 15, right: 10),
//                 child: DropdownButton(
//                   // Initial Value
//                   value: dropdownvalue,
//
//                   // Down Arrow Icon
//                   icon: const Icon(
//                     Icons.keyboard_arrow_down,
//                     size: 30,
//                   ),
//                   alignment: Alignment.topRight,
//
//                   // Array list of items
//                   items: items.map((String items) {
//                     return DropdownMenuItem(
//                       value: items,
//                       // child: Text(items),
//                       child: Row(
//                         children: [
//                           Text(
//                             items,
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.bold),
//                           ),
//                           // SizedBox(
//                           //   // width: 190,
//                           //   width: width * .4,
//                           // )
//                         ],
//                       ),
//                     );
//                   }).toList(),
//                   // After selecting the desired option,it will
//                   // change button value to selected value
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       dropdownvalue = newValue!;
//                     });
//                   },
//                   isExpanded: true,
//                   underline: SizedBox(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownButton].

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});
  //Comment line
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
