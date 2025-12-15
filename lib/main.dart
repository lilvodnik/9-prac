import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth_page.dart';
import 'notes_page.dart';

const supabaseUrl = 'https://kbkzcroqvmsogcbkciwr.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtia3pjcm9xdm1zb2djYmtjaXdyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjU1Mjg2OTcsImV4cCI6MjA4MTEwNDY5N30.J9fv6WL-q0wNNHOBGAHgQ3X-NcxyKnE6E4Ek9YE3hwc';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Notes',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const AuthPage(),
    );
  }
}