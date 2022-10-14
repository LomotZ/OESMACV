import 'package:flutter/material.dart';
import 'package:oesmacv/about.dart';
import 'package:oesmacv/balance.dart';
import 'package:oesmacv/class_schedule.dart';
import 'package:oesmacv/faqs.dart';
import 'package:oesmacv/feedback.dart';
import 'package:oesmacv/history_mis_vis.dart';
import 'package:oesmacv/view_grades.dart';
import 'home_screen.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Thomas Shelby'),
            accountEmail: const Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/ProfileEx.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            }),
          ),
          const Divider(
            color: Colors.lightBlue,
            height: 15,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          ListTile(
            leading: const Icon(Icons.grade),
            title: const Text('View Grades'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ViewgradePage()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: const Text('Class Schedule'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClassSchedule()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Balance'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Balance()),
              );
            }),
          ),
          const Divider(
            color: Colors.lightBlue,
            height: 15,
            thickness: 1,
            indent: 25,
            endIndent: 25,
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text('History, Mission & Vission'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HisMisVis()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Feedback'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FeedBack()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('FAQs'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FAQs()),
              );
            }),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: (() {
              const DialogExample();
            }),
          ),
        ],
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text('Sample Alert Dialog'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Yes'),
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'No'),
              child: const Text('No'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
