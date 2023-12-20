class UserSettings {
  final bool isSkipIntroScreen;
  final int levelId;
  final int themeId;
  final int timeMinuets;

//<editor-fold desc="Data Methods">
  const UserSettings({
    required this.isSkipIntroScreen,
    required this.levelId,
    required this.themeId,
    required this.timeMinuets,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSettings &&
          runtimeType == other.runtimeType &&
          isSkipIntroScreen == other.isSkipIntroScreen &&
          levelId == other.levelId &&
          themeId == other.themeId &&
          timeMinuets == other.timeMinuets);

  @override
  int get hashCode =>
      isSkipIntroScreen.hashCode ^
      levelId.hashCode ^
      themeId.hashCode ^
      timeMinuets.hashCode;

  @override
  String toString() {
    return 'UserSettings{ isSkipIntroScreen: $isSkipIntroScreen, levelId: $levelId, themeId: $themeId, timeMinuets: $timeMinuets,}';
  }

  UserSettings copyWith({
    bool? isSkipIntroScreen,
    int? levelId,
    int? themeId,
    int? timeMinuets,
  }) {
    return UserSettings(
      isSkipIntroScreen: isSkipIntroScreen ?? this.isSkipIntroScreen,
      levelId: levelId ?? this.levelId,
      themeId: themeId ?? this.themeId,
      timeMinuets: timeMinuets ?? this.timeMinuets,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isSkipIntroScreen': isSkipIntroScreen,
      'levelId': this.levelId,
      'themeId': this.themeId,
      'timeMinuets': this.timeMinuets,
    };
  }

  factory UserSettings.fromMap(Map<String, dynamic> map) {
    return UserSettings(
      isSkipIntroScreen: map['isSkipIntroScreen'] as bool,
      levelId: map['levelId'] as int,
      themeId: map['themeId'] as int,
      timeMinuets: map['timeMinuets'] as int,
    );
  }

//</editor-fold>
}
