import 'package:chat_app_pilar_teknologi/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://qlpalcobgauyqzulwqyi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFscGFsY29iZ2F1eXF6dWx3cXlpIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1NzE1NzIsImV4cCI6MTk5NjE0NzU3Mn0.0-0sDcOx5ClrOhcd-OxXkoR9S5n7MwkjbGZ9yWYHfGw',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}
