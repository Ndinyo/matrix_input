library matrix_input;

import 'declarations.dart';
import 'package:flutter/material.dart';

class MatrixInput extends StatelessWidget {
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;

  final TextEditingController? matrixController;
  final bool enabled;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final Color? cursorColor;
  final int? maxLines;
  final int? minLines;
  final TextDirection? textDirection;
  final InputDecoration? inputDecoration;
  final TextStyle? style;
  final Color matrixBorderColor;
  final bool obscureText;
  final void Function(String)? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool autofocus;
  final bool autocorrect;
  final bool canRequestFocus;
  final Clip clipBehavior;
  final String obscuringCharacter;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final bool onTapAlwaysCalled;
  final String? restorationId;
  final bool scribbleEnabled;
  final bool? showCursor;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;

  const MatrixInput(
      {Key? key,
      this.width,
      this.height,
      this.alignment,
      this.padding,
      this.color,
      this.decoration,
      this.foregroundDecoration,
      this.matrixController,
      this.enabled = true,
      this.readOnly = false,
      this.textInputAction,
      this.maxLength,
      this.keyboardType,
      this.textAlign = TextAlign.start,
      this.cursorColor,
      this.maxLines = 1,
      this.minLines,
      this.textDirection,
      this.inputDecoration = const InputDecoration(),
      this.matrixBorderColor = const Color(0xFF000000),
      this.style,
      this.obscureText = false,
      this.onChanged,
      this.onSubmitted,
      this.autofocus = false,
      this.autocorrect = true,
      this.canRequestFocus = true,
      this.clipBehavior = Clip.hardEdge,
      this.obscuringCharacter = '•',
      this.onEditingComplete,
      this.onTap,
      this.onTapOutside,
      this.onTapAlwaysCalled = false,
      this.restorationId,
      this.scribbleEnabled = true,
      this.showCursor,
      this.textCapitalization = TextCapitalization.none,
      this.textAlignVertical})
      : assert(maxLines == null || maxLines > 0),
        assert(minLines == null || minLines > 0),
        assert(
          (maxLines == null) || (minLines == null) || (maxLines >= minLines),
          "minLines can't be greater than maxLines",
        ),
        assert(maxLength == null ||
            maxLength == TextField.noMaxLength ||
            maxLength > 0),
        // Assert the following instead of setting it directly to avoid surprising the user by silently changing the value they set.
        assert(
          !identical(textInputAction, TextInputAction.newline) ||
              maxLines == 1 ||
              !identical(keyboardType, TextInputType.text),
          'Use keyboardType TextInputType.multiline when using TextInputAction.newline on a multiline TextField.',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: decoration,
      child: Theme(
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: matrixBorderColor, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: matrixBorderColor, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
        ),
        child: TextField(
          showCursor: showCursor,
          scribbleEnabled: scribbleEnabled,
          restorationId: restorationId,
          obscuringCharacter: obscuringCharacter,
          onEditingComplete: onEditingComplete,
          onTap: onTap,
          onTapAlwaysCalled: onTapAlwaysCalled,
          onTapOutside: onTapOutside,
          clipBehavior: clipBehavior,
          canRequestFocus: canRequestFocus,
          autocorrect: autocorrect,
          autofocus: autofocus,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          obscureText: obscureText,
          controller: matrixController,
          enabled: enabled,
          readOnly: readOnly,
          textInputAction: textInputAction,
          maxLength: maxLength,
          keyboardType: keyboardType,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          textCapitalization: textCapitalization,
          cursorColor: cursorColor,
          maxLines: maxLines,
          minLines: minLines,
          textDirection: textDirection,
          decoration: matrixDecoration,
          style: style,
        ),
      ),
    );
  }
}
