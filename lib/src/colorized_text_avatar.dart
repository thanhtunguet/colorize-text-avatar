import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';

class TextAvatar extends StatelessWidget {
  final Shape? shape;
  final Color? backgroundColor;
  final Color? textColor;
  final double? size;
  final String? text;
  final double? fontSize;
  final int? numberLetters;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final bool? upperCase;

  const TextAvatar({
    Key? key,
    @required this.text,
    this.textColor,
    this.backgroundColor,
    this.shape,
    this.numberLetters,
    this.size,
    this.fontWeight = FontWeight.bold,
    this.fontFamily,
    this.fontSize = 16,
    this.upperCase = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shape resolvedShape = shape ?? Shape.Rectangle;
    final double resolvedSize = (size == null || size! < 32.0) ? 48.0 : size!;
    final Color resolvedBackgroundColor =
        backgroundColor ?? _colorBackgroundConfig();
    final Color resolvedTextColor = _colorTextConfig();
    return _textDisplay(
      resolvedShape: resolvedShape,
      resolvedSize: resolvedSize,
      resolvedBackgroundColor: resolvedBackgroundColor,
      resolvedTextColor: resolvedTextColor,
    );
  }

  Color _colorBackgroundConfig() {
    if (RegExp(r'[A-Z]|').hasMatch(_textConfiguration())) {
      return colorData[_textConfiguration()[0].toLowerCase().toString()] ??
          Colors.grey;
    }
    return Colors.grey;
  }

  Color _colorTextConfig() {
    if (textColor == null)
      return Colors.white;
    else
      return textColor!;
  }

  String _toString({String? value}) {
    return String.fromCharCodes(
      value!.runes.toList(),
    );
  }

  String _textConfiguration() {
    var newText = text == null ? '?' : _toString(value: text);
    newText = upperCase! ? newText.toUpperCase() : newText;
    var arrayLeeters = newText.trim().split(' ');

    if (arrayLeeters.length > 1 && arrayLeeters.length == numberLetters) {
      return '${arrayLeeters[0][0].trim()}${arrayLeeters[1][0].trim()}';
    }

    return '${newText[0]}';
  }

  Widget _buildText(Color resolvedTextColor) {
    return Text(
      _textConfiguration(),
      style: TextStyle(
        color: resolvedTextColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }

  _buildTextType(Shape resolvedShape, double resolvedSize) {
    switch (resolvedShape) {
      case Shape.Rectangle:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        );
      case Shape.Circular:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(resolvedSize / 2),
        );
      case Shape.None:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        );
      default:
        {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(resolvedSize / 2),
          );
        }
    }
  }

  Widget _textDisplay({
    required Shape resolvedShape,
    required double resolvedSize,
    required Color resolvedBackgroundColor,
    required Color resolvedTextColor,
  }) {
    return Container(
      child: Material(
        shape: _buildTextType(resolvedShape, resolvedSize),
        color: resolvedBackgroundColor,
        child: Container(
          height: resolvedSize,
          width: resolvedSize,
          child: Center(
            child: _buildText(resolvedTextColor),
          ),
        ),
      ),
    );
  }
}
