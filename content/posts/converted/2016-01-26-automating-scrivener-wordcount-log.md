---
title: "Automating Scrivener: Wordcount Log"
author: Ben Wilson
description: "While shifting to Scrivener, I share how I automatically update my word count log out of Scrivener."
categories: ["Writing on Github"]
tags: [Scrivener, GitHub as an Author]
photo:
  image: 5171765778-239c899bfd-o.jpg
  creator: Morten Oddvik/Flickr
  url: https://www.flickr.com/photos/97522422@N00/5171765778/
  license: under CC BY 2.0
  caption: Scrivener 2.0 for Mac. Screenshot of corkboard overview.
date: 2016-01-26T13:35:00-05:00
created_at: 2016-01-26 13:35
---

Recently, Jamie Rubin talked about [using GitHub as an author](http://www.jamierubin.net/2015/12/22/tracking-the-things-i-make-with-github/). I took his article as a challenge to automate Scrivener word count logs and automatically commit changes to Scrivener. This article discusses how I automatically process the Scrivener word count into a log file.

<!--more-->

A lot of people think of GitHub as a tool for geeks. While that may be true, there are a lot of things you can do that are not technologically related. For example, the [Github Services team uses GitHub](https://github.com/blog/2093-how-the-services-team-uses-github). As an organization, GitHub is committed to keeping all relevant organizational learning in their own tool.

Authors don't have to be technology geeks, but it helps. As I [abandon my old toolchain](/posts/going-back-to-scrivener/), I found myself wondering how I was going to maintain my online progress logs...or as [2015 showed](/posts-logs/2015-progress/), lack of progress.

My [old toolchain](/posts/toolchain/) comprised a self-authored Ruby gem I called Bookmaker, which ultimately reflects that you can waste more time tinkering with your tools than you can crafting. I started to re-engineer Bookmaker before the challenge. It was "easy" to get the data: I would iterate over the LaTeX files in the target directory, run `detex` on each file and pipe to `wc`, and sum the total. Then I would add that data to a JSON file that feeds my progress logs. The next time I committed a change to this website, those logs would be published.

What follows should work on Mac OSX or Linux without issue. If you're using Windows, then I'm not sure I can help you. I'm a UNIX guy from way back.

## Processing Scrivener Wordcounts

In Scrivener, it's a lot easier. The GitHub Gist below documents the minimum effort required to pull the data out of Scrivener using Crontab ([how to use Crontab](http://artoflinux.blogspot.com/2009/08/cron-jobs-tutorial-for-beginners.html)). All it will do is aggregate a file with the data. You'll have to figure out your own way to parse it from there.

<script src="https://gist.github.com/Merovex/38a5d12dcf043be97c9e.js"></script>

If you're looking for something a bit more complex, I've published a gist of how I pull the data down and aggregate my wordcount log. (See [ScrivxWordCount.rb](https://gist.github.com/Merovex/7acfee745aaf7b8d3fbe)) That script is missing the config YAML file. If you're going down this path, I anticipate that you know how to read Ruby and can figure out from the code what you need to put in that file. You'll also note the script is not fully optimized, which is an artifact of my having pulled out some portions of the code. To use this script, you'll need to initialize a JSON file (put "{}" in the JSON file).

I have a separate script that takes this data and forms the data I use in my progress. I'll write about that in a subsequent article.

## Automating the Script

There are two options here for a Mac OSX user: crontab or Launchd. The preferred protocol is Launchd. When you shut down your computer, or it goes to sleep, crontab will not execute. Launchd, on the other hand, should run as soon as wake or boot is complete if it did not run at its scheduled time. My [launchd gist](https://gist.github.com/Merovex/ec3e95b6821181e247e8) is what I'm using. Note that it executes 5 minutes before midnight each day.

Because you're grabbing daily word counts, it is important that Scrivener be configured to reset the session count at midnight. How do you do this?

1. Cmd + Shift + T (`⇧⌘-T`) activates the Project Targets panel.
2. Click Options
3. Under the Session Target heading, set the dropdown to "Reset Session Count at Midnight" (the screen shot below shows this step graphically)

![Screenshot of Session Target dropdown at correct setting.](https://dausha.s3.amazonaws.com/images/articles/1aLBsQ4nt3VEdDioFjKbcy1B8gk26pDwTLdFbMKWpls.png)

## Conclusion

You may need to make a few tweaks to make it work for you. I hope this helps you pull out your Scrivener word count progress as you need. Next time, I'll share how I put this data to work in my progress charts.
