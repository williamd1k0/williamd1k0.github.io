---
layout: post
title: "Unity Nested Prefabs - Review"
date: 2018-06-30 20:00:00 -0300
categories: gamedev
tags: [unity, gamedev, prefabs, review]
image: /assets/posts/unity-nested-prefabs/header.png
share_text: "Unity Nested Prefabs - Review"
description: "A review made by a Godot Engine user"
color: '#000000'
---


## Unity 2018.2.0x-ImprovedPrefabs

Okay, there're **Nested Prefabs**. 👍

But the workflow needs several improvements.


### Creating Prefabs from scratch

You still can't *create* a Prefab (now called **Prefab Variant**) without a GameObject within a Scene.
There's an `Assets->Create->Prefab Variant` menu button, but it literally does nothing.

> **Unity 2018.3.0b2 update:** You still can't *create* a Prefab without a GameObject within a Scene. There's an `Assets->Create->Prefab Variant` menu button, but now it's disabled because it's used to create a new Prefab from another Prefab. It's a really bad UX imho :/


### Editing Prefabs

You can now *edit* prefabs in isolation, you don't need to add it to a Scene. This is called **Prefab Mode** by the way. 👍

But you can't edit more than one prefab at a time, so it's the same issue as the scene workflow (you can't edit more than one scene *independently*).

In short, there are no scene/prefab tabs

> **Unity 2018.3.0b2 update:** same behavior :/


### Reverting properties

The overrides/revert workflow is not as accessible (UX-speaking) and it's a bit buggy.

I'm having some issues to revert some properties. Eg: I'm trying to revert the Rotation in the Transform component, the editor is saying there's nothing to revert, but there's actually.

> **Unity 2018.3.0b2 update:** This workflow looks worse now :\|

***


You may think this review is biased because I'm a Godot Engine user. No problem. However, it's actually a serious review and I still think you can do better than that. 😉

***

> Original post: [Twitter thread](https://twitter.com/tumeo_/status/1013195514299535360)
