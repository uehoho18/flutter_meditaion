import 'package:flutter/material.dart';
import 'package:flutter_meditaion/generated/l10n.dart';

class SkipIntroDialog extends StatelessWidget {
  final VoidCallback onSkipped;

  const SkipIntroDialog({super.key, required this.onSkipped});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(S.of(context).skipIntroConfirm,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: onSkipped,
                child: Text(S.of(context).yes),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(S.of(context).no),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
