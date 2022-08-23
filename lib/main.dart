import 'package:day006_ui_clone/feed_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.85),
        appBar: AppBar(
          title: const Text('UI Clone'),
        ),
        body: Column(children: [
          Container(
            color: Colors.teal,
            height: 250,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Row(
                  children: [
                    for (int i = 0; i <= 3; i++) ...[
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        margin: const EdgeInsets.only(left: 20),
                        height: 180,
                        width: 130,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          const FeedItem(
            title: 'Male',
            description: 'Person is Male',
          ),
          const FeedItem(
            title: 'Female',
            description: 'Person is Female',
            icon: Icons.female,
          ),
        ]),
      ),
    );
  }
}
