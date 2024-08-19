class Indicators {
  final List<String> texts;

  Indicators({required this.texts});

  factory Indicators.fromJson(Map<String, dynamic> json) {
    var textsFromJson = json['texts'] as List;
    List<String> textsList =
        textsFromJson.map((text) => text as String).toList();

    return Indicators(
      texts: textsList,
    );
  }
}
