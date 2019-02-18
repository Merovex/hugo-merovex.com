---
author: Ben Wilson
title: Introducing Korektu
categories: ["Technology"]
tags:
 - "GitHub as an Author"
 - Jekyll
 - Publishing
photo:
    license: "Rights Reserved"
    image: korektu_screenshot.png
    creator: Ben Wilson
    url: http://dausha.net
    caption: "Screenshot of GitHub Issues List"
description: "Korektu helps #self-published #authors with howto get reader feedback into private #GitHub repo issues."
date: 2016-08-26T10:31:07-04:00
---

A friend of mine recently said I had a very elaborate toolchain. This is a polite way of saying it rivals Rube Goldberg's inventions. Be that as it may, I would like to share how a self-publisher can manage reader feedback when there are problems found in their books using a private GitHub repository. I call it **Korektu**.

<!--more-->

### The Need and Problem of Reader Feedback

As a self-published hobbyist author, I limitations on how much editing to do. Hiring a professional editor at over $1000 per book is not cost effective.  There will always be defects. So as a hobbyist author, I need a way to solicit reader feedback when they want to tell me about a problem.

[Pragmatic Bookshelf](https://pragprog.com/) is an imprint that provides iterative writing support for technology books.
PragProg releases books in Beta state and encourage readers to provide feedback
When you buy a book from Pragmatic Bookshelf, you gain access to its errata interface.
This allows readers to submit defects to the publisher and author, and to view others' defect reports. This model is ideal for the hobbyist author, but as a self-publisher I won't have access to Pragmatic Bookshelf.

There are many different ways of soliciting feedback, and most of them cost. The only free way I found to be close enough to what I wanted was a Google Form feeding into a Google Sheet. The look is not professional, and does not integrate well into my Rube Goldberg tool chain.

I want to enable readers to submit issues to [my private GitHub repository](/tags/#GitHub+as+an+Author) since I discussed [reader interaction via GitHub](/posts/github-to-work-with-your-beta-readers/) last Winter. However, having readers interact with the private repository exposes the source text, which is something to avoid.

### Korektu Enables Safe Reader Interaction with Private GitHub Issues

**Korektu** is the imperative of "[fix](https://glosbe.com/eo/en/korektu)" in Esperanto---the reader's order to the author to "fix that mistake now!" It is a [Sinatra-based application](http://sinatrarb.com), which allows untrusted public users to submit feedback to a private repository without exposing the OAuth token that would give them greater access. The Sinatra application receives submitted form data from a this site. (See *[Korektu for Bellicose](/korektu/bellicose)*)

Unlike Pragmatic Programmer, Korektu does not currently allow the reader to view others' feedback. That would entail a bit more coding where it would be retrieved via the Rails intermediary and displayed via JavaScript.

How does it work? I have the [source code available on GitHub](https://github.com/Merovex/korektu), with instructions on use. I released it under MIT license. I'm not competing with other authors, and this is a way to enrich the self-published author realm.

In a nutshell, the Korektu is installed on a free Heroku instance, and the form that feeds it is integrated into your website. Since I use Jekyll, the form base is a layout, and each page provides the book-specific information (title, editions).

