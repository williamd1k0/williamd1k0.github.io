---
layout: post
title: "Qual é o Melhor Antivírus?"
date: 2018-11-05 22:34:00 -0300
categories: blogs
tags: [antivirus, virus, malware, adware]
image: /assets/posts/melhor-antivirus/avast.png
share_text: "Qual é o Melhor Antivírus?"
description: "🤔🤔🤔"
color: '#f38f54'
script: /assets/posts/melhor-antivirus/script.js
---

><span {% include tooltip info="Pular para o resumo" pos="right" hilite="no" %}>[*TL;DR*](#tldr)</span>

***

[Antivírus são efetivos?]:<>

No geral, as pessoas costumam instalar somente **adwares**, que são os **malwares** (programas maliciosos) que injetam propagandas em lugares que não deveriam ter.
Mas em alguns casos as pessoas podem acabar instalando algo mais perigoso, como algum malware que rouba dados pessoais, como contas de redes sociais ou até contas bancárias, ou que causa algum tipo de dano em dispositivos ou danos materiais, como sequestro ou corrompimento de arquivos pessoais.

Mesmo assim, um antivírus não vai ajudar muito se por um acaso você instalar um vírus que ainda não esteja no banco de dados do seu antivírus.
Por exemplo, se você já usou o **Avast Antivírus** deve ter visto em algum momento uma notificação com a mensagem <a href="" id="play-avast" {% include tooltip info="🔊" pos="up-right" hilite="no" %}>"as definições de vírus foram atualizadas"</a>.
Essa mensagem quer dizer que antes dessa atualização o seu computador poderia ter sido infectado por alguma ameaça que foi criada recentemente, e isso provavelmente aconteceu com algumas pessoas pois não teria como saber como se defender de uma ameaça totalmente nova.

Além dos antivírus não serem 100% efetivos, eles ainda costumam usar muitos recursos do seu computador ou smartphone, isso acontece porque o programa precisa sempre iniciar quando você liga o dispositivo (deixando a inicialização mais lenta) e precisa sempre monitorar tudo o que você abre ou executa (deixando o dispositivo mais lento no geral).
Ou seja, essa proteção tem um custo, mas é um custo muito alto considerando que não é uma proteção garantida.

## O Bom Senso é o Melhor Antivírus

Nenhum usuário de computador ou smartphone realmente precisa de um antivírus (exceto se você for uma criança ou idoso que não está acostumado a lidar com tecnologias).
É tudo uma questão de bom senso em saber como se comportar na internet, da mesma forma que as pessoas sabem que não se deve frequentar lugares sem iluminação e becos pois a chance de ser um lugar perigoso é muito maior.

A maioria dos malwares pode ser encontrada em programas piratas, e adwares são facilmente encontrados em programas proprietários, principalmente *bundlewares*. Neste caso já daria para evitar a maioria dos vírus somente parando de usar este tipo de programa.

### Bundlewares

Bundlewares são programas que instalam outros programas que você não solicitou. Por exemplo, se você tentar instalar o **Adobe Flash Player**, ele vai tentar te empurrar algumas ferramentas do <span {% include tooltip info="John McAfee didn't kill himself" pos="up" hilite="no" %}>**McAfee**</span> (que ironicamente deveria ser um antivírus).

![Flash Player](/assets/posts/melhor-antivirus/flash-player-eww.png)

Neste caso, o bundleware é explícito pois é simples recusar os programas indesejados, basta ler com atenção. Entretanto, a maioria dos bundlewares baixa outros programas direto no instalador, e as vezes você não percebe que tem uma opção para recusar os outros programas.

![DAEMON Tools - Installer](/assets/posts/melhor-antivirus/daemon-installer.png)

Neste outro caso, o bundleware está contido no instalador e a opção de recusa está sem muito destaque. Note que mais uma vez o bundleware tenta empurrar um antivírus.

Este tipo de bundleware possui uma lista de programas parceiros e o instalador consegue fazer uma busca no seu computador para saber se você já tem algum deles instalado.
Isto é basicamente uma forma de monetização, porém é algo bastante intrusivo, principalmente porque você não tem como saber que tipo de informação ele acessou.

### Evitando Programas Proprietários e Piratas

Um dos maiores problemas é a questão da busca por programas.
Geralmente as pessoas costumam buscar por programas e instalar os primeiros que elas encontram, ou aqueles que parecem mais atraentes (em termos de interface gráfica), ou as vezes por indicação, seja indicação de algum amigo ou do próprio mercado (por exemplo, Photoshop).
A maioria dessas indicações serão programas proprietários (**proprietary software** no inglês), e alguns serão gratuitos e outros pagos.

Se for gratuito, você vai instalá-lo tendo uma chance de ser um bundleware.
Se for pago, você provavelmente vai tentar instalar uma versão pirata.

Nunca é bom arriscar, então você precisa evitar este tipo de programa. E mesmo que você ache belo e moral baixar programas piratas (não estou julgando isso de forma alguma), isso vai ser sempre algo perigoso, principalmente porque esse tipo de conteúdo é muito usado para injetar malware, então mesmo que o programa funcione ele ainda pode conter um vírus oculto.

A melhor forma de resolver isso é procurando por programas alternativos que sejam mais seguros e, principalmente, priorizando programas que sejam **livres** ou pelo menos de código-aberto (**open-source** no inglês).

Um programa ser livre ou open-source não significa que ele será bom, mas sim que ele pelo menos será mais seguro, isso porque boa parte das pessoas que utilizam este programa garantem que ele seja seguro através de auditorias e contribuições no código-fonte.

## AlternativeTo

A princípio procurar por programas alternativos parece ser uma tarefa complicada, mas na verdade é algo bem simples. Existe um site que serve exatamente para essa finalidade, o **AlternativeTo**. Ele funciona de uma forma simples e direta, você pesquisa um programa e ele te mostra uma lista de programas que fazem o mesmo que ele (ou fazem algo parecido).

Essa lista de programas alternativos é mantida pela própria comunidade, ou seja, um usuário qualquer pode chegar no site e alterar as informações do programa, adicionar outras alternativas e também avaliá-los.

### Funcionamento Básico do AlternativeTo

Vamos usar o exemplo do bundleware citado acima, o **DAEMON Tools**, que é basicamente um programa de emular CD/DVDs (muito usado para emular cópias de mídias, principalmente piratas). Primeiro você acessa o site do AlternativeTo ([alternativeto.net](https://alternativeto.net/)) e busca pelo nome do programa.

![DAEMON Tools - AlTo Search](/assets/posts/melhor-antivirus/daemon-search.png)

Abrindo a página do programa, você vai poder ver algumas informações úteis sobre ele, como as plataformas disponíveis (no caso Windows e Mac) e o tipo de programa (que no caso é **Freemium**, ou seja, é pago mas tem uma versão gratuita, geralmente com propagandas).

![DAEMON Tools - AlTo Page](/assets/posts/melhor-antivirus/daemon-page.png)

Neste caso específico, você também pode notar que o programa foi marcado como [**⚠️ Bundleware**](#bundlewares).

Descendo a página você tem a lista de alternativas.
A lista é ordenada por vários fatores, como quantidade de *Likes*, popularidade recente e quantidade de avaliações boas.

![DAEMON Tools - AlTo Page](/assets/posts/melhor-antivirus/wincdemu-page.png)

O primeiro desta lista é um programa chamado **WinCDEmu**.
Ele possui várias avaliações boas e o mais importante, ele está marcado como **Free _Open Source_**. Isso quer dizer que o programa tem o código-fonte aberto e livre.

Por fim, clicando nesse programa você vai ter acesso a outras alternativas, mas no caso você pode clicar em "Official website" e testar o programa.


## "Mas eu realmente preciso deste programa proprietário"

Na maioria dos casos você não precisa.
Mas mesmo assim, se você quiser instalar algum programa suspeito ou pirata porque você acha que precisa (por exemplo, quando algum curso ou trabalho te obriga a usar um programa específico), você pode tentar fazer isso de algumas formas mais seguras.

Se você precisa instalar algum programa que é considerado bundleware, você pode tentar usar uma sandbox, que é um tipo de programa que isola uma parte do seu sistema, para quando você executar algo dentro dele, esse programa não se misture com o seu sistema real.

Caso você queira instalar um programa pirata, primeiro é preciso saber se o que você baixou é mesmo o programa que você queria.
Então você pode tentar também usar uma sandbox.

Em alguns casos a sandbox não vai conseguir rodar o seu programa por problemas de compatibilidade, então uma alternativa a isso seria utilizar máquinas virtuais. Este processo todo pode ser complicado, mas é importante não arriscar nesses casos específicos.

### Torrent Nunca Mais?

Pouca gente sabe disso mas, torrent não é sinônimo de pirataria.
Torrent é somente um protocolo de transferência em *P2P*, então você pode transferir qualquer coisa usando ele, independente se for pirataria ou não.

O problema do torrent é o programa que você usa para transferir os arquivos.
Este tipo de programa expõe a sua rede, então seria fundamental utilizar somente programas livres. Programas como o <a href="https://www.theverge.com/2015/3/6/8161251/utorrents-secret-bitcoin-miner-adware-malware" target="_blank" {% include tooltip info="Notícia: uTorrent instala mineradores de criptomoedas" pos="up" hilite="no" %}>uTorrent</a> podem expor o seu computador por serem adwares e também expor a sua rede, já que você não tem como saber se o código usado nesses programas é seguro.

Para resolver isso você pode começar a utilizar o [AlternativeTo](#alternativeto) e buscar por alternativas ao uTorrent que sejam pelo menos livres ou open-source.

## Antivírus em dispositivos Android

Antivírus para **Android** é absolutamente inútil. O Android é um sistema operacional bastante restrito, então o máximo que daria para explorar seria o uso de propagandas em excesso, a menos que você dê permissão para um aplicativo fazer o que ele quiser, como expor a sua localização.

Mesmo o Android sendo mais seguro, ele é o sistema mais fácil de enganar usuários, principalmente porque ele possui uma loja de aplicativos bastante acessível, a **Play Store**. A maioria dos aplicativos em destaque na Play Store tem propagandas em excesso, e a maioria das pessoas instala os mais famosos, mesmo eles tendo propagandas.

Para solucionar isso você também pode usar o [AlternativeTo](#alternativeto) (por exemplo, pesquisar alternativas ao <a href="https://www.theverge.com/2018/11/1/18051294/whatsapp-status-advert-instagram-stories" target="_blank" {% include tooltip info="Notícia: WhatsApp irá exibir propagandas nos status" pos="up" hilite="no" %}>WhatsApp</a>). Além disso, você também tem a opção de utilizar alguma loja alternativa, como o **F-Droid**, que só disponibiliza aplicativos livres.

Caso você ainda queira usar algum aplicativo proprietário, fique atento as permissões que ele requer. Por exemplo, um aplicativo de calculadora requerer a sua localização seria no mínimo suspeito.


# TL;DR

- Antivírus não são efetivos.
- Pare de usar programas piratas.
- Busque sempre por <a href="#alternativeto" {% include tooltip info="AlternativeTo :)" pos="up" hilite="no" %}>alternativas</a> livres ou open-source.
- Dê uma chance para o <a href="https://f-droid.org/" target="_blank" {% include tooltip info="Ele não morde :3" pos="down" hilite="no" %}>F-Droid</a>.

> <span title="Proprietary software is often malware - GNU Philosophy">Todo software proprietário é um malware em potencial.</span>

<audio id="audio-play-avast">
	<source src="/assets/posts/melhor-antivirus/avast-definicoes-de-virus-foram-atualizadas.ogg" type="audio/ogg">
</audio>