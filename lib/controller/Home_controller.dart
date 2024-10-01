import 'dart:io';

import 'package:fotos_brutais/model/salvar_foto_model.dart';
import 'package:image_picker/image_picker.dart';


class HomeController {
  File ? imagem;
  XFile ? returnedImage;
  Future<XFile?> pickImageFromCamera() async {
    return await ImagePicker().pickImage(source: ImageSource.camera);
  
  }

  SalvarFotoModel salvarModel = SalvarFotoModel();
  Future<String> Salvar() async {
    final resultado = salvarModel.Salvar(imagem);
    return resultado;
  }  

}