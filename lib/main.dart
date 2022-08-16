import 'package:ugrp/screen/home_screen.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ugrp/database/drift_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}