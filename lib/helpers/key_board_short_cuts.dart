import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:new_keyboard_shortcuts/keyboard_shortcuts.dart';

class KeyBoardShortCuts extends StatelessWidget {
  final Widget child;
  const KeyBoardShortCuts({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return KeyBoardShortcuts(
      keysToPress: {LogicalKeyboardKey.controlLeft, LogicalKeyboardKey.keyT},
      onKeysPressed: () => context.goNamed("test-two"),
      child: KeyBoardShortcuts(
        keysToPress: {LogicalKeyboardKey.controlLeft, LogicalKeyboardKey.keyE},
        onKeysPressed: () => context.goNamed("employee"),
        child: KeyBoardShortcuts(
          keysToPress: {LogicalKeyboardKey.controlLeft, LogicalKeyboardKey.keyH},
          onKeysPressed: () => context.goNamed("home"),
          child: child,
        ),
      ),
    );
  }
}
