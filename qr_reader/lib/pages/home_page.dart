import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';

import 'package:qr_reader/providers/db_ptovider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

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
      body: _HomePageBody(),
      bottomNavigationBar: const  CustomNavigatorBar(),
      floatingActionButton: const  ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class _HomePageBody extends StatelessWidget {
  // const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {

    //obtener el selcted menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;
  
    //sTODO: Temporal leer la base de datos
    final tempScan = ScanModel(valor: 'http://google.com');
    DBProvider.db.nuevoScan(tempScan); 

    switch(currentIndex){

      case 0:
        return const MapasPage();
      case 1: 
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
    // return Container();
  }
}