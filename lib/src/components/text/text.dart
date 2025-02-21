import 'package:equinox/equinox.dart';
import 'package:flutter/widgets.dart';
export 'package:equinox/src/components/text/text_params.dart';

/// This widget provides quick and easy access to Equinox's text styles. See the constructors for more info.
class EqText extends StatelessWidget {
  final TextTheme Function(EqThemeData) eqStyle;
  final TextState state;

  /// The text to display.
  ///
  /// This will be null if a [textSpan] is provided instead.
  final String data;

  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  final TextStyle style;

  /// {@macro flutter.painting.textPainter.strutStyle}
  final StrutStyle strutStyle;

  /// How the text should be aligned horizontally.
  final TextAlign textAlign;

  /// The directionality of the text.
  ///
  /// This decides how [textAlign] values like [TextAlign.start] and
  /// [TextAlign.end] are interpreted.
  ///
  /// This is also used to disambiguate how to render bidirectional text. For
  /// example, if the [data] is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] context the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// Defaults to the ambient [Directionality], if any.
  final TextDirection textDirection;

  /// Used to select a font when the same Unicode character can
  /// be rendered differently, depending on the locale.
  ///
  /// It's rarely necessary to set this property. By default its value
  /// is inherited from the enclosing app with `Localizations.localeOf(context)`.
  ///
  /// See [RenderParagraph.locale] for more information.
  final Locale locale;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
  final bool softWrap;

  /// How visual overflow should be handled.
  final TextOverflow overflow;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// The value given to the constructor as textScaleFactor. If null, will
  /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
  /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
  final double textScaleFactor;

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be truncated according
  /// to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  final int maxLines;

  /// An alternative semantics label for this text.
  ///
  /// If present, the semantics of this widget will contain this value instead
  /// of the actual text. This will overwrite any of the semantics labels applied
  /// directly to the [TextSpan]s.
  ///
  /// This is useful for replacing abbreviations or shorthands with the full
  /// text value:
  ///
  /// ```dart
  /// Text(r'$$', semanticsLabel: 'Double dollars')
  /// ```
  final String semanticsLabel;

  const EqText(
    this.data, {
    Key key,
    this.state,
    this.style,
    @required this.eqStyle,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.overflow,
  }) : super(key: key);

  factory EqText.heading1(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading1,
    );
  }

  factory EqText.heading2(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading2,
    );
  }
  factory EqText.heading3(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading3,
    );
  }
  factory EqText.heading4(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading4,
    );
  }
  factory EqText.heading5(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading5,
    );
  }
  factory EqText.heading6(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.heading6,
    );
  }
  factory EqText.paragraph1(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.paragraph1,
    );
  }
  factory EqText.paragraph2(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.paragraph2,
    );
  }
  factory EqText.subtitle1(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.subtitle1,
    );
  }
  factory EqText.subtitle2(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.subtitle2,
    );
  }
  factory EqText.label(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.label,
    );
  }
  factory EqText.caption1(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.caption1,
    );
  }
  factory EqText.caption2(
    String data, {
    TextState state,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextOverflow overflow,
  }) {
    return EqText(
      data,
      state: state,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      overflow: overflow,
      key: key,
      eqStyle: (theme) => theme.caption2,
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = EqTheme.of(context);
    TextStyle style = this.eqStyle(theme).textStyle;

    if (this.state != null) {
      switch (this.state) {
        case TextState.basic:
          style = style.copyWith(color: theme.textBasicColor);
          break;
        case TextState.alternate:
          style = style.copyWith(color: theme.textAlternateColor);
          break;
        case TextState.disabled:
          style = style.copyWith(color: theme.textDisabledColor);
          break;
        case TextState.hint:
          style = style.copyWith(color: theme.textHintColor);
          break;
        case TextState.primary:
          style = style.copyWith(color: theme.textPrimaryStates.normal);
          break;
        case TextState.success:
          style = style.copyWith(color: theme.textSuccessStates.normal);
          break;
        case TextState.info:
          style = style.copyWith(color: theme.textInfoStates.normal);
          break;
        case TextState.warning:
          style = style.copyWith(color: theme.textWarningStates.normal);
          break;
        case TextState.danger:
          style = style.copyWith(color: theme.textDangerStates.normal);
          break;
        case TextState.primaryDisabled:
          style = style.copyWith(color: theme.textPrimaryStates.disabled);
          break;
        case TextState.successDisabled:
          style = style.copyWith(color: theme.textSuccessStates.disabled);
          break;
        case TextState.infoDisabled:
          style = style.copyWith(color: theme.textInfoStates.disabled);
          break;
        case TextState.warningDisabled:
          style = style.copyWith(color: theme.textWarningStates.disabled);
          break;
        case TextState.dangerDisabled:
          style = style.copyWith(color: theme.textDangerStates.disabled);
          break;
      }
    }

    if (this.style != null) {
      style = this.style.copyWith(
            fontSize: this.style.fontSize ?? style.fontSize,
            fontWeight: this.style.fontWeight ?? style.fontWeight,
            fontFamily: this.style.fontFamily ?? style.fontFamily,
            height: style.height ?? style.height,
            color: this.style.color ?? style.color,
          );
    }

    return Text(
      data,
      key: key,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textScaleFactor: textScaleFactor,
    );
  }
}
