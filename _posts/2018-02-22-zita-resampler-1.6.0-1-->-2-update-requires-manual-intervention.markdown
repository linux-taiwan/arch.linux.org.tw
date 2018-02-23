---
layout: post
title:  "TRANSLATE_THIS_TITLE: zita-resampler 1.6.0-1 -> 2 update requires manual intervention"
date:   2018-02-22T07:57:11+00:00
author: "TRANSLATOR_NAME_HERE"
---

**原文：**[zita-resampler 1.6.0-1 -> 2 update requires manual intervention](https://www.archlinux.org/news/zita-resampler-160-1-2-update-requires-manual-intervention/)

<p>The zita-resampler 1.6.0-1 package was missing a library symlink that has been readded in 1.6.0-2. If you installed 1.6.0-1, ldconfig would have created this symlink at install time, and it will conflict with the one included in 1.6.0-2. In that case, remove /usr/lib/libzita-resampler.so.1 manually before updating.</p>
