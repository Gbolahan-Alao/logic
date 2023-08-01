// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Print API Response'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               fetchDataAndPrint(); // Call the function here
//             },
//             child: Text('Fetch Data and Print'),
//           ),
//         ),
//       ),
//     );
//   }
// }


// void fetchDataAndPrint() async {
//   final url = 'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=db7a7949&app_key=c3831b1104d9aca46b5ed3af522f3170&&content-type=application/json';

//   final response = await http.get(Uri.parse(url));

 
//   if (response.statusCode == 200) {
    
//     final jsonData = json.decode(response.body);

    
//     print(jsonData);
//   } else {
    
//     print('Request failed with status: ${response.statusCode}');
//     print('Error message: ${response.body}');
//   }
// }


import 'package:flutter/material.dart';
import 'package:logic/my_app.dart';

void main(){
  runApp(const MyApp() );
}
