---
author: Ben Wilson
title: Unsharpening the Axe
categories: ["Technology"]
tags:
 - Scrivener
 - Toolchain
 - GitHub as an Author
 - LaTeX
 - Markdown
photo:
    license: "CC BY 2.0"
    image: 27265564416_850881998f_k.jpg
    creator: Alan Levine/Flickr
    url: https://www.flickr.com/photos/37996646802@N01/27265564416/
    caption: "Rusted Scout Axe"
description: "Ben shares his semi-reluctant return to his Bookmaker toolchain now called 'Verku'"
date: 2016-06-18T14:07:10-04:00
---

There's a quote where Lincoln is said to have said that if he was given six hours to chop down a tree he would spend the first five sharpening the ax. To an author, the ax would be tools and skills. I am a perpetual tool tinkerer and have made another tool migration. Call it circling the drain.

<!--more-->

## Context

For a quick update on my randomness in this area:

* [Going Back to Scrivener](/posts/going-back-to-scrivener/)
* [My Toolchain Using Bookmaker](/posts/toolchain/)

**Problems with Bookmaker.** In *My Toolchain Using Bookmaker*, I recount how I fell upon <abbr title='pronounced Lai-tech'>LaTeX</abbr> while in law school. I loved how it makes such a well-laid PDF. Way back in 10th grade I was trained in typesetting, and the markup is unconcerning. The problem with LaTeX is it is primarily intended for print, and converting LaTeX to ePUB (and MOBI by extension) is a real pain.

**Problems with Scrivener.** In *Going Back to Scrivener*, I discuss why Scrivener looks attractive. But, my inherent vendor phobia and the quasi-binary (RTF is text but hard to manage) nature of the tool continued to annoy me. Couple that with the challenge of running it on various platforms (it runs on Apple, Windows and Linux, but not on Android) and the toolchain nomad left civilization again.

**Problems with Kitabu?** [Kitabu](https://github.com/fnando/kitabu) is a Markdown to PDF/ePUB/MOBI toolchain, and the source of Bookmaker. The problem I've long had with this tool (four years or more) is the author's insistence on using [PrinceXML](http://www.princexml.com/) (and of violating its license). The wrong turn I made with Kitabu was moving to LaTeX not only for the PDF generation, but for writing.

## Enter Verku!

[Verku](https://github.com/Merovex/verku) is the Esperanto command for "compose" or "write," coming from the infinitive "verki" or "compose/write." I've been dabbling with a Scrivener competitor that used Markdown instead of RTF and was available on all platforms (desktop, mobile, web), which uses a variant of this name. As Verku is a command line tool (CLI), I wanted to ensure the command with suitably pithy.

An author writes using Markdown. Verku then converts the text into TeX (for PDF) or HTML (for ePUB/MOBI). The final PDF format is generated using a Unicode and custom-font friendly variant of TeX called <abbr title='pronounced zai-tech'>XeTeX</abbr>. The HTML is created the same as I did in Bookmaker, but without having to hand-manipulate all the LaTeX into HTML.

As I use [GitHub](/tags/#GitHub+as+an+Author) to manage all my writings, Verku gives me the ability to write on any platform. I can choose my editor (currently Sublime Text). It also means that years of tracking my data is not lost. I can still put my Notebook (a.k.a. series bible) with my documents and link to them. Because I use GitHub, I can navigate the entire stack as a result.
