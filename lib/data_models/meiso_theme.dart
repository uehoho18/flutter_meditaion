const int THEME_ID_SILENCE = 0;
const int THEME_ID_CAVE = 1;
const int THEME_ID_SPRING = 2;
const int THEME_ID_SUMMER = 3;
const int THEME_ID_AUTUMN = 4;
const int THEME_ID_STREAM = 5;
const int THEME_ID_WIND_BELLS = 6;
const int THEME_ID_BONFIRE = 7;

class MeisoTheme {
  final int themeId;
  final String themeName;
  final String ImagePath;
  final String soundPath;

//<editor-fold desc="Data Methods">
  const MeisoTheme({
    required this.themeId,
    required this.themeName,
    required this.ImagePath,
    required this.soundPath,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MeisoTheme &&
          runtimeType == other.runtimeType &&
          themeId == other.themeId &&
          themeName == other.themeName &&
          ImagePath == other.ImagePath &&
          soundPath == other.soundPath);

  @override
  int get hashCode =>
      themeId.hashCode ^
      themeName.hashCode ^
      ImagePath.hashCode ^
      soundPath.hashCode;

  @override
  String toString() {
    return 'MeisoTheme{' +
        ' themeId: $themeId,' +
        ' themeName: $themeName,' +
        ' ImagePath: $ImagePath,' +
        ' soundPath: $soundPath,' +
        '}';
  }

  MeisoTheme copyWith({
    int? themeId,
    String? themeName,
    String? ImagePath,
    String? soundPath,
  }) {
    return MeisoTheme(
      themeId: themeId ?? this.themeId,
      themeName: themeName ?? this.themeName,
      ImagePath: ImagePath ?? this.ImagePath,
      soundPath: soundPath ?? this.soundPath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'themeId': this.themeId,
      'themeName': this.themeName,
      'ImagePath': this.ImagePath,
      'soundPath': this.soundPath,
    };
  }

  factory MeisoTheme.fromMap(Map<String, dynamic> map) {
    return MeisoTheme(
      themeId: map['themeId'] as int,
      themeName: map['themeName'] as String,
      ImagePath: map['ImagePath'] as String,
      soundPath: map['soundPath'] as String,
    );
  }

//</editor-fold>
}
