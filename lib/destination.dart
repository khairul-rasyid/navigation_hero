// import 'dart:ffi';

import 'package:flutter/material.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage(
      {Key? key, this.nama, this.gambar, this.deskripsi, required this.index})
      : super(key: key);

  final String? nama;
  final String? gambar;
  final String? deskripsi;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            "Detail Flora",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Hero(
                  tag: 'image$index',
                  child: Image.asset(
                    "images/$gambar",
                    fit: BoxFit.cover,
                    width: 380,
                    height: 200,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                Text(nama.toString(),
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Text(deskripsi.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ))
              ],
            ),
          ),
        ));
  }
}
