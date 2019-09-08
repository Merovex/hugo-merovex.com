---
title: "Automating Scrivener: GitHub Commit"
author: Ben Wilson
description: "Authors have a chance to automatically archive their Scrivener files using GitHub with this simple script."
category: 'Technology'
tags: [Scrivener, GitHub as an Author]
photo:
  image: Kempelen_chess1.jpg
  creator: Jan.Kamenicek
  url: "https://en.wikipedia.org/wiki/The_Turk#/media/File:Kempelen_chess1.jpg"
  license: under CC BY-SA 2.0
  caption: Photo of the reconstruction of the Turk
comments: true
sharing: true
footer: true
sidebar: true
date: 2015-12-31 15:02
modified_at: 2015-12-31 15:02
created_at: 2015-12-31 14:36
---

Inspired by [Jamie Rubin's article on Scrivener & GitHub](http://www.jamierubin.net/2015/12/22/tracking-the-things-i-make-with-github/), I have fully moved my toolchain to Scrivener, while still using a private Git repository. I wanted to write a brief series on what I've done to convert my old process, or to automate certain housekeeping tasks. This is the first in the series, which shares a simple process for pushing commits of a Scrivener project to GitHub.

<!-- more -->

There is a parallel series on [copyright and author's work product](/writing/copyright-overview/) that you might consider. Jamie already discusses the advantages of GitHub with Scrivener, so this will be a brief article on how I automate the process. Naturally, you will want a private repository. If you don't have a repository, create one a repository on GitHub first. I encourage you to create a private one.

I use Mac OSX, but this process should work for Linux users as well. Sorry, Windows Users. I've not willingly touched Windows in years, so I do not know how to do this for you.

This is really a simple process. The GitHub gist below is a simple Bash script that does all the work.

<script src="https://gist.github.com/Merovex/a31c9378a96c71338b33.js"></script>

The second line is the Crontab entry. If you look at the literature, Apple prefers Launchd over cron. After several hours of trying, I could not get Launchd to interact with GitHub properly. However, cron worked fine. I have it running every couple of hours. The script does spit a dozen lines at the log file 12 times a day, so it does grow quickly. You may consider sending the output to `/dev/null` if you are satisfied with its execution.

If you're a git user, the script is self explanatory. For the less-initiated, here is a quick description: "Grab the date and change to the target directory. Add new files to the Git repository, then commit it with an entry with a timestamp. Finally, push to GitHub."

**Auto-Push without Auto-Commit?** What if, like Jamie, you don't want to automatically commit your files? (Commit is where you put your change entry.) Then remove lines 3, 4, and 7. This leaves the automatic inclusion of new files, and automatic push to GitHub. The push will only move what you've committed, so it won't push unless you want it to. Then again, if you change the iteration to daily instead of every two hours, you can still self-commit the files and let the auto-commit/push make up for when you forget to.

Next Time, I will share how I automate getting the session word count out of Scrivener.


