---
layout: post
title: Estou viciado em Makefiles
description: Minha história de ?amor? com o make(1).
share_text: Estou viciado em Makefiles
date: 2022-08-08
categories: blogs
tags: [pt, devaneios, make]
image: /assets/posts/estou-viciado-em-makefiles/header.png
---

Nem todo programador hoje em dia sabe pra que serve um arquivo Makefile, mas quase todo mundo que frequenta o GitHub já deve ter trombado com algum repositório que contém um.

Isso não é coincidência, o [Make](https://en.wikipedia.org/wiki/Make_(software)) (ferramenta que interpreta os Makefiles) já é utilizado há quase 50 anos em vários projetos C e C++.

Entretanto, não é muito conhecido hoje em dia porque acabou perdendo protagonismo para as IDEs com mil e um plugins e linguagens novas com build-system integrado (como Rust e Go).
Mas mesmo tendo perdido o protagonismo, ainda é uma ferramenta muito poderosa e versátil sem deixar de ser leve e minimalista.

Em resumo, Make é uma ferramenta de automação de build, não é um build-system exclusivo de uma linguagem específica.

O conceito dele é bem simples: você define um arquivo "target" (um executável, por exemplo), um ou mais arquivos que o target depende (os "pré-requisitos"), e uma "receita" pra **fazer** o target.

Só existe um problema, o funcionamento é simples somente depois que você entende a sintaxe e a semântica de um arquivo Makefile, isso porque a estrutura é extremamente contraintuitiva.

Eu comecei a usar Make alguns anos atrás sem realmente conhecer todo o potencial da ferramenta.
Como eu não conseguia entender o funcionamento só olhando outros Makefiles (já que boa parte deles são extensos e complexos, dependendo do projeto), a única coisa que eu realmente entendia era que dava pra usar Make como uma espécie de task runner.

Exemplo de um conversor de YAML para JSON usando Make como task runner:

```make
yaml2json:
	yj input.yml > output.json

clean:
	rm output.json
```

Usar o Make como um task runner é um ótimo quebra-galho quando você precisa criar mais de uma tarefa, mas não quer ter que discriminar subcomandos manualmente dentro de um shell script.

Segui usando Make dessa forma por alguns anos, até resolver tomar vergonha na cara e sentar pra aprender como de fato utilizar Make como uma ferramenta de automação de build.

Dois meses atrás eu tentei parar pra aprender o jeito correto de se utilizar o Make.
Utilizei o mesmo exemplo acima como referência.

Agora, em vez de uma "task" e uma lista de comandos, temos um "target", um "pré-requisito" e uma "receita":

```make
output.json: input.yml
	yj $< > $@

clean:
	rm output.json
```

>NOTA: `$<` e `$@` são variáveis automáticas que representam o primeiro pre-requisito e o target, respectivamente.

Esse post não é um tutorial, então não vou me aprofundar em explicar como um Makefile poderia ser melhor utilizado com definições de inputs e outputs dinâmicos e afins.
O ponto importante é que, escrever uma receita em vez de uma simples task tem uma vantagem crucial: agora o Make só vai executar a receita se o pré-requisito tiver alguma modificação recente, caso contrário a receita é ignorada (uma vez que o target já está **feito**).

Depois que eu entendi esse ponto crucial, um novo mundo se abriu pra mim.
Isso abre um leque quase infinito de possibilidades pra quem costuma automatizar vários processos usando shell scripts, principalmente aqueles que envolvem criação de novos arquivos (tal qual conversão de arquivos exemplificado acima).

Nesses últimos dois meses eu me tornei a pessoa que espalha Makefiles igual uma pessoa com cabelo comprido espalha fios de cabelo por onde passa.

Tenho utilizado Make pra converter arquivos, renomear aquivos em massa, automatizar backups dos meus servidores, sincronizar arquivos remotamente, e recentemente eu até criei um [gerador de sites usando somente Make como build-system](https://github.com/williamd1k0/sake) (talvez eu fale mais sobre isso em um post futuro).

Caso nunca tenham tentado usar Make, recomendo que experimentem brincar um pouco.
Pode ser um pouco complicado entender o funcionamento no início, mas depois que você pega o jeito fica muito mais prático.
