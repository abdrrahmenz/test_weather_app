import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/provider.dart';

import 'pages/home_page.dart';
import 'repositories/repository.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _AppWidget();
  }
}

class _AppWidget extends StatefulWidget {
  const _AppWidget({Key? key}) : super(key: key);

  @override
  State<_AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<_AppWidget> {
  // late MyRouterDelegate myRouterDelegate;
  late AppProvider appProvider;
  late Repository repository;

  @override
  void initState() {
    super.initState();
    repository = Repository();
    appProvider = AppProvider(repository);
    // myRouterDelegate = MyRouterDelegate(authRepository);
  }


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider<LocalizationProvider>( create: (context) => LocalizationProvider()),
        ChangeNotifierProvider<AppProvider>( create: (context) => AppProvider(repository)),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'WeatherApp',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.grey.shade50,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          home: const HomePage(title: 'WeatherApp'),
        );
      },
    );
  }
}