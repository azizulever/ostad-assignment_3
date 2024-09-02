import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(responsive_design());
}

class responsive_design extends StatelessWidget {
  const responsive_design({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}
