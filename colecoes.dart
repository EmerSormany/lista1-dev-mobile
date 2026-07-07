import 'dart:io';
import 'dart:collection';
import 'dart:math';

base class Node extends LinkedListEntry<Node> {
    int valor;
    
    Node(this.valor);
    
    @override
    String toString() => 'Node($valor)';
}

class Contador {
    int _valor = 0;
    
    int get valor => _valor;
    
    void incrementar() {
    _valor++;
    }
    
    void resetar() {
    _valor = 0;
    }
}

class Livro {
    String titulo;
    String autor;
    int anoPublicacao;
    
    Livro(this.titulo, this.autor, this.anoPublicacao);
    
    exibirDetalhes() {
        return "Título: ${this.titulo}, Autor: ${this.autor}, Ano: ${this.anoPublicacao}";
    }
}

class Aluno {
    String nome;
    String matricula;
    
    Aluno(this.nome, this.matricula);
    
    Aluno.semMatricula(this.nome) : matricula = 'Não informada';
}

class Produto {
    String nome;
    double preco;
    
    Produto({
    required this.nome,
    this.preco = 0.0,
    });
}

class Veiculo {
    String marca;
    int velocidadeMaxima;
    
    Veiculo(this.marca, this.velocidadeMaxima);
}

class Carro extends Veiculo {
    int quantidadePortas;
    
    Carro(String marca, int velocidadeMaxima, this.quantidadePortas)
      : super(marca, velocidadeMaxima);
}

class Animal {
    emitirSom(){
        print('emitindo som');
    }
}

class Gato extends Animal {
    @override
    void emitirSom() {
        print('Miau!');
    }
}

abstract class Forma {
    double calcularArea();
}

class Quadrado extends Forma {
    double lado;

    Quadrado(this.lado);

    @override
    double calcularArea() {
        return lado * lado;
    }
}

class Circulo extends Forma {
    double raio;

    Circulo(this.raio);

    @override
    double calcularArea() {
        return pi * (raio * raio);
    }
}

abstract class Notificacao {
    void enviar();
}

class Email extends Notificacao {
    @override
    void enviar() {
        print('Email enviado!');
    }
}

class SMS extends Notificacao {
    @override
    void enviar() {
        print('SMS enviado!');
    }
}

class ContaBancaria {
    double _saldo = 0.0;
    
    double get saldo => _saldo;
    
    void depositar(double valor) {
        if (valor > 0) {
            _saldo += valor;
            print('Depósito de ${valor} reais realizado com sucesso.');
        } else {
            print('Erro: O valor do depósito deve ser maior que zero.');
        }
    }
    
    void sacar(double valor) {
        if (valor <= 0) {
            print('Erro: O valor do saque deve ser maior que zero.');
        } else if (valor <= _saldo) {
            _saldo -= valor;
            print('Saque de ${valor} reais realizado com sucesso.');
        } else {
            print('Erro: Saldo insuficiente para sacar ${valor} reais.');
        }
    }
}

class Termometro {
    double _temperaturaC = 0.0;
    
    double get temperaturaC => _temperaturaC;
    
    void ajustarTemperatura(double novaTemp) {
        if (novaTemp >= -50 && novaTemp <= 100) {
            _temperaturaC = novaTemp;
            print('Temperatura ajustada para: $_temperaturaC°C');
        } else {
            print('Erro: Valor $novaTemp°C está fora do intervalo permitido (-50°C a 100°C).');
        }
    }
}

class Retangulo {
    double _largura = 0;
    double _altura = 0;
    
    double get largura => _largura;
    double get altura => _altura;
    
    set largura(double novaLargura) {
        if (novaLargura > 0) {
          _largura = novaLargura;
          print('OK');
        } else {
            print('Erro: Valor inválido');
        }
    }
    
    set altura(double novaAltura) {
        if (novaAltura > 0) {
          _altura = novaAltura;
          print('OK');
        } else {
            print('Erro: Valor inválido');
        }
    }
}

