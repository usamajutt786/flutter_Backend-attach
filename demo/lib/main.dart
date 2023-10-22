import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  print("ok ha boss");
                  final response =
                      await http.get(Uri.parse('https://localhost:3000'));

                  if (response.statusCode == 200) {
                    // If the server returns a 200 OK response, parse the response body
                    print(response.body);
                    print("Status code");
                  } else {
                    // If the server did not return a 200 OK response, throw an exception
                    throw Exception('Failed to load data');
                  }
                },
                child: Text("Text print"))
          ],
        ),
      ),
    );
  }
}
