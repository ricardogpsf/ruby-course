# Aula 01

Aqui teremos os exercícios e exemplos de código feitos em classe, além de explicações e dicas adicionadas a este README.

## Conceitos básicos

    - Ruby é uma verdadeira linguagem de programação orientada a objetos. Em Ruby, tudo é um objeto!
    - Suporte à programação funcional.
    - Classes abertas, ou seja, você pode modificar o comportamento sem precisar estendê-las.
    - Muito fácil de usar metaprogramação, praticamente você usa sem saber.
    - Open-source e está disponível gratuitamente na Web, mas está sujeito a uma licença.
    - Ruby é Flexível.
    - Ruby é uma linguagem de programação interpretada de propósito geral.
    - Ruby is a server-side scripting language similar to Python and PERL.
    - Ruby tem uma sintaxe limpa e fácil que permite que um novo desenvolvedor aprenda de forma rápida e fácil.
    - Ruby tem sintaxe semelhante à de muitas linguagens de programação, como C++ e Perl.
    - Ruby é muito escalável e grandes programas escritos em Ruby são de fácil manutenção.
    - Ruby pode ser usado para desenvolver aplicativos de Internet e intranet.
    - Ruby pode ser instalado em ambientes Windows e POSIX.
    - Ruby suporta muitas ferramentas GUI como Tcl / Tk, GTK e OpenGL.
    - Ruby pode ser facilmente conectado a DB2, MySQL, Oracle e Sybase.
    - Ruby tem um rico conjunto de funções integradas, que podem ser usadas diretamente em scripts Ruby.

## IRB (Interactive Ruby)

IRB é um programa que já vem com o Ruby e mostrará os resultados de quaisquer instruções que você digitar. Brincar com código Ruby em sessões interativas como essa é um jeito formidável de aprender a linguagem.

### Comom usar?

Após já ter o Ruby instalado, abra um terminal, digite `irb`, então pressione `Enter`. O resultado deve ser algo como:

```shell
irb(main):001:0>
```

> \***\*Note\*\***: Se você estiver utilizando o Docker, então isso deverá ser feito dentro do container. Caso você esteja executando os exemplos online em seu nevagador, não é necessário executar o IRB, pois você já está em um ambiente semelhante ao IRB.

Após o passo anterior, você já está no console interativo do Ruby e pode executar comandos da linguagem. Experimente executar uma operação:

```shell
irb(main):001:0> 1 + 1
```

Resultado:

```shell
=> 2
```

É possível executar qualquer operação do Ruby, inclusive criar variáveis, chamar métodos, etc. Por exemplo:

```shell
irb(main):001:0> name = "Ricardo Galeno"
```

Resultado:

```shell
=> "Ricardo Galeno"
```

Chamando o método `split` da classe `String`:

```shell
irb(main):001:0> name.split(" ")
```

Resultado:

```shell
=> ["Ricardo", "Galeno"]
```

Você pode conferir a classe do objeto para qualquer variável criada:

```shell
irb(main):001:0> name.class
```

Resultado:

```shell
=> String
```

## Utilizando a documentação oficial

Para conferir mais classes e todas as opções de métodos dessas classes, consulte a [documentação oficial do Ruby 2.6](https://ruby-doc.org/core-2.6.1). Lá você tem exemplos de uso dos métodos, descrição sobre eles, pode pesquisar por algum método ou classe específicos, e ainda pode conferir a implementação original do código da linguagem em C. =)

Para pesquisar por uma classe ou método basta digitar o nome do que deseja consultar no respectivo campo de filtro que existe no meio da página do site:
