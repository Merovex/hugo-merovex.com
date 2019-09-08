---
title: Octpress to Jekyll
author: Ben Wilson
description: In my recent overhaul of Dausha.net from Octopress to Jekyll, I'm reminded of the beauty of simplicity.
categories: ["Technology"]
tags:
- Octopress
- Website
- Jekyll
- PmWiki
- Website
photo:
  image: octopress-logo.jpg
  creator: David Lanham
  url: https://dlanham.com
  license: Rights Reserved
  caption: Octopress Logo
date: 2015-10-12T18:44:00-04:00
created_at: 2015-10-12 18:09
---

Beyond the cosmetic changes on Dausha.net, I've overhauled the underlying software by migrating to Jekyll.

<!--more-->

Back in January, I discussed pending changes within [Octopress](/posts/lessons-in-octopress/). Through the years, I've basically toggled between PmWiki and Octopress. I've not liked database-driven content management systems, and both of these are file-based.

What I liked about Octopress is its use of Markdown. Octopress is based on [Jekyll](http://jekyllrb.com), which itself is a pretty neat little tool. Octopress brought with it overhead through custom plugins. As the author himself said when he discussed moving to Octopress 3.0, the 1.x and 2.x series were emulations of his way of deploying Jekyll.

A couple weeks ago, I quietly tried to re-implement Jekyll with all that I thought I liked about Octopress. That came with a rather immodest theme change. My concept was to move away from Octopress. In the end, I essentially cloned Octopress.

One capability I wanted was the ability to host more directly on GitHub. When using Octopress in that context, you're obliged to compile the site on local, then push only the compiled output to GitHub. The problem there is a split repository. I wanted to get away from that.

This weekend, I re-reimplemented the site in pure Jekyll. Now it only uses the basic plugins GitHub permits. It took a bit to make some of the plugins work without plugins...and I found that I didn't care for some of the features.

What's the result? I have virtually all of the functionality working without plugins. Seriously, I had a lot of unnecessary junk. I had some fancy plugins, but I found that by rethinking what I was doing, I ended up with a simpler solution. I'm reminded that when learning any new language (human or computer), it is important to think in that language's idioms.

* I had a Liquid Tag for the image that appears in the article above. Without the ability to create a custom tag, I found that by re-implementing `layouts/post.html`, I got rid of the need.
* Octopress has a plugin for implementing category lists. I replaced it with an include that provided the same capability. The plugin was superfluous. I also gained a better appreciation of the nuance between category and tags.
* Instead of using complex redirects to track book linking, I added `data/books.yml` which gave me the flexibility to change the links as desired. I do couple more closely with [bit.ly](https://bit.ly), but it's not too hard to switch off should I need to.
* I abstracted the Rakefile to a central directory. This allows me to use the same logic should I opt to run more sites.
* I've started using [GitHub Issues](https://github.com/Merovex/merovex.github.io/issues) related to the repository to track actions. As I went camping over the weekend, it helped me regain momentum today.

There were more than these lessons. But, that's all I remember now.

Looking over my site, I notice that I have trends. In October I tend to clean up the technology.

I want to thank Brandon Mathis for his work on Octopress. His platform gave me the urge to move in the right direction. He provided the training wheels I needed to make the full transition.

My biggest regret in this arena is that I did not think to code a solution like this back in 1998 when I first instantiated this blog. Everything done here could have been done by me then in Perl. I just lacked the vision.
