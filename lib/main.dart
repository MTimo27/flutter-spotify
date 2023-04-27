import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify/data/data.dart';
import 'package:flutter_spotify/models/current_track_model.dart';
import 'package:flutter_spotify/screens/playlist_screen.dart';
import 'package:flutter_spotify/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:desktop_window/desktop_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }
  runApp(
    ChangeNotifierProvider(
      create: (context) => CurrentTrackModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(Colors.grey[500]),
        ),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          displayMedium: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[300],
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.grey[300],
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[300],
            letterSpacing: 1.0,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            background: const Color(0xFF121212),
            secondary: const Color(0xFF1DB954),
            brightness: Brightness.dark),
      ),
      home: const Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) const SideMenu(),
                const Expanded(
                  child: PlaylistScreen(playlist: lofihiphopPlaylist),
                ),
              ],
            ),
          ),
          const CurrentTrack(),
        ],
      ),
    );
  }
}
