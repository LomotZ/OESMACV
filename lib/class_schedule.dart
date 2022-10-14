import 'package:flutter/material.dart';

class ClassSchedule extends StatefulWidget {
  const ClassSchedule({super.key});

  @override
  State<ClassSchedule> createState() => _ClassScheduleState();
}

class _ClassScheduleState extends State<ClassSchedule> {
  var WeekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Class Schedule',
        ),
      ),
      body: DropDownButton(),
    );
  }
}

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  var WeekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              items: WeekDays.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  WeekDays = value! as List<String>;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
