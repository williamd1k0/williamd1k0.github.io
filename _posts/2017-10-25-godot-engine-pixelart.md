---
layout: post
title: "Godot Engine and pixel art: A better love story than Twilight"
date: 2017-10-26 23:50:14 -0300
categories: gamedev
tags: [godotengine, gamedev, pixelart, tutorial]
image: /assets/img/godot-pixelart/header.png
share_text: "Godot Engine and pixel art: A better love story than Twilight"
description: "So, I’m writing this because Godot Engine has some tricks (not hacks) that turn Godot Engine into the best game engine for pixel art games."
color: '#99e9fe'
---

>This article covers only the Godot Engine 2.

## Once Upon a Time

First of all, if you fell here and don’t know the Godot Engine, it’s an awesome game engine (and it is free and open-source). You can see more on the [official website](https://godotengine.org/){:target="_blank"}.

{% include figure.html src='/assets/img/godot-pixelart/editor.png' title='The Godot Engine Editor.' %}

So, I’m writing this because Godot Engine has some tricks (not hacks) that turn Godot Engine into the best game engine for pixel art games. If you already know Godot Engine, you know that it has a dedicated 2D engine with no hacks and pixels as units. That’s really amazing, but that’s not all.


## My pixel arts are blurry, oh noes!

If you already tried Godot Engine, you should probably know that in the default configuration the engine applies filters to your textures. Obviously this is not cool for pixel arts. To avoid this, you need to disable texture filters and mipmap generation (click [here](https://en.wikipedia.org/wiki/Mipmap){:target="_blank"} if you don’t know what mipmap is).

{% include figure.html type='video' src='/assets/img/godot-pixelart/inspect.webm' title='Disabling filters and mipmaps in the inspector' class='right' %}

If you try to inspect a texture in the editor, you’ll find an option called flags that contains filters and mipmaps enabled. If you disable them, it will automatically create a “flag” file for that texture. This looks promising but… what if your game has bazillion of textures?

Well, that feature is useful only if you need to change flags for specific textures. Fortunately, there is a global way to disable filters and mipmaps in the project settings.

{% include figure.html src='/assets/img/godot-pixelart/imgloader.png' title='You can find the options in the “Image Loader” section.' %}

## Let’s make a Full HD pixel art game

Sometimes you need to create a pixel art game that can be resized, for example if you want to create a game for LOWREZJAM, you’ll need to resize the viewport because playing a game in 64x64 is a bit difficult.

{% include figure.html type='video' src='/assets/img/godot-pixelart/resize.webm' title='Screen stretch working as expected. [Eline ©️ Novastrike Media]' class='left' %}

So, this is very simple to set up. In the Display section, you can set the game resolution that will be used as an internal/native resolution. Then you can enable the screen stretch that will stretch the screen when you resize the window.

There are 2 options for the stretch mode: viewport and 2D. For now select the mode “viewport” (I’ll talk about the modes below). Also, you’ll probably want to keep the aspect ratio of the screen, so you can also configure it.

{% include figure.html src='/assets/img/godot-pixelart/stretch.png' title='Setting up the screen stretch.' %}

## Rotating pixels is a heinous crime

Many pixel artists know that rotating pixels is something very ugly, visually speaking. For a very simple reason, a pixel is not something rotatable if you consider how a screen works.

On the other hand, some developers prefer to rotate the pixels. Regardless of which one is right, in Godot Engine you can do both depending on the screen stretch mode you use.

In the **viewport mode**, the entire viewport will be resized and the internal resolution will be maintained, this will prevent any pixel from being rotated.

{% include figure.html type='video' src='/assets/img/godot-pixelart/sonic.webm' title='The sprites are rotating, but the pixels are not. [Sonic Mania © SEGA]' %}

However, in **2D mode**, the sprites will be resized and the internal resolution will be neglected so the pixels can be rotated if you want. This mode is actually useful if you are working with general/HD art.

{% include figure.html type='video' src='/assets/img/godot-pixelart/stardew.webm' title='The sprites and pixels are rotating. [Stardew Valley © ConcernedApe]' %}

## Very fast at incredible floating speed

So, you are creating a true pixel art game, with a low resolution and using the screen stretch in the viewport mode. Now you have a new problem because of floating point numbers in your game code.

If you create some animations to move your sprites, or move your sprite considering the delta time, you will have some problems of imprecision in the coordinates. This is because sometimes the position of your sprite will be a floating point number, not an integer. For example, if the **X-axis** is **0.5**, that means your sprite is positioned half-pixel to the right.

{% include figure.html type='video' src='/assets/img/godot-pixelart/float.webm' title='Moving half-pixels to the right and down. [Eline ©️ Novastrike Media]' class='left' %}
The problem is that there is no half-pixel if you are dealing with a perfect pixel positioning. This results in some visual glitches when the coordinates are not integer numbers.

To fix that, just enable the 2D pixel snap in the project settings (Display section). It’s really simple, isn’t it?

{% include figure.html src='/assets/img/godot-pixelart/snap.png' title='This option will snap floating coordinates to integer.' %}

## Profit

That’s all. This is what you need to know to start using Godot Engine for pixel art games. Many developers using Godot Engine should already know these tricks, but I’m sure a lot of people still don’t know. For this reason, I wrote this mini-guide on how to configure the Godot Engine for pixel art games, so you can avoid some of these issues.

***

![Make engines great again](/assets/img/misc/tromp.png)
