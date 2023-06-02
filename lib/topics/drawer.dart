import 'package:quizzier/services/models.dart';
import 'package:flutter/material.dart';

class TopicDrawer extends StatelessWidget {
  const TopicDrawer({super.key, required Topic topic});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int idx) {
            Topic topic = Topic();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    topic.title,
                    // textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
                QuizList(topic: topic)
              ],
            );
          },
          separatorBuilder: (BuildContext context, int idx) => const Divider()),
    );
  }
}

class QuizList extends StatelessWidget {
  final Topic topic;
  const QuizList({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 4,
          margin: const EdgeInsets.all(4),
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  topic.titleCourse,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: Text(
                  topic.courseDescription,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
