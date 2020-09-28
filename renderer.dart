import 'gallows.dart';

class Renderer {
  final int max_mistakes;

  Renderer(this.max_mistakes);

  void drawInit(guessed) {
    print("EL AHORCADO");
    print("");
    print(guessed);
  }

  /*
   * IÑAKI
 ue representar correctamente la horca
   * teniendo en cuenta la clase Gallows.
   */
  void drawGame(int mistakes, String missed, String guessed) {
    print("Te quedan ${max_mistakes - mistakes} fallos.");
    print(Gallows.level[mistakes]);
    print(guessed);
    print("Fallado: $missed");
  }

  void drawSuccess() {
    print("HAS GANADO!");
  }

  void drawFailure() {
    print("HAS PERDIDO!");
  }
}
