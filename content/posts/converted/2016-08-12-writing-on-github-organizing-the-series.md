---
author: Ben Wilson
title: "Writing on Github: Organizing the Series"
categories: [ "Writing"]
date: 2016-08-12T00:00:00-04:00
tags:
 - GitHub as an Author
 - Publishing
photo:
    license: "CC BY 2.0"
    image: 28385505785-3bf2146ece-o.jpg
    creator: fredisonfire/Flickr
    url: https://www.flickr.com/photos/29442760@N00/28385505785/
    caption: "Exile on Ontario St"
description: "As a developer, I find using Github as a writer soothing. Here are a few tips I've picked up."
---

If you scan the blog posts, you'll see my vacillating between different toolchains for producing novels. As recently as [Unsharpening the Axe](/posts/unsharpening-the-axe/), I have moved back to writing using an [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) and other techniques reminiscent of software development. To further discuss the approach, I wanted to offer a few tips on using Github as a writer that I'm adopting.

<!--more-->

What inspired me to write this was watching the [Github Universe 2016 playlist](https://www.youtube.com/playlist?list=PL0lo9MOBetEEUkazoHeLK7eVW-b2lyLwA). Chris Wanstrath, one of Github's co-founders, discussed how Github is more than a way to share code and how it is being used is changing. My use of it as a writer is not what Github intended. However, as a platform, it lends itself well to that use. Github has a repository to discuss activities in its headquarters.

When writing a novel series, there are a few challenges. First, how do you keep track of all of what happens in the series. Second, how do you keep track of all the books.

Managing the series project is done via the Series Notebook or Series Bible, depending on what you want to call it. Perhaps I'll write about this in a later post. There has been plenty said on this topic by others, so the question for myself is whether I have any value to add to this topic.

How to manage the project content? With Github, there are a couple ways to do this. I have previously written on how to do so when using [Scrivener](/posts/automating-scrivener-github-commit/). However, when using my custom tool "[Verku](/posts/unsharpening-the-axe/)," more opportunities abound.

Github recently changed its billing policy. In the "old days" (before Summer 2016) a personal account had a limited set of private repositories. As an author, [protecting your work product](/posts/copyright-work-product/) is important in intellectual property disputes. With the limited repositories, the wise move for an author would be to have one massive repository for the entire series. The Series Notebook and Novels would be tightly coupled. The disadvantage is if you opt to use Git's features for tracking your changes then you will get into a quagmire of branch management.

In Summer of 2016, Github opted to offer unlimited repositories for paying customers. The downside is the cost is a tad under $90/year. The upside is it is much easier to manage via submodules. A [Git Submodule](https://git-scm.com/docs/git-submodule) is essentially a method for co-locating multiple independent Git repositories inside another "Series" repository. Thus, I can use a couple commands to clone the series repository and the submodulized Book repositories. The Series Notebook could be the Series Repository, within the Series repository, or another submodule. I have it as a part of the Series repository right now.

Just to give you an idea of what it looks like, here are two screenshots of the Postal Marines github repositories:

![Screenshot of Github Series](https://dausha.s3.amazonaws.com/images/screenshot-github-series.png)

The first is a screenshot of the series, which shows how I organize the Notebook, the Books, and my efforts to modernize and unify the toolchain (via scripts). The second screenshot shows a few of the books that I have migrated over. I chose to blur my work-in-progress, which has not yet been migrated out of the original repository, and the commit comments. Other books are in the to-be-transitioned category and aren't in this view.

![Screenshot of Github Books](https://dausha.s3.amazonaws.com/images/screenshot-github-books.png)

As you can see, I am still in the progress of the transition. I've been a right proper sluggard for a while. Reorganizing the deck chairs on the RMS Titanic is how this feels, but my motivation to write is returning.
