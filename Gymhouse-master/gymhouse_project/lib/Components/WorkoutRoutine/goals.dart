// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

// class goals extends StatefulWidget {
//   const goals({super.key});

//   @override
//   State<goals> createState() => _goalsState();
// }

// class _goalsState extends State<goals> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 80.0, // mengatur ketinggian
//         title: Text('Goals',
//             style: TextStyle(
//               color: const Color.fromARGB(255, 0, 0, 0),
//               fontSize: 25.0,
//             )),
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: const Color.fromARGB(255, 0, 0, 0),
//           ),
//           iconSize: 25.0,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Container(
//         height: 600.0, // Set the desired height
//         child: SfCalendar(
//           view: CalendarView.month,
//           initialDisplayDate: DateTime.now(),
//           cellBorderColor: const Color.fromARGB(255, 255, 255, 255),
//         ),
//       ),
//       floatingActionButton: Container(
//         width: 200.0, // Set the desired width
//         height: 70.0, // Set the desired height
//         margin: EdgeInsets.symmetric(vertical: 60.0),
//         child: FloatingActionButton(
//           child: Text(
//             'Done',
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 25.0, // Set the desired font size
//             ),
//           ),
//           backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//           onPressed: () {},
//           shape: RoundedRectangleBorder(
//             borderRadius:
//                 BorderRadius.circular(8.0), // Mengubah sudut menjadi melengkung
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

// class EventEditingPage extends StatelessWidget {
//   const EventEditingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
