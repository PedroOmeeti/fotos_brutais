import 'dart:io';
import 'package:path_provider/path_provider.dart';

class SalvarFotoModel {
  Future<String> Salvar(imagem) async {
    try{
      final appDocDir = await getApplicationDocumentsDirectory();
      
      final filePath = '${appDocDir.path}/imagem.jpg';
      final file = File(imagem.path);
      await file.copy(filePath);
      return "deu certo";
    
    }catch (e){
      return e.toString(); 
    }

    

  } 
}


