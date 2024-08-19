class RecentEntry {
  final String name;
  final double value;
  final String unit;
  final String status;
  final List<String> relatedConditions;
  final DateTime date;

  RecentEntry({
    required this.name,
    required this.value,
    required this.unit,
    required this.status,
    required this.relatedConditions,
    required this.date,
  });

  factory RecentEntry.fromJson(Map<String, dynamic> json) {
    return RecentEntry(
      name: json['name'],
      value: json['value'].toDouble(),
      unit: json['unit'],
      status: json['status'],
      relatedConditions: List<String>.from(json['related_conditions']),
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value,
      'unit': unit,
      'status': status,
      'related_conditions': relatedConditions,
      'date': date.toIso8601String(),
    };
  }
}
