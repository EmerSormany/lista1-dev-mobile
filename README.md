# lista1-dev-mobile

1.1 Tipos e Operadores
1. Declare uma variável inteira para armazenar a idade de uma
pessoa e atribua o valor 28.
2. Crie uma variável double para guardar a altura de uma pessoa
em metros e atribua o valor 1.75.
3. Defina uma variável String para armazenar o nome de um
animal de estimação e atribua um nome de sua escolha.
4. Crie uma variável bool para indicar se uma lâmpada está ligada
e atribua o valor false.
5. Declare duas variáveis inteiras, a e b, com valores 10 e 3,
respectivamente, e calcule a soma.
6. Usando as variáveis do exercício anterior, calcule o resto da
divisão de a por b.
7. Crie uma variável double para o valor de uma compra e aplique
um desconto de 10% usando operadores aritméticos.
8. Defina uma variável String para o nome de um produto e
concatene com o preço em uma frase.
9. Declare uma lista (List) de três nomes de cidades e imprima o
segundo nome.
10. Crie um conjunto (Set) com os números 1, 2, 3, 2 e mostre
quantos elementos únicos existem.
11. Crie um mapa (Map) para associar nomes de frutas a seus
preços e acesse o preço de uma fruta específica.
12. Declare uma variável dinâmica e atribua a ela um valor inteiro,
depois mude para uma String.
13. Use o operador ternário para verificar se uma idade é maior
ou igual a 18 e retorne "Maior de idade" ou "Menor de idade".
14. Utilize o operador de coalescência nula (??) para atribuir um
valor padrão a uma variável que pode ser nula.
4
15. Crie uma variável final para armazenar o valor de PI e tente
alterar seu valor após a atribuição.
1.2 Estruturas de Seleção e Estruturas de
Repetição
16. Peça ao usuário para informar a idade e exiba "Maior de idade"
se for 18 anos ou mais, ou "Menor de idade" caso contrário.
17. Dada uma variável nota, use if/else para exibir "Aprovado" se a
nota for maior ou igual a 7, "Recuperação" se for entre 5 e 6.9,
e "Reprovado" se for menor que 5.
18. Leia um número inteiro e use o operador ternário para exibir
"Par" ou "Ímpar".
19. Dado um número de 1 a 7, use switch/case para imprimir o nome
do dia correspondente (1 = Domingo, 2 = Segunda, ...).
20. Receba três números inteiros e utilize estruturas de seleção para
exibir o maior deles.
21. Use um loop for para imprimir os números de 10 até 1.
22. Some e exiba todos os números pares de 1 a 100 usando um
loop.
23. Peça um número e mostre sua tabuada de 1 a 10 usando for ou
while.
24. Leia números do usuário até que ele digite um valor negativo, e
então exiba quantos números foram digitados.
25. Dada uma lista de nomes, use um for-in para imprimir cada
nome em letras maiúsculas.
1.3 Funções
26. Crie uma função chamada calcularAreaRetangulo que recebe
dois parâmetros obrigatórios, base e altura, e retorna a área do
retângulo.
27. Implemente uma função chamada apresentarPessoa que recebe
o nome (obrigatório) e a idade (opcional posicional). Se a idade
não for informada, apenas imprima o nome; caso contrário,
imprima também a idade.
28. Escreva uma função chamada enviarEmail que recebe um
destinatário obrigatório e dois parâmetros nomeados opcionais:
assunto (com valor padrão "Sem assunto") e corpo (com valor
5
padrão "Mensagem vazia"). Imprima uma mensagem simulando
o envio do e-mail.
29. Considere o seguinte código de execução:
print(somarLista([2, 4, 6, 8]));
Implemente a função somarLista que recebe uma lista de inteiros e
retorna a soma de todos os elementos.
30. Pesquise o que é uma função anônima no dart e crie uma função
anônima atribuída a uma variável chamada saudacao que recebe
um nome e imprime "Olá, [nome]!" quando chamada.
1.4 Coleções
31. Crie uma lista de inteiros chamada numeros com os valores ``.
Adicione o número 40 ao final da lista e imprima o terceiro
elemento (índice 2).
32. Dada a lista var frutas = ['maçã', 'banana', 'laranja', 'banana'],
remova todas as ocorrências de 'banana' e imprima a lista
resultante.
33. Use o método map para transformar a lista `` em uma lista de
strings no formato ['Número 1', 'Número 2', 'Número 3'].
34. Crie um conjunto var letras = {'a', 'b', 'c'}. Tente adicionar 'a'
novamente e verifique se o conjunto ainda contém 'a' após a
operação.
35. Dados os conjuntos set1 = {1, 2, 3} e set2 = {3, 4, 5}, calcule e
imprima a união e a interseção entre eles.
36. Converta a lista `` em um Set para remover duplicatas e exiba o
resultado.
37. Crie um mapa var pessoa = {'nome': 'Ana', 'idade': 25}. Adicione
a chave 'cidade' com valor 'São Paulo' e atualize 'idade' para 26.
38. Verifique se o mapa var produtos = {'celular': 1500, 'notebook':
3000} contém a chave 'tablet'. Se não existir, adicione-a com
valor 1000.
39. Combine os mapas map1 = {'a': 1, 'b': 2} e map2 = {'c': 3} usando
o operador de spread (...), resultando em {'a': 1, 'b': 2, 'c': 3}.
40. Crie uma Queue chamada fila e adicione os elementos 'primeiro',
'segundo', 'terceiro'. Remova o primeiro elemento e imprima o
resultado.
6
41. Use addFirst para inserir 0 no início da fila Queue<int> fila =
Queue.from() e removeLast para remover o último elemento.
42. Converta a Queue fila = Queue.from() em uma lista e imprima o
segundo elemento.
43. Defina uma classe Node que estende LinkedListEntry<Node>
com um campo valor. Crie uma LinkedList<Node> e adicione três
nós com valores 10, 20, 30.
44. Na LinkedList<Node> criada anteriormente, remova o nó com
valor 20 usando unlink() e imprima os valores restantes.
45. Percorra a LinkedList<Node> usando um loop for-in e imprima
cada valor multiplicado por 2.
2.6 OO
46. Crie uma classe Livro com as propriedades titulo, autor e
anoPublicacao. Adicione um método exibirDetalhes() que retorna
uma string formatada como "Título: [titulo], Autor: [autor], Ano:
[ano]". Exemplo de uso:
var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899);
print(livro.exibirDetalhes()); // Título: Dom Casmurro, Autor: Machado de
Assis, Ano: 1899
47. Crie uma classe Contador com uma propriedade privada _valor
(inicializada em 0) e um método público incrementar() que
aumenta _valor em 1. Adicione um método resetar() que define
_valor para 0.
48. Crie uma classe Aluno com as propriedades nome e matricula.
Implemente um construtor padrão que inicializa ambas as
propriedades e um construtor nomeado Aluno.semMatricula que
define matricula como 'Não informada'. Exemplo de uso:
var aluno1 = Aluno('Ana', '20240001');
var aluno2 = Aluno.semMatricula('Bruno');
49. Crie uma classe Produto com as propriedades nome e preco. Use
um construtor para inicializar nome como obrigatório e preco com
valor padrão 0.0 se não for fornecido.
50. Crie uma classe Veiculo com as propriedades marca e
velocidadeMaxima. Em seguida, crie uma subclasse Carro que
adiciona a propriedade quantidadePortas. Exemplo de uso:
var carro = Carro('Toyota', 200, 4);
7
print(carro.quantidadePortas); // 4
51. Crie uma classe Animal com o método emitirSom(). Derive a
classe Gato que sobrescreve emitirSom() para retornar "Miau!".
52. Crie uma classe Forma com o método calcularArea(). Derive as
classes Quadrado (lado) e Circulo (raio) que implementam
calcularArea() de formas diferentes. Exemplo de uso:
Forma forma1 = Quadrado(5);
Forma forma2 = Circulo(3);
print(forma1.calcularArea()); // 25
print(forma2.calcularArea()); // ~28.27
53. Crie uma classe Notificacao com o método enviar(). Derive Email
e SMS, cada uma implementando enviar() com mensagens
específicas (ex: "Email enviado!").
54. Crie uma classe ContaBancaria com uma propriedade privada
_saldo e métodos públicos depositar(valor) e sacar(valor). O
saque só é permitido se houver saldo suficiente. Exemplo de uso:
var conta = ContaBancaria();
conta.depositar(1000);
conta.sacar(500); // OK
conta.sacar(600); // Erro: Saldo insuficiente
55. Crie uma classe Termometro com uma propriedade privada
_temperaturaC. Adicione um método ajustarTemperatura(double
novaTemp) que só permite valores entre -50 e 100.
56. Crie uma classe Retangulo com propriedades privadas _largura
e _altura. Use getters para largura e altura e setters que validam
valores positivos. Exemplo de uso:
var ret = Retangulo();
ret.largura = 10; // OK
ret.altura = -5; // Erro: Valor inválido
57. Crie uma classe Usuario com uma propriedade privada _email.
Use um setter para validar se o email contém @ antes de atribuílo.
58. Crie uma interface Autenticavel com o método bool
autenticar(String senha). Implemente-a na classe Usuario para
verificar se a senha é "1234". Exemplo de uso:
var user = Usuario();
8
print(user.autenticar('1234')); // true
59. Crie uma interface Calculavel com o método double
calcular(double a, double b). Implemente-a em Soma e
Subtracao.
60. Crie uma classe abstrata Dispositivo com o método abstrato void
ligar(). Derive a classe Celular que implementa ligar() exibindo
"Celular ligado!". Exemplo de uso:
Dispositivo dispositivo = Celular();
dispositivo.ligar(); // Celular ligado!
61. Crie uma classe abstrata FormaGeometrica com o método
abstrato double calcularArea(). Derive Triangulo e Retangulo com
implementações específicas.
1.5 Tratamento de Erros
62. Um programa realiza a divisão de dois números inteiros, mas o
divisor pode ser zero. Modifique o código para que o usuário não
veja uma mensagem de erro do sistema caso isso aconteça.
void main() {
int a = 10;
int b = 0;
print(a ~/ b);
}
63. Um texto digitado pelo usuário deve ser convertido para inteiro,
mas pode conter letras ou símbolos. Garanta que, se a conversão
falhar, o programa não seja interrompido abruptamente.
void main() {
String texto = "abc";
int numero = int.parse(texto);
}
64. Dada uma lista com três elementos, o código tenta acessar o
elemento de índice 5. Implemente o tratamento necessário para
que o acesso inválido não encerre o programa.
void main() {
List lista = [1, 2, 3];
print(lista[5]);
}
9
65. Um sistema de cadastro exige que o e-mail digitado contenha o
caractere "@". Caso contrário, uma exceção personalizada deve
ser lançada e tratada.
void main() {
String email = "usuario.example.com";
// Seu código aqui
}
66. Uma função recebe uma string, converte para inteiro e usa esse
valor como índice de uma lista. Trate as possíveis exceções de
conversão e de acesso fora do intervalo.
void processarEntrada(String entrada) {
int numero = int.parse(entrada);
List lista = [10, 20, 30];
print(lista[numero]);
}