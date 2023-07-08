---
layout: post
title: Criptografia de chave pública para leigos
description: Não é tão complicado quanto parece.
share_text: Criptografia de chave pública para leigos
date: 2022-09-10
categories: blogs
tags: [pt, crypto, l10n]
image: /assets/posts/criptografia-de-chave-publica-para-leigos/header.png
card: summary_large_image
---

>Este texto é uma tradução/adaptação de um artigo publicado originalmente por Panayotis Vryonis em seu blog pessoal: [https://blog.vrypan.net/2013/08/28/public-key-cryptography-for-non-geeks/](https://blog.vrypan.net/2013/08/28/public-key-cryptography-for-non-geeks/)

Muitas vezes me pego tentando explicar criptografia de chave pública para os meus amigos.
Para minha surpresa, há pouca coisa escrita sobre o assunto para ajudar alguém sem habilidades matemáticas a entender os conceitos básicos da criptografia de chave pública.
Tudo que encontrei faz o assunto parecer mais complicado do que deveria.

## Criptografia Simétrica
A criptografia de chave pública é baseada no que é chamado de criptografia "assimétrica".
Mas antes, vamos ver como funciona a criptografia "simétrica".

Para entender a criptografia simétrica, imagine que João tenha uma caixa com uma fechadura.
Como de costume, a fechadura tem uma chave que pode trancar e destrancar a caixa.
Então, se João quer proteger alguma coisa, ele coloca na caixa e tranca.
Obviamente, apenas ele ou outra pessoa com uma cópia da chave pode abrir a caixa.

Isso é criptografia simétrica: você tem uma chave e a usa para criptografar ("trancar") e descriptografar ("destrancar") seus dados.

## Criptografia Assimétrica
Agora, vamos ver como funciona a criptografia assimétrica (ou "de chave pública").

Imagine que Ana também tem uma caixa.
Mas esta é uma caixa com uma fechadura muito especial.

Esta fechadura tem três estados: A (trancado), B (destrancado) e C (trancado).

![crypto-pub01](/assets/posts/criptografia-de-chave-publica-para-leigos/crypto-pub01.png)

E tem **duas** chaves separadas (sim, duas).
**A primeira chave só pode girar no sentido horário** (de A para B para C) e **a segunda só pode girar no sentido anti-horário** (de C para B para A).

![crypto-pub02](/assets/posts/criptografia-de-chave-publica-para-leigos/crypto-pub02.png)

Ana pega a primeira chave e guarda para si.
Chamaremos essa chave de chave "privada", porque somente Ana a possui.

Chamaremos a segunda chave de chave "pública".
Ana faz uma centena de cópias dela e dá algumas para amigos e familiares, deixa um punhado em sua mesa no escritório, pendura algumas do lado de fora de sua porta, etc.
Se alguém lhe pede um cartão de visita, ela também lhe entrega uma cópia da chave.

![crypto-pub03](/assets/posts/criptografia-de-chave-publica-para-leigos/crypto-pub03.png)

Então, Ana tem sua chave privada que pode mudar de A para B para C.
E todos os outros têm sua chave pública que pode mudar de C para B para A.

Podemos fazer algumas coisas muito interessantes com essas chaves.

Primeiramente, imagine que você deseja enviar um documento muito pessoal para Ana.
Você coloca o documento na caixa e usa uma cópia da chave pública dela para trancá-lo.
Lembre-se, a chave pública da Ana só gira no sentido anti-horário, então você gira a chave da posição B para a posição A.
Agora a caixa está trancada.
A única chave que pode mudar de A para B é a chave privada da Ana, aquela que ela guardou para si.

É isso!
Isso é o que chamamos de criptografia de chave pública: todo mundo que tem a chave pública da Ana (e é fácil encontrar uma cópia, ela estava distribuindo várias por aí, lembra?) pode colocar documentos em sua caixa, trancá-la e ter a certeza que a única pessoa que pode destrancá-la é a própria Ana.

## Assinaturas Digitais
Há mais um uso interessante desta caixa.

Suponha que Ana coloque um documento nele.
Em seguida, ela usa a chave privada dela para trancar a caixa, ou seja, ela gira a chave da posição B para a posição C.

Por que ela faria isso?
Afinal, qualquer pessoa com sua chave pública pode destrancá-la!
Espere.

Alguém me entrega esta caixa e diz que é da Ana.
Eu não acredito, mas pego a chave pública dela na gaveta onde guardo todas as chaves públicas de meus amigos e tento abrir a caixa.
Giro para a direita, nada.
Giro para a esquerda e a caixa abre!

>"Hum", eu penso.

>"Isso só pode significar uma coisa: a caixa foi trancada com a chave privada da Ana, aquela que só ela tem."

Então, tenho certeza de que Ana, e mais ninguém, colocou os documentos na caixa.
**Chamamos isso de "assinatura digital".**

## Chaves são números
No mundo dos computadores as coisas são muito mais simples.[^1]

"Chaves" são apenas números —números grandes e longos com muitos dígitos.
Você pode guardar sua chave privada, que é um número, em um arquivo de texto ou em um aplicativo especial.
Você pode colocar sua chave pública, que também é um número bem longo, na sua assinatura de e-mail, seu site, etc.
E não há necessidade de caixas especiais, você apenas "tranca" e "destranca" arquivos (ou dados) usando um aplicativo e suas chaves.

Se alguém, mesmo você, criptografa (ou seja, "tranca") algo com sua chave pública, somente você pode descriptografá-lo (ou seja, "destrancá-lo") com a sua chave privada secreta.

Se você criptografar (ou seja, "trancar") algo com a sua chave privada, qualquer um pode descriptografá-lo (ou seja, "destrancá-lo"), mas isso serve como prova de que foi você que o criptografou: ou seja, está "assinado digitalmente" por você.

## Notas

- Ilustrações: [Nicholas Mozart](https://www.instagram.com/nmoz.art/).
- Lettering: [William Watanabe](https://www.instagram.com/spritergors/).

[^1]: As coisas também podem ficar muito mais complexas.
    
    Podemos usar nossa chave privada para assinar um arquivo e depois a chave pública de outra pessoa para criptografá-lo para que somente essa pessoa possa lê-lo.
    E um usuário, ou uma organização, pode assinar digitalmente as chaves de outros usuários para verificar sua autenticidade, etc, etc.
