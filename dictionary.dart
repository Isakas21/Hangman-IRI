import 'dart:convert';
import 'dart:io';
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
    
    new HttpClient().getUrl(Uri.parse('https://random-word-api.herokuapp.com/word'))
    .then((HttpClientRequest request) => request.close());
    // .then((HttpClientResponse response) => response.transform(new Utf8Decoder()).listen(print));
  //  return "bullseye"; // stub
  }

  
}
void main() {
    Dictionary diccionario = new Dictionary();
    String a = (diccionario.makeRandomWord());
    print(a);
  }
