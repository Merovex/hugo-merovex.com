---
photo:
  image: octopress-logo.jpg
  creator: David Lanham
  url: http://dlanham.com
  license: Rights Reserved
  caption: Octopress Logo
title: Lessons in Octopress
author: Ben Wilson
description: Ben chats about use of Octopress.
image: octopress-logo.jpg
categories: ["Technology"]
created_at: 2015-01-18 16:27
date: 2015-01-18T16:27:00-05:00
tags:
- Octopress
- Website
- Jekyll
---
<!--Lead Paragraph-->

As [Octopress](http://octopress.org) prepares to morph to version 3.0, I'll be staying with version 2.0.

<!--more-->

I started with Octopress in September 2011. I wavered a bit, temporarily going back to PmWiki, but for a bit over three years Octopress has been my site tool of choice. Brandon has been working on version 3.0 for a while, and over the past few days has started to publicize the 3.0.0 release candidate. I tinkered with the RC for a bit, and ran into a few problems. Then in reading his source material, it appears he's making a philosophical change from how Octopress has operated in the past.

The change is fine, but I personally preferred the 2.x series. After reading some of the traffic on 3.0, I thought now would be a good time to make the full switch to Jekyll (currently 2.5.3). I put a few hours into playing with Jekyll on Friday. The things that sort of annoyed me I started tinkering with. Eventually, I realized I was starting to reverse engineer Octopress. I managed to prune some plugins that I wasn't using. Otherwise, I recognized when I was done I'd have recreated what I liked with Octopress 2.x series. At least to me, Octopress is a thin usability veneer over Jekyll.

Instead, I spent some time playing around with the Rakefile. The code was not [DRY](http://en.wikipedia.org/wiki/Don%27t_repeat_yourself), so I DRY'd it out. I managed to slash about 80 lines of code in the process. Then I decided to group the tasks into namespaces and put them into namespace-specific task files (in the `lib/tasks` directory as used by Rails).

In the process, I implemented the draft paradigm from the latest Jekyll release. Now I can finally do what I have long wanted to...have a series of pre-written articles in the queue.
