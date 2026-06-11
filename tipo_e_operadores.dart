void maind(){
    // 1. Declare uma variável inteira para armazenar a idade de uma
    // pessoa e atribua o valor 28.
    int idade = 28
    print(idade)

    // 2. Crie uma variável double para guardar a altura de uma pessoa
    // em metros e atribua o valor 1.75.
    double altura = 1.75;
    print(altura);

    // 3. Defina uma variável String para armazenar o nome de um
    // animal de estimação e atribua um nome de sua escolha.
    String nome = 'Coisado';
    print(nome)

    // 4. Crie uma variável bool para indicar se uma lâmpada está ligada
    // e atribua o valor false
    bool ligado = false;
    print(ligado);

    // 5. Declare duas variáveis inteiras, a e b, com valores 10 e 3,
    // respectivamente, e calcule a soma. 
    int a = 10;
    int b = 3;
    print(a + b);

    // 6. Usando as variáveis do exercício anterior, calcule o resto da
    // divisão de a por b.
    print(a % b);

    // 7. Crie uma variável double para o valor de uma compra e aplique
    // um desconto de 10% usando operadores aritméticos.
    double valor = 10;
    valor = valor + (valor * 0.1);
    print(valor);

    // 8. Defina uma variável String para o nome de um produto e
    // concatene com o preço em uma frase
    String nomeProduto = 'mochila';
    print('$nomeProduto custa $valor reais.');

    // 9. Declare uma lista (List) de três nomes de cidades e imprima o
    // segundo nome.
    List<String> nomes = ['João', 'José', 'Maria'];
    print(nomes[1]);

    // 10. Crie um conjunto (Set) com os números 1, 2, 3, 2 e mostre
    // quantos elementos únicos existem.
    Set<int> conjunto = {1, 2, 3, 4, 5, 2, 3, 1};
    print(conjunto);
    
    // 11. Crie um mapa (Map) para associar nomes de frutas a seus preços e 
    // acesse o preço de uma fruta específica.
    Map<String, double> frutas_precos = {
        'abacate' : 10.50,
        'maca' : 10.39,
        'banana' : 2.37
    };
 
    print(frutas_precos['maca']); 

    // 12. Declare uma variável dinâmica e atribua a ela um valor inteiro, 
    // depois mude para uma String.
    
    dynamic valorB = 10;
    print(valorB);
    valorB = 'texto';
    print(valorB);

    // 13. Use o operador ternário para verificar se uma idade é maior ou igual a 18
    // e retorne "Maior de idade" ou "Menor de idade".
    idade >= 18 ? print('Maior de idade') : print('Menor de idade0');

    // 14. Utilize o operador de coalescência nula (??) para atribuir um valor 
    // padrão a uma variável que pode ser nula.
    String? nomeConvidado;
    String nomeExibido = nomeConvidado ?? 'Convidado';
    print(nomeExibido);

    // 15. Crie uma variável final para armazenar o valor de PI e tente alterar seu valor após a atribuição. 
    double pi = 3.14;
    print(pi);
    pi += pi;
    print(pi);
}

