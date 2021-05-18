import 'package:flutter/material.dart';
import 'especie_data.dart';

class EspecieScreen extends StatelessWidget {
  final fields = const [
    'nomeCientifico',
    'nomenclaturaBotanica',
    'habitat',
    'distribuicao',
    'localImg'
  ];
  final Especie especie;
  const EspecieScreen({required this.especie}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(especie.nomeCientifico),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage(especie.img),
              ),
              const SizedBox(
                height: 20,
              ),
              for (String field in fields)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: especie.getFormatedFieldName(field),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: especie.getFieldValue(field),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
