import 'dart:io';
void main(){
    // 26. Crie uma função chamada calcularAreaRetangulo que recebe dois parâmetros obrigatórios, 
    // base e altura, e retorna a área do retângulo.
    double areaRetangulo(double b, double h){
        return b * h;
    } 
    
    print(areaRetangulo(2, 5));

    // 27. Implemente uma função chamada apresentarPessoa que recebe o nome (obrigatório) e 
    // a idade (opcional posicional). Se a idade não for informada, apenas imprima o nome; 
    // caso contrário, imprima também a idade.
    String apresentarPessoa(String nome, [int? idade = 0]){
        if(idade != 0){
            return 'Meu nome é $nome e tenho $idade anos';
        }
        return 'Meu nome é $nome';
    }
    
    print(apresentarPessoa('Tobni'));
    print(apresentarPessoa('Tobni', 15));

    // 28. Escreva uma função chamada enviarEmail que recebe um destinatário obrigatório e 
    // dois parâmetros nomeados opcionais: assunto (com valor padrão "Sem assunto") e 
    // corpo (com valor 5 padrão "Mensagem vazia"). Imprima uma mensagem simulando o envio do e-mail.
    void enviarEmail(String dest, {String assunto = 'Sem assunto', String corpo = 'Mensagem vazia'}){
    
        print('''
            Destinatário: $dest
            Assunto: $assunto
            
            $corpo
            
        ''');
        
    }
    
    enviarEmail('Joba');
    enviarEmail('Joba', assunto:'Mesa de RPG');
    enviarEmail('Joba', assunto:'Mesa de RPG', corpo:'Vamos agendar nossa próxima sessão. Calor, Diego e Dolores já confirmaram!');

    // 29. Considere o seguinte código de execução: print(somarLista([2, 4, 6, 8])); 
    // Implemente a função somarLista que recebe uma lista de inteiros e retorna a soma de todos os elementos.
    
    int somarLista(List<int> lista){
        int soma = 0;
        for (int x in lista) {
            soma += x;
        }
        return soma;
    } 
    
    print(somarLista([2, 4, 6, 8]));

    // 30. Pesquise o que é uma função anônima no dart e crie uma função anônima atribuída a uma variável 
    // chamada saudacao que recebe um nome e imprime "Olá, [nome]!" quando chamada.
    var saudade = (nome){
        print('Olá, $nome!');
    };
    
    saudade('joao');
}