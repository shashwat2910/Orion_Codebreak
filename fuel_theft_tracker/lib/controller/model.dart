class DBModel {
  final String actualDistance;
  final String expectedRange;
  final String fuelAdded;

  DBModel({
    required this.actualDistance,
    required this.expectedRange,
    required this.fuelAdded,
  });

  factory DBModel.fromMap(Map<String, dynamic> data) {
    return DBModel(
      actualDistance: data['actualDistance'] ?? '',
      expectedRange: data['expectedRange'] ?? '',
      fuelAdded: data['fuelAdded'] ?? '',
    );
  }
}
