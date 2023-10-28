// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Temperature`
  String get temperature {
    return Intl.message(
      'Temperature',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get direction {
    return Intl.message(
      'Direction',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `Power`
  String get power {
    return Intl.message(
      'Power',
      name: 'power',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get speed {
    return Intl.message(
      'Speed',
      name: 'speed',
      desc: '',
      args: [],
    );
  }

  /// `Pressure`
  String get pressure {
    return Intl.message(
      'Pressure',
      name: 'pressure',
      desc: '',
      args: [],
    );
  }

  /// `km / h`
  String get kmh {
    return Intl.message(
      'km / h',
      name: 'kmh',
      desc: '',
      args: [],
    );
  }

  /// `m / s`
  String get ms {
    return Intl.message(
      'm / s',
      name: 'ms',
      desc: '',
      args: [],
    );
  }

  /// `mph / h`
  String get mphh {
    return Intl.message(
      'mph / h',
      name: 'mphh',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}