void main() {
// 9) Como verificar se uma lista contém um determinado elemento em Dart?
// Podemos usar o métodos 'contains' para verificar isso, segue o exemplo:
var minhaLista = [1, 2, 3, 4, 5];
bool contem = minhaLista.contains(3);
print("A lista contém o número 3: $contem");

// 10) Como ordenar uma lista em ordem crescente em Dart?
minhaLista = [3, 1, 4, 1, 5, 9, 2, 6, 3];
minhaLista.sort();
print('Lista ordenada em ordem crescente: $minhaLista');

// 11) Como ordenar uma lista em ordem decrescente em Dart?
minhaLista = [3, 1, 4, 1, 5, 9, 2, 6, 3];
minhaLista.sort();
minhaLista = minhaLista.reversed.toList();
print('Lista ordenada em ordem decrescente: $minhaLista');

// 12) Como copiar uma lista em Dart?
List<int> listOriginal = [1, 2, 3];
List<int> listCopia = List.from(listOriginal);
print('Lista original: $listOriginal');
print('Lista copiada igual a original: $listCopia');

// 13) Como verificar se duas listas são iguais em Dart?
// Podemos usar o operador == para fazer essa verificação, segue exemplo:
bool saoIguais = listOriginal.length == listCopia.length && 
                 listOriginal.every((element) => listCopia.contains(element));
String resultado = saoIguais ? "As listas são iguais" : "As listas são diferentes";
print(resultado);

// 14) Como criar uma lista a partir de outra lista em Dart?
// Mesma coisa da questão 12, podemos usar o mesmo método

// 15) Como transformar uma lista em uma lista de strings em Dart?
List<int> listaNumeros = [1, 2, 3, 4, 5];
List<String> listaString = listaNumeros.map((numero) => numero.toString()).toList();
var tipo = listaString.runtimeType;
print('Tipo da variável: $tipo');

// 16) Como calcular a soma dos elementos de uma lista em Dart?
// Podemos usar o método 'reduce' para isso:
var lista = [11, 37, 89, 5];
var soma = lista.reduce((valor, elemento) => valor + elemento);
print('Valor da soma dos elementos da lista: $soma'); 

// 17) Como calcular a média dos elementos de uma lista em Dart?
// Podemos usar novamente o método reduce, porém passando uma função de média:
List<double> lista2 = [11.0, 3.5, 5.5, 10.5, 4.0];
double media = lista2.reduce((a, b) => a + b) / lista2.length;
print('A média dos elementos é: $media');

// 18) Como calcular o valor máximo e mínimo de uma lista em Dart?
// Para calcular o valor máximo:
List<int> listaNumeros2 = [10, 5, 7, 12, 3];
int maximo = listaNumeros2.reduce((a, b) => a > b ? a : b);
print('Valor máximo: $maximo');
// Para calcular o valor mínimo:
var valorMinimo = listaNumeros2.reduce((minimo, atual) => minimo < atual ? minimo : atual);
print('Valor mínimo: $valorMinimo'); 

// 19) Como contar quantas vezes um elemento aparece em uma lista em Dart?
List<int> numeros = [1, 2, 4, 2, 3, 2, 3, 5, 3, 4, 6, 8, 5, 4, 4, 2, 5];
int elemento = 4;
int quantidade = numeros.where((numero) => numero == elemento).length;
print('O elemento $elemento aparece $quantidade vezes na lista.');

// 20) Como remover todos os elementos duplicados de uma lista em Dart?  
// Podemos converter para Set e depois converter de volta para List.
// Usando a lista de numeros da questão anterior como exemplo:
List<int> listaSemDuplicatas = numeros.toSet().toList();
print(listaSemDuplicatas);
}
