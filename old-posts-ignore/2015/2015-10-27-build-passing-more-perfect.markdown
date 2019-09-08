---
title: Build Passing. More Perfect?
author: Ben Wilson
description: For the first time in years, I have a website that has been fully vetted courtesy of Continuous Integration.
category: 'Technology'
tags: [Jekyll, Travis CI]
photo:
  image: 3940632819_f639081358_b.jpg
  creator: Marco Alioli/Flickr
  url: https://www.flickr.com/photos/23688471@N07/3940632819
  license: under CC BY-ND 2.0
  caption: Warning, I'm more bigger than you
comments: true
sharing: true
footer: true
sidebar: true
date: 2015-10-27 20:35
modified_at: 2015-10-27 20:35
created_at: 2015-10-27 20:14
---

Since 18 October, I have been slowly working on making my site more perfect. Not perfect from the context we think of, but from a perspective of complete. Over the past few years, I've added many posts and pages, and over time, the weight of it has been a bit harder to maintain.

<!-- more -->

I've recently become enamored by some of the works of [Ben Balter](http://ben.balter.com/), who champions open software, open government, etc. As he uses Jekyll and Github pages, I was perusing his blog for signs of best practices.

I happened upon [Travis CI](https://travis-ci.org) (Continuous Integration). "Travis CI is a FOSS, hosted, distributed continuous integration service used to build and test projects hosted at GitHub." ([Wikipedia](https://en.wikipedia.org/wiki/Travis_CI)) I also happened upon [HTML-Proofer](https://github.com/gjtorikian/html-proofer), which checks for commonly felt HTML issues: links, images and scripts.

Overall, my website comprises 202 files and 697 unique or external links. When I first got Travis/HTML-Proofer working, I had 96 errors. Over the past 21 hours (starting at 22:51 and finishing at 19:55), I have slowly whittled the errors to zero. That means that every hyperlink has a valid destination, every image that should have an alt-tag is properly tagged, and all the scripts are present.

Thanks to Travis, every time I post new content, I will know within a few minutes if everything checks out. In theory, I should never again have a problem with broken links as long as I use Jekyll on GitHub.

So, the Build passes tests, and the product is more perfect than I could have achieved myself.

