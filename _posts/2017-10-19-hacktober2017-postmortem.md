---
layout: post
title: "Hacktober2017 — Postmortem"
date: 2017-10-19 06:56:02 -0300
categories: blogs
tags: [hacktober, hacktoberfest, godotengine, gamedev]
image: /assets/img/hacktober2017/header.png
share_text: "Hacktober2017 — Postmortem"
description: "I decided to create something (which I called tool for lack of a better word) random in the Godot Engine that was simple but also relevant."
color: '#283381'
---

## Much more than just 4 Pull Requests

Anyone who has heard of the famous Inktober should know that it is a daily challenge in which you go to your limits trying to draw something every day during the month of October. Some years ago, a similar event was created to encourage people to spend more time contributing to open-source projects. One of the main goals is to help several people make their very first contributions.

The event was and still is a success, mainly because I started contributing to other projects because of Hacktoberfest in 2015. The following year I saw the event as something mandatory, especially as a self-improvement challenge, since in the previous year I had not managed to achieve the official goal of the event: open at least 4 Pull Requests.

In 2016, I decided to try to do something similar to the Inktober event and contribute to a project a day, in other words, open a Pull Request per day. That worked very well until the end of the first week because exhaustion prevented me from continuing the challenge, mainly because at the time I was already working on some games. Even though I failed at that challenge, I got great results, especially since I made my first contributions to the Godot Engine repository.

A year later, here we are with another Hacktoberfest and I wanted to try reproducing a challenge similar to Inktober again (to do something every day for the entire month). So I decided to create something (which I called “tool” for lack of a better word) random in the Godot Engine that was simple but also relevant (and that could be visual, so I could record videos). At first, it seemed stupid and much more complex than simply opening 4 Pull Requests or even open a Pull Request a day for the entire month.

![](/assets/img/hacktober2017/souls.png){:class="right"} And I was right, it was complex and stupid. But not because it is difficult to program something specific, nor because it is difficult to create things from scratch in Godot Engine. The biggest problem was having to think about simple and relevant things at the same time because Godot Engine already has several types of tools that are simple and very relevant. So every day I tried to think of something to create for the event and I was in the following dilemma:

>“I think I’m going to do X today. No, X is simple but it’s irrelevant because Godot Engine already has something like that or it would be too simple. Why am I doing this? What is the meaning of life?”

In short, my biggest obstacle was the fact that Godot Engine is already too good. To the point that when you try to create anything with it, everything seems much simpler than what you initially had in mind. I felt like I was trying to reinvent the wheel every day.

I could make a small change in the challenge and create more complex things, so I would do more relevant stuff. Unfortunately, that did not help much, it really just messed it up. In a few days, I decided to dedicate myself to some more complex projects, but this ended up leaving me exhausted gradually. On the other hand, some of these more complex projects had great results, were the projects that I liked the most.

## Finally, the results

Regarding the projects, I will highlight here the ones I liked the most:

- **Pick’s Theorem** — This project was one of the best because it ended up helping me with several specific studies of analytical geometry and also ended up introducing me the term “polygon triangulation”, which I did not know before.

{% include figure.html src='/assets/img/hacktober2017/picks.png' title='The result of the study of the “Pick’s Theorem” project.' %}

- **Drawable Canvas** — This project was very simple but I liked doing it because it gave me some ideas for other projects, for example, one of the games I’m working on right now.*

{% include figure.html type='video' src='/assets/img/hacktober2017/painters.webm' title="The game I'm creating right now because of the `Drawable Canvas` project." %}

- **UDP Connections** — This project was one of the most important because I dealt with something I had never tried before: connections for online games. The result was a success, especially considering it was an initial study.

{% include figure.html type='video' src='/assets/img/hacktober2017/udp.webm' title='The result of the study on UDP connections.' width='60%' %}

- **Poly Umi** — This project was a suggestion made by Henrique Campos (PigDev Studio) after I posted the Pick’s Theorem project. It was very interesting to have to deal with polygon triangulation again.

{% include figure.html type='video' src='/assets/img/hacktober2017/umi.webm' title='The result of the “Poly Umi” project.' %}

- **Konami Code** — This project is being listed here only as an honorable mention. It was one of the examples of a simple project that would have been more relevant if Godot Engine was not so powerful, since this project was so easy to program that it took less than 30 minutes (seriously, I swear I’m not being flattering).

{% include figure.html src='/assets/img/hacktober2017/konami.png' title='It took less than 30 minutes with the UI.' %}

In addition to having excelled in some projects, learned new things, had pains in my hands, among other things, one of the results that pleased me most in this event was the recognition of the Godot Engine community, because even if some of the projects don’t look like very relevant, I believe it must have been useful to someone.

## That’s it? Is it over? Will you give up?

![R.I.P. me~](/assets/img/hacktober2017/rip.png){:class="left"} Yeah, it’s over, but I don’t see myself giving up. This challenge made me see that sometimes you have simply reached your goal and you have nothing else to do. If I try to continue, I’ll probably get knocked down by exhaustion (mainly because my right hand hurts again this week) and it will be in vain, because every day it’s harder to think of creating something simple, relevant and that I can record a video (if I disregard the video part, everything I try to create will start to seem more irrelevant). In this case, I am choosing to focus on what is relevant to me now, come back to do some games.

***

I hope this challenge has helped to show people how versatile and simple Godot Engine is, to the point that you can wake up late, create something from scratch in it, and still have time to do many other things on the same day.

I’m going to take a few days to rest and then come back to being active with my games and other projects. I will continue to help as I can, and I will probably still work on more specific tools and continue contributing to many other projects.

If you are interested in the project, you can check the following links (videos and repo):

<a class="twitter-moment" href="https://twitter.com/i/moments/915856964701343747?ref_src=twsrc%5Etfw&limit=3">Random tools for the #Hacktoberfest</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

{% include github-card.html repo="williamd1k0/godot-sandbox" %}

***

![Make engines great again](/assets/img/misc/tromp.png)

>This publication is also available on [Medium](https://medium.com/@tumeowilliam/hacktober2017-postmortem-42eb77f5e6b3).
