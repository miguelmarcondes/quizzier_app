import 'package:flutter/material.dart';
import 'package:quizzier/shared/bottom_nav.dart';
import 'package:quizzier/topics/topic_item.dart';
import 'package:quizzier/services/models.dart';
import 'package:quizzier/topics/drawer.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Topics'),
      ),
      drawer: TopicDrawer(topic: Topic()),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        children: [TopicItem(topic: Topic())],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
