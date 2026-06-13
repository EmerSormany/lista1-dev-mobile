import 'dart:io';
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

}
    