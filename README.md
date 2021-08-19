# Minicurso de Ruby

Seja bem vindo ao conteúdo do minicurso de Ruby, fique à vontade para acessar as aulas, compartilhar ideias e sugerir melhorias. =)

O Ruby é uma linguagem com um cuidadoso equilíbrio. O seu criador, Yukihiro 'Matz' Matsumoto, uniu partes das suas linguagens favoritas (Perl, Smalltalk, Eiffel, Ada e Lisp) para formar uma nova linguagem que equilibra a programação funcional com a programação imperativa.

Ele disse com frequência que está 'tentando tornar o Ruby natural, não simples', de uma forma que reflita a vida.

Elaborando sobre isto, acrescenta:

> O Ruby é simples na aparência, mas muito complexo no interior, tal como o corpo humano.

**Índice**

- [Sobre o curso](#sobre-o-curso)
- [Pré-requisitos de ambiente](#pre-requisitos-de-ambiente)
  - [Instalando o VSCode](<#instalando-o-VSCode-(nossa-sugestão-de-editor)>)
  - [Instalando o Docker](<#instalando-o-docker-(caso-decida-por-utiliza-lo)>)
  - [Setup do ambiente de desenvolvimento](#setup-do-ambiente-de-desenvolvimento)
    - [Executando o container Docker](#executando-o-container-docker)
- [Estrutura do curso](#estrutura-do-curso)
- [Principais links](#principais-links)

## Sobre o curso

Neste curso, nós vamos aprender mais sobre a linguagem de programação Ruby. Ao longo do curso, serão apresentadas aulas que ensinam desde as características básicas da linguagem, bem como as variáveis e constantes, estruturas de repetições, funções, dentre outras.

O curso é todo voltado ao estudo de Ruby puro, em um outro momento abordaremos o framework Ruby on Rails.

## Pré-requisitos de ambiente

- Ruby 2.6
- Editor de texto. Sugestão: Visual Studio Code - [VSCode](https://code.visualstudio.com/)

Para facilitar a sua vida, sugerimos o uso de [Docker](https://www.docker.com/). :smile:

Caso decida por utilizar Docker, não é necessário instalar o Ruby na máquina, pois utilizaremos um container Docker para executar os programas Ruby.

### Instalando o VSCode (nossa sugestão de editor)

Para instalar e configurar siga os passos que estão descritos na documentação oficial do VSCode clicando [aqui](https://code.visualstudio.com/docs).

Fique à vontade para usar o editor de sua preferência.

### Instalando o Docker (caso decida por utilizá-lo)

Para instalar e configurar siga os passos que estão descritos na documentação oficial do Docker clicando [aqui](https://www.docker.com/get-started).

### Setup do ambiente de desenvolvimento

Você terá duas opções para fazer a instalação do ambiente de desenvolvimento.

1. Instalando o Ruby em sua máquina;
2. Utilizando a imagem Docker do Ruby.

> **_NOTE:_** Para a proposta desse curso, é possível utilizar e executar os exercícios online, em seu navegador. Para isso, veja as sugestões na sessão [Principais links](#principais-links).

Para instalar o Ruby, siga os passos que estão descritos na documentação oficial clicando [aqui](https://www.ruby-lang.org/pt/documentation/installation/).

Uma outra opção é instalar algum gerenciador de versões do Ruby, como [RVM](https://rvm.io/rvm/install) ou o [rbenv](https://github.com/rbenv/rbenv). Eles facilitam a instalação e o gerenciamento de versões do Ruby na máquina, é uma opção melhor do que instalar o Ruby diretamente. Siga as instruções de instalação e seja feliz. =)

Mas se você preferir utilizar o container Docker (nossa sugestão é essa), siga o passo-a-passo a seguir.

_(usando docker)_

#### Executando o container Docker

Windows (PowerShell):

```bash
$ docker run --rm --name ruby-course -v $pwd\:/aulas -w /aulas -it ruby:2.6 bash
```

Linux ou MacOS:

```bash
$ docker run --rm --name ruby-course -v $(pwd):/aulas -w /aulas -it ruby:2.6 bash
```

Após executar o comando, você estará dentro do container e pronto para utilizar o Ruby. Experimente conferir a versão do Ruby com o comando:

```shell
ruby -v
```

O resultado esperado é algo como:

```shell
ruby 2.6.6p146 (2020-03-31 revision 67876) [x86_64-linux]
```

## Estrutura do curso

### Class 1: Ruby introduction and basic code structure

- [x] Brief history
- [x] Basic concepts
- [x] IRB
- [x] Example of a program written in Ruby
- [x] Variables
- [x] Data types
- [x] Working with numbers and arithmetic operators
- [x] Logical operators
- [x] Arrays and Hashes (Maps)

### Class 2: Data structures and Control structures

- [x] Strings
- [ ] ~~Regular expressions in Ruby (Overview)~~
- [x] Ranges
- [x] Control structures (if/else, case), loop structures (for, foreach)
- [x] Loop methods of Hashes, Arrays and Ranges
- [x] Methods

### Class 3: Object oriented programming

- [ ] Objects and Attributes
- [ ] Access control
- [ ] Methods and blocks
- [ ] Code blocks
- [ ] Enumerators and Iterators
- [ ] Functionality sharing: heritage, modules and Mixins

### Class 4: Exception handling and file manipulation

- [ ] Exception handling in Ruby
- [ ] Good practices in exceptions usage
- [ ] File manipulation

## Principais links

- [Ruby site](https://www.ruby-lang.org/)
- [Ruby Documentation](https://ruby-doc.org/core-2.6/)
- [Tutorials point - Ruby](https://www.tutorialspoint.com/ruby/index.htm)
- [Practical Object-Oriented Design in Ruby by Sandi Metz](https://www.poodr.com/)
- [The Ruby Way by Hal Fulton](http://therubyway.io/)
- Para executar o Ruby online, em seu navegador:
  - [runrb.io](https://runrb.io/)
  - [Replit](https://replit.com/languages/ruby)
  - [TryRuby](https://try.ruby-lang.org/)
