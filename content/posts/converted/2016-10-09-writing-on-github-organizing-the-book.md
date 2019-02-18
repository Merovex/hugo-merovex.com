---
author: Ben Wilson
title: "Writing on Github: Organizing the Book"
categories: ["Writing"]
tags:
 - NaNoWriMo
 - GitHub as an Author
 - Publishing
photo:
    license: "Public Domain"
    image: walentin-alexandrowitsch-serow-004.jpg
    creator: Public Domain
    url: https://en.wikipedia.org/wiki/Nikolai_Rimsky-Korsakov#/media/File:Rimsky-Korsakov_Serow_crop.png
    caption: "Portrait of Nikolai Rimsky-Korsakov in 1898"
description: "GitHub best practices work perfectly for organizing a novel."
date: 2016-10-09T13:49:00-04:00
---

With another NaNoWriMo looming, plotting authors should be well on the way to organizing their novel. If you're considering using Verku for creating your paper and electronic output, you might consider using GitHub's best practices in organizing your novel.

<!--more-->

I'm about to take a hard right turn in my writing, postponing the Postal Marine series to take on a different project to try to reprime my pump. This includes using NaNoWriMo to give me a deadline.
I have previously discussed [GitHub for organizing a novel series](/posts/writing-on-github/) and my use of a Ruby gem [Verku for converting Markdown text files into paperback and Kindle formats](/posts/unsharpening-the-axe/).

**But what about the single novel?**

GitHub's best practices provides me as an author all I need to organize my project. I started with the Verku project structure, then added a few folders outside the project's content (/text) file. To keep track of my TODOs, I used the project's Issues.

