import 'dart:io';

void main() {
    // 16. Peça ao usuário para informar a idade e exiba "Maior de idade" se for 18 anos ou mais, 
    // ou "Menor de idade" caso contrário.
    stdout.write('digite sua idade: ');
    int idadeB = int.parse(stdin.readLineSync()!);
    idadeB > 17 ? print('Maior de idade') : print('Menor de idade');

    // 17. Dada uma variável nota, use if/else para exibir "Aprovado" 
    // se a nota for maior ou igual a 7, "Recuperação" se for entre 5 e 6.9, 
    // e "Reprovado" se for menor que 5.
    stdout.write('digite a nota: ');
    double nota = double.parse(stdin.readLineSync()!);
    if (nota >= 7) {
        print('Aprovado');
    } else if ( nota < 5) {
        print('Reprovado');
    } else {
        print('Recuperação');
    };

    // 18. Leia um número inteiro e use o operador ternário para exibir "Par" ou "Ímpar".
    stdout.write('digite a nota: ');
    int num_int = int.parse(stdin.readLineSync()!);
    
    num_int % 2 == 0 ? print('Par') : print('Ímpar');

    // 19. Dado um número de 1 a 7, use switch/case para imprimir o nome do dia correspondente 
    // (1 = Domingo, 2 = Segunda, ...).
    stdout.write('digite um número inteiro entre 1 e 7: ');
    String num_intB = stdin.readLineSync()!;
    
    switch (num_intB){
        case '1':
            print('domingo');
        case '2':
            print('segunda');
        case '3':
            print('terça');
        case '4':
            print('quarta');
        case '5':
            print('quinta');
        case '6':
            print('sexta');
        case '7':
            print('sábado');
        default:
            print('valor inálido');
    }

    // 20. Receba três números inteiros e utilize estruturas de seleção para exibir o maior deles.
    
    stdout.write('digite o primeir número inteiro: ');
    int numA = int.parse(stdin.readLineSync()!);
    
    stdout.write('digite o segundo número inteiro: ');
    int numB = int.parse(stdin.readLineSync()!);
    
    stdout.write('digite o terceiro número inteiro: ');
    int numC = int.parse(stdin.readLineSync()!);

    if (numA > numB && numA > numC){
        print('primeiro npumero é maior de todos');
    } else if ( numB > numC) {
        print('segundo número é mairo de todos');
    } else {
        print('terceiro numero é maior de todos');
    }
}