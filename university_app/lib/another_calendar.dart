import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SchoolCalender extends StatefulWidget {
  const SchoolCalender({super.key});

  @override
  State<SchoolCalender> createState() => _SchoolCalenderState();
}

class _SchoolCalenderState extends State<SchoolCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('School Calender')),
      body: Container(
        child: SfCalendar(
          view: CalendarView.month,
          //firstDayOfWeek: 7,
          //initialDisplayDate: DateTime(2023, 11, 3, 9, 00),
          monthViewSettings: const MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
          dataSource: MeetingDataSource(_getMeetings()),
        ),
      ),
    );
  }

  List<Meeting> _getMeetings() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    // final Subject = ' ';
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 5));
    meetings.add(Meeting(
        'Meetings', 
        startTime, 
        endTime, 
        Color.fromARGB(0, 0, 0, 0), 
        false),
        
        );
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  // @override
  // DateTime getSubject(int index) {
  //   return appointments![index].eventName;
  // }

  // @override
  // DateTime getColor(int index) {
  //   return appointments![index].background;
  // }

  // @override
  // DateTime isAllDay(int index) {
  //   return appointments![index].isAllDay;
  // }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
