# Silabador

Biblioteca Ruby para separar palavras em sílabas.

## Instalação

Adicione esta linha ao seu Gemfile para usar direto do GitHub:

```ruby
gem 'silabador', git: 'https://github.com/PablUoo/silabador.git'
```

Depois, rode:

```bash
bundle install
```

## Uso

Aqui está um exemplo simples para separar uma palavra em sílabas usando a gem:

```ruby
require 'silabador'

palavra = "automóvel"
sílabas = Silabador::PtBr.silabas(palavra)
puts sílabas.join("-")  # Saída esperada: a-u-to-mó-vel
```

## Desenvolvimento

- Após clonar o repositório, instale dependências com:

```bash
bin/setup
```

- Rode os testes com:

```bash
rake test
```

- Para abrir um console interativo:

```bash
bin/console
```

- Para instalar localmente:

```bash
bundle exec rake install
```

- Para liberar uma nova versão:

Atualize o número da versão em `lib/silabador/version.rb` e rode:

```bash
bundle exec rake release
```

Isso criará uma tag, fará push no Git e enviará a gem para o RubyGems.

## Contribuição

Bug reports e pull requests são bem-vindos no GitHub:  
https://github.com/PablUoo/silabador

Este projeto é um espaço seguro e acolhedor para colaboração. Leia o [Código de Conduta](https://github.com/PablUoo/silabador/blob/master/CODE_OF_CONDUCT.md).

## Licença

Esta gem é licenciada sob a licença MIT.  
Veja em: https://opensource.org/licenses/MIT

