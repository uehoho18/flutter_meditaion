import 'package:flutter/material.dart';
import 'package:flutter_meditaion/data_models/user_settings.dart';
import 'package:flutter_meditaion/generated/models/managers/ad_manager.dart';
import 'package:flutter_meditaion/generated/models/managers/in_app_purchase_manager.dart';
import 'package:flutter_meditaion/generated/models/managers/sound_manager.dart';
import 'package:flutter_meditaion/generated/models/repositories/shared_prefs_repository.dart';
import 'package:flutter_meditaion/utils/functions.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel({
    required this.sharedPrefsRepository,
    required this.soundManager,
    required this.adManager,
    required this.inAppPurchaseManager,
  });

  final SharedPrefsRepository sharedPrefsRepository;
  final SoundManager soundManager;
  final AdManager adManager;
  final InAppPurchaseManager inAppPurchaseManager;

  UserSettings? userSettings;

  int remainingTimeSeconds = 0;
  String get remainingTimeString => convertTimeFormat(remainingTimeSeconds);

  skipIntro() {
    Future<void> skipIntro() async {
      await sharedPrefsRepository.skipIntro();
    }
  }

  Future<bool> isSkipIntroScreen() async {
    return await sharedPrefsRepository.isSkipIntroScreen();
  }

  Future<void> getUserSettings() async {
    userSettings = await sharedPrefsRepository.getUserSettings();
    remainingTimeSeconds = userSettings!.timeMinuets * 60;
    notifyListeners();
  }
}
