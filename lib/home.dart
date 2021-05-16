import 'package:flutter/material.dart';
import 'especies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/home.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Vegetação do Cerrado',
            style: TextStyle(
                color: Colors.white70, decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text('INICIAR'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EspeciesScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
