import 'package:flutter/material.dart';

class ViewgradePage extends StatefulWidget {
  const ViewgradePage({super.key});

  @override
  State<ViewgradePage> createState() => _ViewgradePageState();
}

class _ViewgradePageState extends State<ViewgradePage> {
 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grades',
        ),
      ),
      body: ListView(
        children: const [
          GradeCard(),
          GradeCard(),
          GradeCard(),
          GradeCard(),
          GradeCard(),
        ],
      ),
    );
  }
}

class GradeCard extends StatefulWidget {
  const GradeCard({super.key});

  @override
  State<GradeCard> createState() => _GradeCardState();
}

class _GradeCardState extends State<GradeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.blue[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Subject 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Divider(
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.black54,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Prelim',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Midterm',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Pre-Final',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Finals',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  '90',
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '90',
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '90',
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '90',
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.black54,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Final Grade',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200.0,
                ),
                Text(
                  '90',
                ),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
