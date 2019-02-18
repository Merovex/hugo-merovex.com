---
photo:
  image: 288389345-pmwiki-o.jpg
  creator: Ben Wilson
  url: http://dausha.net
  license: CC BY 2.0
  caption: Screenshot of PmWiki.org
title: A Geekier Side of Me and PmWiki
created_at: 2015-01-19 06:11
date: 2015-06-28T06:58:00-04:00
image: 288389345-pmwiki-o.jpg
categories: ["Technology"]
description: The developer side of me keeps tweaking my writing toolchain. I keep
  coming back to PmWiki, and wrote a Sublime Text plugin to help me do it the way
  I want to.
author: Ben Wilson
tags:
- PmWiki
- Website
- Series Bible
---
<!--Lead Paragraph-->
I started programming in 1982 as a pre-teen, and keep going back to those skills at the best times. Or, when I should be writing, I'm playing with my writing [toolchain](http://en.wikipedia.org/wiki/Toolchain). Late in December 2014, I wrote a plugin for Sublime Text for PmWiki.

<!--more-->
**The Problem.** [PmWiki](http://pmwiki.org) is a fairly popular, though under-the-radar wiki engine. When you think wiki, you probably think of Wikipedia. That is driven using Mediawiki. Personally, I've never liked Mediawiki. PmWiki had a lot of really cool features that attracted me to it in 2004. I used it when playing a [Lexicon game](http://en.wikipedia.org/wiki/Lexicon_%28game%29) for a Sci-Fi setting for Fudge. (Some of that setting influenced the Postal Marines series.)

To develop a good series, you need a good [series bible](http://en.wikipedia.org/wiki/Bible_%28writing%29). Over the past few years, I've fumbled over a few different mechanisms to make a good series bible. I've tried Scrivener, Evernote, an Octopress-generated static site, and PmWiki. Each one had its weaknesses.

What I wanted was a wiki-experience. To me that means the ability to link objects (pages) by wiki links. If you look at [TvTrope](http://tvtropes.org/pmwiki/pmwiki.php/Main/HomePage), you'll see what I mean. There are pages (see [Princess Bride](http://tvtropes.org/pmwiki/pmwiki.php/Film/ThePrincessBride)) that are chock full of links to other pages. (Providentially, TvTrope uses Pmwiki, though they are in the process of migrating to something-else) For a series bible, this is pure gold because it allows me as an author to integrate facts about characters, locations, etc. seamlessly. There was a time when I was viewed as a naissent asymetric collaboration expert (because of my Lexicon game experience). Wikis are, IMHO, one of the best tools for that sort of collaboration. PmWiki's standard editing interface is via the browser.

However, I also wanted to use [Sublime Text](http://www.sublimetext.com/). This is a core tool of my writing toolchain. Yes, it's a [programmer's IDE](http://en.wikipedia.org/wiki/Integrated_development_environment). I've talked about my [toolchain experience](/posts/toolchain/) before, so I won't dive into Sublime.

I call this a Reese's problem. I want two separate experiences: the power of a good wiki and the power of a good editing tool. As a result, I kept dithering on on how to manage my series bible.

**Enter late December 2014...or is it 2006 calling back?** I used PmWiki for a lot of activities from 2004 to 2009. At the time, VIM was my writing tool of choice. I developed a command-line interface to PmWiki called [Pywe](http://www.pmwiki.org/wiki/Cookbook/Pywe). I abandoned it in 2007, though it was relatively stable. In December 2014, I remembered Pywe. I had adopted a Sublime Text plugin for Octopress, so I realized I could dust off Pywe and make it work as a Sublime Text plugin. If successful, then I have my Reese solution. Because this is a capability for myself, I didn't need the resiliency I'd developed in the old Pywe. It took me only a few hours to cobble together the Sublime plugin. It's currently on Github.

**In Practice.** I've previously mentioned work on [Ombrio for world-building](/worldbuilding/building-a-brave-new-world/). I used this new plugin to start on the series bible for that series as soon as I had it working. At some point, I'll convert the Postal Marine series bible back to PmWiki. It's not terribly difficult to convert between the two syntaxes, especially if I'm using Sublime Text.

This also allows me to put together integrated book synopses. I'd used PmWiki when I wrote the synopsis for *Scintilla*. So, I have had success before in this vein.
