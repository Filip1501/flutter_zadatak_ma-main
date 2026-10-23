import "package:flutter/material.dart";

import "../modeli/stavka.dart";
import "ekran_detalja.dart";

class EkranPopisa extends StatelessWidget {
  const EkranPopisa({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> stavke = [];
    for (final park in parkovi) {
      stavke.add(
        StavkaPopisa(
          park: park,
          onOpen: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EkranDetalja(stavka: park),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Nacionalni parkovi")),
      body: ListView(padding: const EdgeInsets.all(8), children: stavke),
    );
  }
}

class StavkaPopisa extends StatelessWidget {
  final Stavka park;
  final VoidCallback onOpen;

  const StavkaPopisa({
    super.key,
    required this.park,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onOpen,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(park.ikona, size: 32, color: Colors.green),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    park.naziv,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    park.zupanija,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}