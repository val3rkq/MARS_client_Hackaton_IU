import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'package:mars_client/pages/settings/bloc/export_settings_bloc.dart';
import 'const.dart';
import 'pages/home/home_page.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(storageBoxName).then(
    (value) => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainBloc(),
        ),
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
      ],
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Mars Client',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              // overlayColor: Colors.white54,
              primaryColor: Colors.deepOrange,
              primarySwatch: Colors.deepOrange,
            ),
            supportedLocales: const [
              Locale('en'), // English
              Locale('ru'), // Russian
            ],
            locale: Locale(BlocProvider.of<MainBloc>(context).state.locale),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
