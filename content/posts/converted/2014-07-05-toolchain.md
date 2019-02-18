---
photo:
  image: 5060103696_625ba60116_z-chain.jpg
  creator: aspis7/Flickr
  url: https://www.flickr.com/photos/aspis7/5060103696/
  license: under CC BY 2.0
  caption: Rusty chain
layout: single
title: My Toolchain Using Bookmaker
created_at: 2014-07-05 10:29
date: 2014-07-05T10:29:21-04:00
image: 5060103696_625ba60116_z-chain.jpg
categories: ["Technology"]
description: Ben Wilson, author, discusses how he writes, edits and publishes a novel.
author: Ben Wilson
tags:
- Ruby
- Markdown
- LaTeX
- Toolchain
---

Now that I'm drafing my fourth novel, I wanted to share a bit about my toolchain. That is, the process by which I document the novel and publish it.

<!--more-->
In software, a [toolchain](http://en.wikipedia.org/wiki/Toolchain) comprises the tools used to create a product, typically where the output of one is the input of another. This is the [Unix Way](http://en.wikipedia.org/wiki/Unix_philosophy), of which I adhere but not as strict as perhaps I should. Like any tool geek, I've played with many different approaches. I'm finally starting to settle down on one.

My law school required one paper to graduate. I wrote five:

* Non-Exclusive Transfer of Copyright
* The Extent of FISA
* Originalist Interpretation of Treason Law
* Evolving Standards Doctrine (Capital Punishment)
* Law & Economic Remedy to Reverse Trademark Infringement

I started using Microsoft® Word, but learned quickly that there was a lot of control lost in the process. When writing a properly formatted legal document, control is paramount. Then I switched to Corel® WordPerfect®, which allowed me to work in the "Reveal Codes" mode, something I'm well aquiainted with. (I started photographic typsetting in 1986, and have been a developer in one fashion or another since 1982.) But, there were still facets of control lost.

<a name='LVM'></a>
**Enter *LaTeX/Vim/Make* (LVM) Toolchain.** I wrote my paper on Treason Law over the summer, which gave me time to explore other formatting options. I discovered [LaTeX](http://en.wikipedia.org/wiki/LaTeX), which has a very rough learning curve. To a large degree, it strips away formatting and lets the author focus on the content. I liked that it allowed me to write in [Vim](http://en.wikipedia.org/wiki/Vim_%28text_editor%29) and use text files and [Make](http://en.wikipedia.org/wiki/Make_%28software%29). I wrote a few macros to properly format my citations, and the high quality of the output, even for a draft, allowed my professors to focus on the content.

**Fiction Writing & Scrivener.** When I started writing *Imbroglio* in 2007, I used my *LaTeX/Vim/Make* toolchain. The approach proved a lot more cumbersome when writing a novel, even though I was able to produce a perfectly formatted PDF suitable for publication. My lack of sophistication in writing and some flaws in the toolchain led me to abandon writing for another couple of years. In 2009, I discovered [Scrivener](http://www.literatureandlatte.com/scrivener.php), and it helped me write *Scintilla*. It's a fine product, but my experience is that it has some of the same formatting woes of MS Word.

<a name='LSR'></a>
**Enter Bookmaker Toolchain (LSR).** Being a tool geek, I had to find a better tool. That ultimately led to my development of [Bookmaker](https://github.com/Merovex/bookmaker), which derives from [Kitabu](https://github.com/fnando/kitabu) but avoids using Prince (IMO, Kitabu violates the Prince license). Kitabu can use Markdown, which I would love to use. (This site uses Markdown.) Bookmaker is fundamentally similar to my earlier LVM toolchain. It's *LaTeX/Sublime Text/Rake* (LSR), with the added benefit of producing ePub.

* **[Sublime Text](http://sublimetext.com)** is a modern text editor, giving me capabilities that I did not have in Vim. (Note: I think most of it is possible in Vim, but I never got to be that sophisticated.) I created a handful of macros that allow me to markup the text quicker than hand-typing.
* **LaTeX** allows for professional formatting of a PDF&mdash;suitable for publishing. With its macros, I can quickly index characters in draft mode so that I can more readily find references to them. I can add other data in the comments as well.
* **Bookmaker** Most book settings are kept in a configuration file. It provides a Rakefile that provides easy commandline options for [Rake](http://en.wikipedia.org/wiki/Rake_%28software%29) that convert the LaTeX files to PDF or ePub, provide statistics, quickly show words in context, etc.

There you go, a brief intro to my toolchain.
