import 'package:ugrp/component/calendar.dart';
import 'package:ugrp/component/schedule_card.dart';
import 'package:ugrp/component/today_banner.dart';
import 'package:ugrp/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:ugrp/database/drift_database.dart';
import 'package:get_it/get_it.dart';
import 'package:ugrp/component/schedule_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Calendar(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              onDaySelected: onDaySelected,
            ),
            SizedBox(height: 8.0),
            TodayBanner(
              selectedDay: selectedDay,
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ScheduleCard(
                calory: 11,
                totaltime: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}