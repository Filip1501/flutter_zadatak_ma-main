import 'package:flutter/material.dart';

import '../modeli/stavka.dart';

class EkranDetalja extends StatelessWidget {
  final Stavka stavka;

  const EkranDetalja({super.key, required this.stavka});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(stavka.naziv)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green),
                ),
                child: Row(
                  children: [
                    Icon(stavka.ikona, size: 48, color: Colors.green),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        stavka.naziv,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("Županija: ${stavka.zupanija}"),
              const SizedBox(height: 6),
              Text("Proglašen: ${stavka.godinaOsnivanja}."),
              const SizedBox(height: 6),
              Text("Površina: ${stavka.povrsina} km²"),
              const SizedBox(height: 16),
              Text(stavka.opis, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 24),
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Natrag na popis"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}