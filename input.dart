import 'dart:io';
import 'txtprocessor.dart';

class Input {
  /*
   * IÑAKI
   * #2. Controlar que el byte leido es una letra.
   * Sino, devolver un caracter que luego se procese,
   * para no ser tratado como una letra valida.
   * Por ejemplo, en isNewLetterInList que devuelva falso.
   */
  static String readLetter() {
    var letterList = new List<String>();
    letterList = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'ñ',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    stdin.echoMode = false;
    stdin.lineMode = false;
    stdout.write("Letra: ");
    int c = stdin.readByteSync(); // 10=Enter, 27=Esc
    String s = String.fromCharCode(c);
    var existe = TxtProcessor.isNewLetterInList(s, letterList);
    if (existe == false) {
      print(s);
      return s;
    } else {
      return "#";
    }
  }
}
