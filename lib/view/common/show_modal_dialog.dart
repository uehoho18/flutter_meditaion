import 'package:flutter/material.dart';
import 'package:flutter_meditaion/view/styles.dart';

showModalDialog({
  required BuildContext context,
  required Widget dialogWidget,
  required bool isSccrollable,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) => dialogWidget,
    isScrollControlled: isSccrollable,
    backgroundColor: dialogBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24),
      ),
    ),
  );
}
