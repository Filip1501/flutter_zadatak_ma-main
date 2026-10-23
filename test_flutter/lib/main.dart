import 'package:flutter/material.dart';

import 'ekrani/ekran_popisa.dart';

void main() {
  runApp(const ParkoviApp());
}

class ParkoviApp extends StatelessWidget {
  const ParkoviApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Parkovi Hrvatske',
      debugShowCheckedModeBanner: false,
      home: EkranPopisa(),
    );
  }
}