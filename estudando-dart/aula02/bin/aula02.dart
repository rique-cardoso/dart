// Função tradicional especificando que retorna um inteiro (int)
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus'];

  // Loop for tradicional
  for (int month = 1; month <= 12; month++) {
    // faz algo
  }

  // Loop for-in (muito parecido com o "for item in lista:" do Python)
  for (final object in flybyObjects) {
    print(object);
  }

  // Uso de funções anônimas e sintaxe Arrow (=>)
  // Filtra itens que contêm 'turn' e imprime cada um.
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}