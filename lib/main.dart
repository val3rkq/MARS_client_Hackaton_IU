import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mars_client/data/data_service.dart';
import 'package:mars_client/local_storage/local_storage.dart';
import 'package:mars_client/pages/home/bloc/home_bloc.dart';
import 'pages/home/home_page.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // var box = Hive.openBox(StorageBoxName);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final LocalStorage _localStorage = LocalStorage();
  final DataService _dataService = DataService();
  int? statusCode;

  Future<void> getStatusCode() async {
    statusCode = await _dataService.getStatusCode();
  }

  @override
  Widget build(BuildContext context) {
    // _localStorage.updateStorage();
    // _localStorage.getStorage();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: MaterialApp(
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
        home: HomePage(),
      ),
    );
  }
}
