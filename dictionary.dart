import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Dictionary {
  /*
   * #1. Se puede tener:  --RAUL
   * (1) una lista de palabras fija
   * (2) un fichero de texto con las palabras
   *     p.ej. descargado de https://random-word-api.herokuapp.com/all
   * (3) acceso a un service REST que devuelva una palabra aleatoria
   *     p.ej. https://random-word-api.herokuapp.com/word
   * La palabra devuelta debe ser aleatoria.
   */
  
  String makeRandomWord() {
    String contenido = "";
    new File('palabras.txt').readAsString().then((String contents) {
      String contenido = contents;
      var array = contenido.split(',');
      var rng = new Random();
      int numero = rng.nextInt(array.length - 1) + 0;
      if(numero == 1){
        return array[numero].substring(2, array[numero].length - 2);
      }
      else if(numero == array.length - 1){
        return array[numero].substring(2, array[numero].length - 2);
      }
      else{
        return array[numero].substring(1, array[numero].length - 1);
      }
      
  });
  }

  
}
void main() {
    Dictionary diccionario = new Dictionary();
    String diccionari = diccionario.makeRandomWord();
    
    }