void main(){
    // 31. Crie uma lista de inteiros chamada numeros com os valores ``. 
    // Adicione o número 40 ao final da lista e imprima o terceiro elemento (índice 2).
    List<int> numeros = [10, 20, 30, 50];

    numeros.add(40);
    print(numeros);
    print(numeros[2]);

    // 32. Dada a lista var frutas = ['maçã', 'banana', 'laranja', 'banana'], 
    // remova todas as ocorrências de 'banana' e imprima a lista resultante.
    var frutas = ['maçã', 'banana', 'laranja', 'banana'];
    frutas.remove('banana');
    print(frutas);

    // 33. Use o método map para transformar a lista `` em uma lista de strings no formato 
    // ['Número 1', 'Número 2', 'Número 3'].
    List<int> inteiros = [10, 20, 30, 40, 50, 60];
    
    List<String> inteiros_s = inteiros.map((numero) => numero.toString()).toList();
    
    print(inteiros);
    print(inteiros_s);

    // 34. Crie um conjunto var letras = {'a', 'b', 'c'}. Tente adicionar 'a' novamente e verifique 
    // se o conjunto ainda contém 'a' após a operação.
    var letras = {'a', 'b', 'c'};
    letras.add('a');
    print(letras);

    // 35. Dados os conjuntos set1 = {1, 2, 3} e set2 = {3, 4, 5}, calcule e imprima a união e a interseção 
    // entre eles.
    var set1 = {1, 2, 3}; 
    var set2 = {3, 4, 5};
    print(set1.union(set2));
    print(set1.intersection(set2));

    // 36. Converta a lista `` em um Set para remover duplicatas e exiba o resultado.
    List<String> lista = ['adão', 'eva', 'minha', 'pequena', 'maçã', 'eva', 'pequena'];
    Set<String> conjunto = lista.toSet();
    print(conjunto);

    // 37. Crie um mapa var pessoa = {'nome': 'Ana', 'idade': 25}. 
    // Adicione a chave 'cidade' com valor 'São Paulo' e atualize 'idade' para 26.
    var pessoa = {'nome': 'Ana', 'idade': 25};
    pessoa['cidade'] = 'São paulo';
    pessoa['idade'] = 26;
    print(pessoa);

    // 38. Verifique se o mapa var produtos = {'celular': 1500, 'notebook': 3000} contém a chave 'tablet'. 
    // Se não existir, adicione-a com valor 1000.
    var produtos = {'celular': 1500, 'notebook': 3000};
    if(produtos['tablet'] == null){
        produtos['tablet'] = 1000;
    }
    print(produtos);

    // 39. Combine os mapas map1 = {'a': 1, 'b': 2} e map2 = {'c': 3} usando o operador de spread (...), 
    // resultando em {'a': 1, 'b': 2, 'c': 3}.
    var map1 = {'a': 1, 'b': 2};
    var map2 = {'c': 3};
    print({...map1, ...map2});

    // 40. Crie uma Queue chamada fila e adicione os elementos 'primeiro', 'segundo', 'terceiro'. 
    // Remova o primeiro elemento e imprima o resultado. 
    Queue<String> fila = Queue<String>();
    fila.add('primeiro');
    fila.add('segundo');
    fila.add('terceiro');
    
    print(fila.removeFirst());
    print(fila);


    // 41. Use addFirst para inserir 0 no início da fila Queue fila = Queue.from()
    // e removeLast para remover o último elemento.
    Queue fila_1 = Queue.from(fila);
    fila_1.addFirst('0');
    print(fila_1.removeLast());
    print(fila_1);

    // 42. Converta a Queue fila = Queue.from() em uma lista e imprima o segundo elemento.
    List<String> lista = fila.toList();
    print(lista);

    // 43. Defina uma classe Node que estende LinkedListEntry com um campo valor. 
    // Crie uma LinkedList e adicione três nós com valores 10, 20, 30.
    final lista_1 = LinkedList<Node>();
    
    final no_1 = Node(10);
    final no_2 = Node(20);
    final no_3 = Node(30);
    
    lista_1.add(no_1);
    lista_1.add(no_2);
    lista_1.add(no_3);
    
    print(lista_1);

    // 44. Na LinkedList criada anteriormente, 
    // remova o nó com valor 20 usando unlink() e imprima os valores restantes.
    no_2.unlink();
    print(lista_1);

    // 45. Percorra a LinkedList usando um loop for-in e imprima cada valor multiplicado por 2.
    for (var node in lista_1) {
        print(node.valor * 2);
    }

    // 46. Crie uma classe Livro com as propriedades titulo, autor e anoPublicacao. 
    // Adicione um método exibirDetalhes() que retorna uma string formatada como "Título: [titulo], 
    // Autor: [autor], Ano: [ano]". Exemplo de uso: var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899);
    // print(livro.exibirDetalhes()); // Título: Dom Casmurro, Autor: Machado de Assis, Ano: 1899
    var livro = Livro('Dom Casmurro', 'Machado de Assis', 1889);
    print(livro.exibirDetalhes());

    // 47. Crie uma classe Contador com uma propriedade privada _valor (inicializada em 0) 
    // e um método público incrementar() que aumenta _valor em 1. Adicione um método resetar() 
    // que define _valor para 0.
    var cont = Contador();
    cont.incrementar();
    cont.incrementar();
    print(cont.valor);
    cont.resetar();
    print(cont.valor);

    // 48. Crie uma classe Aluno com as propriedades nome e matricula. 
    // Implemente um construtor padrão que inicializa ambas as propriedades e um construtor nomeado Aluno. 
    // semMatricula que define matricula como 'Não informada'. 
    // Exemplo de uso: var aluno1 = Aluno('Ana', '20240001'); var aluno2 = Aluno.semMatricula('Bruno');

    var aluno1 = Aluno('Zefa', '212035');
    var aluno2 = Aluno.semMatricula('Zé');
    
    print('Nome: ${aluno1.nome} Mat: ${aluno1.matricula}');
    print('Nome: ${aluno2.nome} Mat: ${aluno2.matricula}');

    // 49. Crie uma classe Produto com as propriedades nome e preco. 
    // Use um construtor para inicializar nome como obrigatório e preco com valor padrão 0.0 se não for fornecido.
    
    var feijao = Produto(nome: 'feijão carioca', preco: 2.89);
    var bolacha = Produto(nome: 'Maragoji');
    
    print('Nome: ${feijao.nome} preço: ${feijao.preco}');
    print('Nome: ${bolacha.nome} preço: ${bolacha.preco}');

    // 50. Crie uma classe Veiculo com as propriedades marca e velocidadeMaxima. 
    // Em seguida, crie uma subclasse Carro que adiciona a propriedade quantidadePortas. 
    // Exemplo de uso: var carro = Carro('Toyota', 200, 4); 7 print(carro.quantidadePortas); 
    
    var carro = Carro('Toyota', 200, 4);
    print(carro.quantidadePortas);

    // 51. Crie uma classe Animal com o método emitirSom(). 
    // Derive a classe Gato que sobrescreve emitirSom() para retornar "Miau!".
    
    var gato = Gato();
    gato.emitirSom();

    // 52. Crie uma classe Forma com o método calcularArea(). Derive as classes Quadrado (lado) 
    // e Circulo (raio) que implementam calcularArea() de formas diferentes. 
    // Exemplo de uso: Forma forma1 = Quadrado(5); Forma forma2 = Circulo(3); 
    // print(forma1.calcularArea()); 25 print(forma2.calcularArea()); // ~28.27
    Forma forma1 = Quadrado(5);
    Forma forma2 = Circulo(3);

    print(forma1.calcularArea()); 
    print(forma2.calcularArea().toStringAsFixed(2));

    // 53. Crie uma classe Notificacao com o método enviar(). Derive Email e SMS, cada uma implementando 
    //enviar() com mensagens específicas (ex: "Email enviado!").
    Notificacao email = Email();
    Notificacao sms = SMS();
    
    email.enviar();
    sms.enviar();

    // 54. Crie uma classe ContaBancaria com uma propriedade privada _saldo e métodos públicos depositar(valor) 
    // e sacar(valor). O saque só é permitido se houver saldo suficiente. 
    // Exemplo de uso: var conta = ContaBancaria(); conta.depositar(1000); 
    // conta.sacar(500); // OK conta.sacar(600); // Erro: Saldo insuficiente
    
    var conta = ContaBancaria();
    conta.depositar(1000);
    conta.sacar(500);
    conta.sacar(600);

    // 55. Crie uma classe Termometro com uma propriedade privada _temperaturaC. 
    // Adicione um método ajustarTemperatura(double novaTemp) que só permite valores entre -50 e 100.
    
    var temp = Termometro();
    temp.ajustarTemperatura(80);
    temp.ajustarTemperatura(180);

    // 56. Crie uma classe Retangulo com propriedades privadas _largura e _altura. 
    // Use getters para largura e altura e setters que validam valores positivos. 
    // Exemplo de uso: var ret = Retangulo(); ret.largura = 10; // OK ret.altura = -5; // Erro: Valor inválido

    var ret = Retangulo();
    ret.largura = 10;
    ret.altura = -5;

    // 57. Crie uma classe Usuario com uma propriedade privada _email. Use um setter para validar se 
    // o email contém @ antes de atribuílo.

    var user = Usuario();
    user.email = 'emeil@teste.com';
    user.email = 'emailteste.com';

    // 58. Crie uma interface Autenticavel com o método bool autenticar(String senha). 
    // Implemente-a na classe Usuario para verificar se a senha é "1234". 
    // Exemplo de uso: var user = Usuario(); 8 print(user.autenticar('1234')); // true

    var user = Usuario();
    print(user.autenticar('1234'));

    // 59. Crie uma interface Calculavel com o método double calcular(double a, double b). 
    // Implemente-a em Soma e Subtracao.

    var soma = Soma();
    print(soma.calcular(1.5, 15));
    
    var sub = Subtracao();
    print(sub.calcular(1.5, 15));

    // 60. Crie uma classe abstrata Dispositivo com o método abstrato void ligar(). 
    // Derive a classe Celular que implementa ligar() exibindo "Celular ligado!". 
    // Exemplo de uso: Dispositivo dispositivo = Celular(); dispositivo.ligar(); // Celular ligado!

    Dispositivo dispositivo = Celular();
    dispositivo.ligar();

    // 61. Crie uma classe abstrata FormaGeometrica com o método abstrato double calcularArea(). 
    // Derive Triangulo e Retangulo com implementações específicas.

    FormaGeometrica triangulo = Triangulo();
    print(triangulo.calcularArea(10, 5));
    FormaGeometrica retangulo = Retangulo1();
    print(retangulo.calcularArea(10, 5));

    // 62. Um programa realiza a divisão de dois números inteiros, mas o divisor pode ser zero. 
    // Modifique o código para que o usuário não veja uma mensagem de erro do sistema caso isso aconteça. 
    // void main() { int a = 10; int b = 0; print(a ~/ b); }
    
    int a = 10; 
    int b = 0; 
    try{
        print(a ~/ b); 
    } catch (e) {
        print('O denominador não pode ser 0');
    }
    
    // 63. Um texto digitado pelo usuário deve ser convertido para inteiro, mas pode conter letras ou símbolos. 
    // Garanta que, se a conversão falhar, o programa não seja interrompido abruptamente. 
    // void main() { String texto = "abc"; int numero = int.parse(texto); }
    
    String texto = "abc"; 
    
    try{
        int numero = int.parse(texto);
    } catch (e) {
        print('Valor digitado não é um número');
    }

    // 64. Dada uma lista com três elementos, o código tenta acessar o elemento de índice 5. 
    // Implemente o tratamento necessário para que o acesso inválido não encerre o programa. 
    // void main() { List lista = [1, 2, 3]; print(lista[5]); } 9
    
    List lista = [1, 2, 3]; 
    
    try{
       print(lista[5]); 
    } catch (e) {
        print('posição não existe');
    }

    // 65. Um sistema de cadastro exige que o e-mail digitado contenha o caractere "@".
    // Caso contrário, uma exceção personalizada deve ser lançada e tratada. 
    // void main() { String email = "usuario.example.com"; // Seu código aqui }

    String email = "usuario.example.com";
    
    try{
        if (!email.contains('@')) {
            throw ArgumentError('O email digitado está incorreto!');
        }
    } catch (e){
        print(e);
    }

    // 66. Uma função recebe uma string, converte para inteiro e usa esse valor como índice de uma lista. 
    // Trate as possíveis exceções de conversão e de acesso fora do intervalo. 
    // void processarEntrada(String entrada) { int numero = int.parse(entrada); 
    // List lista = [10, 20, 30]; print(lista[numero]); }
    
    void processarEntrada(String entrada) { 
        try{
            int numero = int.parse(entrada);
            List lista = [10, 20, 30]; 
            print(lista[numero]); 
        } catch (e){
            print('entrada inválida, digita um número de 0 a 2');
        }
    }
    
    processarEntrada('a');
    processarEntrada('a');
}

abstract class FormaGeometrica {
    double calcularArea(double base, double altura);
}

class Triangulo implements FormaGeometrica{
    @override
    double calcularArea(base, altura) => (base * altura) / 2;
}

class Retangulo1 implements FormaGeometrica{
    @override
    double calcularArea(largura, altura) => largura * altura;
}

abstract class Dispositivo {
    void ligar();
}

class Celular implements Dispositivo{
    @override
    void ligar() => print('Celular Ligado!');
}

interface class Calculavel {
    double calcular(double a, double b) => 0.0;
}

class Soma implements Calculavel{
    @override
    double calcular(double a, double b) => a + b;
}

class Subtracao implements Calculavel{
    @override
    double calcular(double a, double b) => a - b;
}

interface class Autenticavel {
    bool autenticar(String senha) {return true;}
}

class Usuario implements Autenticavel{
    @override
    bool autenticar(String senha){
        if(senha == '1234') {
            return true;
        } else {
            return false;
        }
    }
}
    
class Usuario {
    String _email = '';
    
    set email(String novoEmail) {
        if (novoEmail.contains('@')) {
            _email = novoEmail;
            print('OK');
        } else {
            print('Erro: Valor inválido');
        }
    }
}