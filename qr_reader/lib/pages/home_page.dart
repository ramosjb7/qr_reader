import 'package:flutter/material.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';

import '../widgets/custom_navigatorbar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: (){},
          )
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const  CustomNavigatorBar(),
      floatingActionButton: const  ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {

    //Cambiar para mostrar la pagina respectiva
    final currentIndex =1;
    switch(currentIndex){

      case 0:
        return MapasPage();
      case 1: 
        return DireccionesPage();

      default:
        return MapasPage();
    }
    return const Placeholder();
  }
}