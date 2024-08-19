class FunctionData {
  final String name;
  final int totalBiomarkers;
  final int registeredBiomarkers;

  FunctionData({
    required this.name,
    required this.totalBiomarkers,
    required this.registeredBiomarkers,
  });

  factory FunctionData.fromJson(Map<String, dynamic> json) {
    return FunctionData(
      name: json['name'] as String,
      totalBiomarkers: json['total_biomarkers'] as int,
      registeredBiomarkers: json['registered_biomarkers'] as int,
    );
  }
}
