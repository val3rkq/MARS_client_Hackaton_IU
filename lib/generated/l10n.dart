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

  /// `English`
  String get locale {
    return Intl.message(
      'English',
      name: 'locale',
      desc: '',
      args: [],
    );
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

  /// `Humidity`
  String get humidity {
    return Intl.message(
      'Humidity',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `Environmental parameters`
  String get env {
    return Intl.message(
      'Environmental parameters',
      name: 'env',
      desc: '',
      args: [],
    );
  }

  /// `Units`
  String get units {
    return Intl.message(
      'Units',
      name: 'units',
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

  /// `mm Hg`
  String get mmhg {
    return Intl.message(
      'mm Hg',
      name: 'mmhg',
      desc: '',
      args: [],
    );
  }

  /// `Pa`
  String get pa {
    return Intl.message(
      'Pa',
      name: 'pa',
      desc: '',
      args: [],
    );
  }

  /// `°C`
  String get c {
    return Intl.message(
      '°C',
      name: 'c',
      desc: '',
      args: [],
    );
  }

  /// `°F`
  String get f {
    return Intl.message(
      '°F',
      name: 'f',
      desc: '',
      args: [],
    );
  }

  /// `Khlamid`
  String get khlamid {
    return Intl.message(
      'Khlamid',
      name: 'khlamid',
      desc: '',
      args: [],
    );
  }

  /// `Monad`
  String get monad {
    return Intl.message(
      'Monad',
      name: 'monad',
      desc: '',
      args: [],
    );
  }

  /// `Bimbim`
  String get bimbim {
    return Intl.message(
      'Bimbim',
      name: 'bimbim',
      desc: '',
      args: [],
    );
  }

  /// `P - autopilot`
  String get p_autopilot {
    return Intl.message(
      'P - autopilot',
      name: 'p_autopilot',
      desc: '',
      args: [],
    );
  }

  /// `W - move forward`
  String get w_mf {
    return Intl.message(
      'W - move forward',
      name: 'w_mf',
      desc: '',
      args: [],
    );
  }

  /// `A - move left`
  String get a_ml {
    return Intl.message(
      'A - move left',
      name: 'a_ml',
      desc: '',
      args: [],
    );
  }

  /// `D - move right`
  String get d_mr {
    return Intl.message(
      'D - move right',
      name: 'd_mr',
      desc: '',
      args: [],
    );
  }

  /// `S - move back`
  String get s_mb {
    return Intl.message(
      'S - move back',
      name: 's_mb',
      desc: '',
      args: [],
    );
  }

  /// `Any questions? Text us: iu7@bmstu.com`
  String get questions_text {
    return Intl.message(
      'Any questions? Text us: iu7@bmstu.com',
      name: 'questions_text',
      desc: '',
      args: [],
    );
  }

  /// `v 1.0 developed by IU7, the best cathedra in the world`
  String get developed_text {
    return Intl.message(
      'v 1.0 developed by IU7, the best cathedra in the world',
      name: 'developed_text',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter the username..`
  String get enter_username {
    return Intl.message(
      'Please, enter the username..',
      name: 'enter_username',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter the password..`
  String get enter_password {
    return Intl.message(
      'Please, enter the password..',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Not correct password..`
  String get wrong_password {
    return Intl.message(
      'Not correct password..',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Navigation`
  String get navigation {
    return Intl.message(
      'Navigation',
      name: 'navigation',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language_text {
    return Intl.message(
      'Language',
      name: 'language_text',
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
      Locale.fromSubtags(languageCode: 'ru'),
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