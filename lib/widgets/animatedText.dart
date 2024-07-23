import 'package:flutter/material.dart';
import 'dart:async';

class TypewriterText extends StatefulWidget {
  final List<String> texts;
  final TextStyle textStyle;
  final Duration typingSpeed;
  final Duration backtrackingSpeed;
  final Duration pauseDuration;

  const TypewriterText({
    Key? key,
    required this.texts,
    required this.textStyle,
    this.typingSpeed = const Duration(milliseconds: 100),
    this.backtrackingSpeed = const Duration(milliseconds: 50),
    this.pauseDuration = const Duration(milliseconds: 1000),
  }) : super(key: key);

  @override
  _TypewriterTextState createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  String _displayText = '';
  int _textIndex = 0;
  int _charIndex = 0;
  bool _isTyping = true;
  Timer? _typingTimer;
  Timer? _backtrackingTimer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _backtrackingTimer?.cancel();
    super.dispose();
  }

  void _startTyping() {
    _typingTimer = Timer.periodic(widget.typingSpeed, (timer) {
      if (_isTyping && mounted) {
        setState(() {
          if (_charIndex < widget.texts[_textIndex].length) {
            _displayText += widget.texts[_textIndex][_charIndex];
            _charIndex++;
          } else {
            _isTyping = false;
            timer.cancel();
            Future.delayed(widget.pauseDuration, _startBacktracking);
          }
        });
      }
    });
  }

  void _startBacktracking() {
    _backtrackingTimer = Timer.periodic(widget.backtrackingSpeed, (timer) {
      if (mounted) {
        setState(() {
          if (_charIndex > 0) {
            _charIndex--;
            _displayText = _displayText.substring(0, _charIndex);
          } else {
            _isTyping = true;
            _textIndex = (_textIndex + 1) % widget.texts.length;
            timer.cancel();
            _startTyping();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.textStyle,
    );
  }
}
