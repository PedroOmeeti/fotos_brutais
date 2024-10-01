import 'dart:io';

import 'package:fotos_brutais/controller/Home_controller.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Camera Brutal',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: controller.imagem != null ? Image.file(controller.imagem!) : const Text("Nenhuma Imagem")
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              onPressed: () async {
                controller.returnedImage = await controller.pickImageFromCamera();
                setState(() {
                  controller.imagem = File(controller.returnedImage!.path);
                });
              }, 
              child: const Text('Abrir camera')
            ),

            SizedBox(
              height: 20,
            ),

            Visibility(
              visible: true,
              child: ElevatedButton(
                onPressed: () async{
                  controller.Salvar();
                  
                }, 
                child: const Text('Salvar Imagem')
              ),
            )



          ],
        ),
      ),
    );
  }
}