main() {
  print('Loops (For Labels)\n');

  for (var i = 0; i < 2; i++) {
    print('i: $i');
    for (int j = i; j < 2; j++) {
      print('i: $i - j: $j');
      for (num k = j; k < 2; k++) {
        print('i: $i - j: $j - k: $k');
      }
    }
  }

  print('\nFor com break e rótulos (labels)\n');

//NOTE - o break encerra o loop e o índice zera
  loopExterno:
  for (var i = 0; i < 3; i++) {
    print('loopExterno: i: $i');
    loopInterno:
    for (var j = 0; j <= 3; j++) {
      print('loopInterno: i: $i - j: $j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;

      print('loopCompleto');
    }
  }

  print('\nFor com continue e rótulos (labels)\n');

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    // i = 0
    print('loopExterno i: $i');
    loopInterno:
    for (int j = 1; j <= 3; j++) {
      // j = 0
      print('looInterno: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('loopCompleto');
    }
  }
}
