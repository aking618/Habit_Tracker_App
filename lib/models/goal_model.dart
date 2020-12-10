import 'package:flutter/cupertino.dart';

class Goal {
  final String title;
  final int lengthInDays;
  int currentStreak;
  bool isConsistent;

  Goal({@required this.title, @required this.lengthInDays});

  void updateCurrentStreak() {
    currentStreak += 1;
  }

  void changeConsistency() {
    isConsistent = !isConsistent;
  }

  void resetStreak() {
    if (!isConsistent) {
      currentStreak = 0;
    }
  }
}
