import 'dart:convert';
import 'package:dashboardtask/src/models/biomarkerenteriesmodel.dart';
import 'package:dashboardtask/src/models/functionsmodel.dart';
import 'package:dashboardtask/src/models/indicatormodel.dart';
import 'package:flutter/services.dart';

class DashboardController {
  Future<Indicators> fetchIndicators() async {
    final jsonString = await rootBundle.loadString('assets/dasboard.json');
    final jsonData = json.decode(jsonString);
    return Indicators.fromJson(jsonData['dashboard']['indicators']);
  }

  Future<List<RecentEntry>> fetchRecentEntries() async {
    final jsonString = await rootBundle.loadString('assets/dasboard.json');
    final jsonData = json.decode(jsonString);
    final recentEntriesJson =
        jsonData['dashboard']['biomarkers']['recent_entries'] as List;
    return recentEntriesJson.map((json) => RecentEntry.fromJson(json)).toList();
  }

  Future<List<FunctionData>> fetchFunctions() async {
    final jsonString = await rootBundle.loadString('assets/dasboard.json');
    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    final functionsList = (jsonMap['dashboard']['functions'] as List<dynamic>)
        .map((item) => FunctionData.fromJson(item as Map<String, dynamic>))
        .toList();
    return functionsList;
  }
}
