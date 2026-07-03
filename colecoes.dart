import 'dart:io';
import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
    int valor;
    
    Node(this.valor);
    
    @override
    String toString() => 'Node($valor)';
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

    
}
    