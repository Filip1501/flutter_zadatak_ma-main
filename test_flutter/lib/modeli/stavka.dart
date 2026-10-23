import "package:flutter/material.dart";

class Stavka {
  final String naziv;
  final String zupanija;
  final int godinaOsnivanja;
  final int povrsina;
  final String opis;
  final IconData ikona;

  const Stavka({
    required this.naziv,
    required this.zupanija,
    required this.godinaOsnivanja,
    required this.povrsina,
    required this.opis,
    required this.ikona,
  });
}

const List<Stavka> parkovi = [
  Stavka(
    naziv: "Plitvička jezera",
    zupanija: "Ličko-senjska i Karlovačka",
    godinaOsnivanja: 1949,
    povrsina: 297,
    opis: "Najstariji i najveći nacionalni park u Hrvatskoj. Ima 16 jezera "
        "povezanih slapovima i nalazi se na UNESCO-ovom popisu svjetske baštine.",
    ikona: Icons.water,
  ),
  Stavka(
    naziv: "Paklenica",
    zupanija: "Zadarska i Ličko-senjska",
    godinaOsnivanja: 1949,
    povrsina: 95,
    opis: "Park na južnom Velebitu s dva kanjona, Velikom i Malom Paklenicom. "
        "Omiljen je penjačima i planinarima.",
    ikona: Icons.terrain,
  ),
  Stavka(
    naziv: "Risnjak",
    zupanija: "Primorsko-goranska",
    godinaOsnivanja: 1953,
    povrsina: 64,
    opis: "Šumoviti park u Gorskom kotaru. U njemu žive medvjed, vuk i ris.",
    ikona: Icons.forest,
  ),
  Stavka(
    naziv: "Mljet",
    zupanija: "Dubrovačko-neretvanska",
    godinaOsnivanja: 1960,
    povrsina: 54,
    opis: "Zapadni dio otoka Mljeta s Velikim i Malim jezerom. Na otočiću "
        "usred Velikog jezera nalazi se stari samostan.",
    ikona: Icons.park,
  ),
  Stavka(
    naziv: "Kornati",
    zupanija: "Šibensko-kninska",
    godinaOsnivanja: 1980,
    povrsina: 217,
    opis: "Skupina od preko 80 otoka i otočića. Većinu parka čini more.",
    ikona: Icons.sailing,
  ),
  Stavka(
    naziv: "Brijuni",
    zupanija: "Istarska",
    godinaOsnivanja: 1983,
    povrsina: 34,
    opis: "Otočje uz obalu Istre poznato po safari parku, tragovima "
        "dinosaura i ostacima rimskih vila.",
    ikona: Icons.waves,
  ),
  Stavka(
    naziv: "Krka",
    zupanija: "Šibensko-kninska",
    godinaOsnivanja: 1985,
    povrsina: 109,
    opis: "Park uz rijeku Krku sa sedam slapova. Najpoznatiji je Skradinski buk.",
    ikona: Icons.landscape,
  ),
  Stavka(
    naziv: "Sjeverni Velebit",
    zupanija: "Ličko-senjska",
    godinaOsnivanja: 1999,
    povrsina: 109,
    opis: "Najmlađi nacionalni park u Hrvatskoj. Poznat je po Premužićevoj "
        "stazi i Hajdučkim kukovima.",
    ikona: Icons.filter_hdr,
  ),
];