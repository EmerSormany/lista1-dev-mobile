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

    // 21. Use um loop for para imprimir os números de 10 até 1.
    for(int i = 1; i <= 10; i++){
        print(i);
    }

    // 22. Some e exiba todos os números pares de 1 a 100 usando um loop.
    int x = 0;
    for(int i = 1; i <= 100; i++){
        if((i % 2) == 0){
            int aux = x;
            x = x+i;
            print('$aux + $i = $x');
        }
    }

    // 23. Peça um número e mostre sua tabuada de 1 a 10 usando for ou while.
    stdout.write('digite um número para ver sua tabuada: ');
    double tabuada = double.parse(stdin.readLineSync()!);
    
    int count = 1; 
    while(count < 11){
        print('$tabuada   somado com     $count é igual a ${tabuada + count}');
        
        print('$tabuada multiplicado por $count é igual a ${tabuada * count}');
        
        print('$tabuada   dividido por   $count é igual a ${tabuada / count}');
        
        print('$tabuada     subtraído    $count é igual a ${tabuada - count}');
        count++;
    }

    // 24. Leia números do usuário até que ele digite um valor negativo, 
    // e então exiba quantos números foram digitados.
    int ctrl = 0;
    String exibe = 'números digitados '; 
    
    do {
        stdout.write('digite um número, se quiser sair digite um valor negativo: ');
        ctrl = int.parse(stdin.readLineSync()!);
        
        exibe += '$ctrl, ';
        
    } while( ctrl >= 0);
    
    print(exibe);

    // 25. Dada uma lista de nomes, use um for-in para imprimir cada nome em letras maiúsculas.
    List<String> nomes = ['josé', 'maria', 'diego', 'honorato'];
    
    for(String nome in nomes){
        print(nome.toUpperCase());
    }
    
}