import 'package:dashboardtask/src/controllers/dashboardcontroller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/biomarkerenteriesmodel.dart';
import '../models/functionsmodel.dart';
import '../models/indicatormodel.dart';

final dashboardControllerProvider = Provider((ref) => DashboardController());

final activeIndexProvider = StateProvider<int>((ref) => 1);

final indicatorsProvider = FutureProvider<Indicators>((ref) {
  final controller = ref.watch(dashboardControllerProvider);
  return controller.fetchIndicators();
});

final recentEntriesProvider = FutureProvider<List<RecentEntry>>((ref) {
  final controller = ref.watch(dashboardControllerProvider);
  return controller.fetchRecentEntries();
});

final functionsProvider = FutureProvider<List<FunctionData>>((ref) {
  final controller = ref.watch(dashboardControllerProvider);
  return controller.fetchFunctions();
});
