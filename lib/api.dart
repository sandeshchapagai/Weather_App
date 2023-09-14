import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Api({Key? key});

  @override
  State<Api> createState() => _HomeState();
}

class _HomeState extends State<Api> {
  Map<String, dynamic> weatherData = {
    // 'main': {'temp': 0.0}, // Default value for 'temp'
    // 'clouds': {'all': 0}, // Default value for 'clouds'
  };

  @override
  Widget build(BuildContext context) {
    final main = weatherData['main']?['temp'] ?? 0.0;
    final description = weatherData['clouds']?['all'] ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Api call'),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchWeather,
      ),
      body: Container(
        color: Colors.white54,
        child: ListView(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Text('1'),
              ),
              title: Text(main.toString()),
              subtitle: Text(description.toString()),
            )
          ],
        ),
      ),
    );
  }

  void fetchWeather() async {
    print('API Fetching........');
    const apiKey = '295db62aa69ddbe62f19c22289a99cf9'; // Replace with your OpenWeatherMap API key
    const city = 'pokhara';
    const url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

      setState(() {
        weatherData = json;
      });
  }
}
