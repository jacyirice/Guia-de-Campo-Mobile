import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'especie.dart';
import 'especie_data.dart';

class EspeciesScreen extends StatefulWidget {
  @override
  createState() => _EspeciesScreenState();
}

class _EspeciesScreenState extends State {
  var especies = <Especie>[];

  _getEspecies() {
    rootBundle.loadString('assets/especies.json').then((jsonString) {
      setState(() {
        Iterable list = json.decode(jsonString);
        for (Map value in list) {
          especies.add(
            Especie(
                value['img'],
                value['nomeCientifico'],
                value['nomenclaturaBotanica'],
                value['habitat'],
                value['distribuicao'],
                value['localImg']),
          );
        }
      });
    });
  }

  @override
  initState() {
    super.initState();
    _getEspecies();
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Espécies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (Especie especie in especies)
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  especie.img,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      especie.nomeCientifico,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(especie.nomenclaturaBotanica),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EspecieScreen(
                                especie: especie,
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
