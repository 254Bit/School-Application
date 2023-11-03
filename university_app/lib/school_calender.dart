//  The Calendar will allow parents and teachers to keep track of upcoming events, real time,
//  manage schedule views, and even handle special events.
//  Be able to recieve reminders/notifications/cancellations/changes of upcoming events
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UPCOMING SCHOOL EVENTS')),
      
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('School Calendar Programs -${today.toString().split("")[0]}'),
        ),
        Container(
          child: TableCalendar(
            rowHeight: 42,
            availableGestures: AvailableGestures.all,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            focusedDay: today,
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 1, 1),
            selectedDayPredicate: (day)=>isSameDay(day, today),
            onDaySelected: _onDaySelected,
          ),
        )
      ],
    );
  }
}
