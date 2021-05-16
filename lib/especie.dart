import 'package:flutter/material.dart';
import 'especie_data.dart';

class EspecieScreen extends StatelessWidget {
  final Especie especie;

  const EspecieScreen({required this.especie}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(especie.nomeCientifico),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(especie.img),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Nome científico: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      especie.nomeCientifico,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Nomenclatura botânica: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      especie.nomenclaturaBotanica,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Habitat: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      especie.habitat,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Distribuição: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      especie.distribuicao,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Local da foto: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      especie.localImg,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}