I remain a fan of the [Snowflake Method](http://www.advancedfictionwriting.com/art/snowflake.php), and this will be revealed in this post. I also break my stories into [four acts](/posts/its-not-really-three-acts/). Beyond showing how I'm organizing this book, there's not much more to say. Let me know if you find this helpful.

**README.md**
: GitHub has built-in features that are designed for organization. The basic one is the README.md file. If you look at any GitHub repository, you will see that the README.md file is displayed right below the file listing. This is intended to be the summary of the entire project. It's written in Markdown and compiled into HTML. I won't explain this file as there are many who have done a better job than I can. Below I provide a sample of what I'm using for my book.

**Plot**
: Snowflake 1, 2, 4, and 6 cover the plot. I chose to keep this content on the README.md.

**Characters**
: Snowflake 3, 5 and 7 focus on Character development. I created a folder for the characters and one file for each one named character. From the README.md, I linked to the (/characters/character-name.md). If you have other aspects of your novel (settings, etc.) that you want to track, you can do it this way as well.

**Issues**
: As I said above, I used the Issues to track my TODOs. I created Milestones for each of the major phases of the project (design, first & subsequent drafts). I created an issue for each of the Snowflake plot steps (1,2,4,6,8), and three steps for each of character steps (3,5,7). I previously discussed [Korektu](/posts/introducing-korektu/), my way of soliciting feedback from readers. This all dovetails together.

## README.md

```markdown

# Book Title

## Book Info

**Genre**
: Lorem ipsum dolor

**Length**
: XX,000 words

**Target Reader**
: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

**Tagline**
: Lorem ipsum dolor sit amet, consectetur adipiscing elit.

**Summary**
: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac fringilla lorem, eget venenatis nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam malesuada blandit feugiat. Fusce eget placerat tortor. Donec id enim nec justo imperdiet rutrum ut sed mi. Nam eu consectetur libero. Morbi vestibulum malesuada posuere. Cras interdum posuere orci.

**Themes:**

* Etiam mollis leo quis orci ullamcorper blandit.
* Aliquam at dolor gravida, aliquam nisl vitae, congue augue.

## Characters

* [Hero](#)
* [Villain](#)
* [Confidant](#)

## Plot Summary

Four paragraphs here

## Plot Treatment

### Act 1

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac fringilla lorem, eget venenatis nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam malesuada blandit feugiat. Fusce eget placerat tortor. Donec id enim nec justo imperdiet rutrum ut sed mi. Nam eu consectetur libero. Morbi vestibulum malesuada posuere. Cras interdum posuere orci.

### Act 2

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac fringilla lorem, eget venenatis nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam malesuada blandit feugiat. Fusce eget placerat tortor. Donec id enim nec justo imperdiet rutrum ut sed mi. Nam eu consectetur libero. Morbi vestibulum malesuada posuere. Cras interdum posuere orci.

### Act 3

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac fringilla lorem, eget venenatis nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam malesuada blandit feugiat. Fusce eget placerat tortor. Donec id enim nec justo imperdiet rutrum ut sed mi. Nam eu consectetur libero. Morbi vestibulum malesuada posuere. Cras interdum posuere orci.

### Act 4

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac fringilla lorem, eget venenatis nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam malesuada blandit feugiat. Fusce eget placerat tortor. Donec id enim nec justo imperdiet rutrum ut sed mi. Nam eu consectetur libero. Morbi vestibulum malesuada posuere. Cras interdum posuere orci.

```

## Character Sheet

```markdown
# <NAME>

<!-- Snowflake 3.

For each of your major characters, take an hour and write a one-page summary sheet. -->

<NAME> is the sort of person who describes himself/herself as (DESCRIPTIVE PHRASE). If called on to use a single adjective to describe they’d use (ADJECTIVE). Friends, family and co-workers say they’re best known for (ACCOMPLISHMENT). When people first meet them, they notice their (PHYSICAL TRAITS AND PERSONALITY), then they notice that (TRAITS THAT ADD OR POSSIBLY CONTRADICT DOMINANT TRAITS). Because of his/her, he/she needs to prove that (EMOTIONAL NEED IN THE STORY). Also because of the past, he/she fears that (DREADED ALTERNATIVE) and will (PLAN OF ACTION, GOALS) to prevent it.

**Role**
: Confidant

**Convictions (1 or 2)**
: What would <hero> do anything to have or avoid? Which of them change through the series?

* Nothing is more important than ...
* Nothing is more important than ...
* Nothing is more important than ...

**Ambition**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Duis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.

**Goal**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.

**Conflict**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.him over the verge of insanity.

**Epiphany**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.

|Positive Trait | 5 | 4 | 3 | 2 | 1 |  Negative Trait
|---------------+---+---+---+---+---+---|
|Tough Guy      |   |   |   |   |   |  Whiner
|Team Guy       |   |   |   |   |   |  Rebel
|Artist         |   |   |   |   |   |  Dreamer
|Smarty         |   |   |   |   |   |  Dummy
|Blooming Rose  |   |   |   |   |   |  Wallflower
|Grinder        |   |   |   |   |   |  Lazy Dog
|Goody          |   |   |   |   |   |  Baddy
|Believer       |   |   |   |   |   |  Doubter

**One-Sentence Summary**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.

**One-Paragraph Summary**
: Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.Lorem ipsum dolor sit met, consectetur adipiscing elit. Diis pulvinar diam ac bibendum tempor. Vivamus porttutor turpis ac elit tempor semper. Donec vulputate ullamcorper augue.

## Physical Description

<!-- Snowflake 7. -->

* Age: Numerical value
* Sex: Male/Female
* Eyes: Description
* Hair: Description
* Build: Description

## Backstory

<!-- Snowflake 5.

For each important character defined in Snowflake 3, write a character sketch in one paragraph or a few paragraphs (up to a page for the most important characters). Summarize the character's backstory. Explain his values, ambitions, and story goals to show how they all fit together into the story.

The character sketch is immensely valuable, mainly by focusing on back story and values, and adding details to the front story. Also, the character sketch fills in a lot of details missing from Snowflake 3 that are critical to understanding your characters.
-->

### Personality

<!-- Snowflake 7. We'll get into a little more detail For each of the parenthetical, write one sentence (<= 25 words)
-->

**Emotional/ Family Life**
: (Personality); (Sense of Humor); (Faith); (Politics); (Upbringing)

**Intellectual/ Work Life**
: (Education); (Work History); (Interests); (Philosophy)

**Fear/Hope/Dreams**
: (Fear); (Hope); (Dream);

**Best Memory/Worst Memory**
:(Best); (Worst)

**Family**
: What's the character's family like? Describe it, including parents, siblings, and children. You may include grandparents, cousins, a spouse, or anyone else relevant.

**Friends**
: What are the character's friends like? Describe them, including your character's best male friend and best female friend.

**Enemies**
: Who are your character's enemies? Explain how they came to be enemies.

**Social Veil**
: How would your character describe himself? How would your character's friends describe him?

```
