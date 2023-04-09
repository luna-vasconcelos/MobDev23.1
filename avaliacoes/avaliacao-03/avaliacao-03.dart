void main() {

// 1) Qual o resultado da expressão 5 + 3 * 2?
int op1 = 5 + 3 * 2;
print('1) $op1');

// 2) Qual o resultado da expressão 10 / 2 - 3?
var op2 = 10 / 2 - 3;
print('2) $op2');

// 3) Qual o resultado da expressão 7 % 3?
var op3 = 7 % 3;
print('3) $op3');

// 4) Qual o valor de x após a execução da expressão x += 5?
int x = 0;
x += 5;
print('4) $x');

// 5) Qual o valor de y após a execução da expressão y *= 3?
int y = 1;
y *= 3;
print('5) $y');

// 6) Qual o resultado da expressão !(2 < 5) || (3 > 1)?
var op6 = !(2 < 5) || (3 > 1);
print('6) $op6');

// 7) Qual o valor de z após a execução da expressão z ?? 10?
var z;
z = z ?? 10;
print('7) $z');

// 8) Qual o resultado da expressão 2 + 2 == 4 && 3 + 3 == 6?
var op8 = 2 + 2 == 4 && 3 + 3 == 6;
print('8) $op8');

// 9) Qual o resultado da expressão 5 < 3 || 4 > 2 && 6 != 6?
var op9 = 5 < 3 || 4 > 2 && 6 != 6;
print('9) $op9');

// 10 ) Qual o valor de a após a execução da expressão a ??= 10?
var a;
a = a ??= 10;
print('10) $a');

}
