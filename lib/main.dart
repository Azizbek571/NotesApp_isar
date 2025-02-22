
import 'package:flutter/material.dart';
import 'package:notesapp_off_isar/models/notes_database.dart';
import 'package:notesapp_off_isar/pages/notes_page.dart';
import 'package:notesapp_off_isar/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main()async {
  

 WidgetsFlutterBinding.ensureInitialized();
 await NoteDatabase.initialize();

  runApp(  MultiProvider(providers: [  
    ChangeNotifierProvider(create: (context)=> NoteDatabase()),
    ChangeNotifierProvider(create: (context) => ThemeProvider())
  ],
  child: const MyApp(),
  )
    
    
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
      theme: Provider.of<ThemeProvider>(context).theemeData,
    );
  }
}