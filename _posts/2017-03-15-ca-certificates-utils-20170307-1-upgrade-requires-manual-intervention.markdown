---
layout: post
title:  "TRANSLATE_THIS_TITLE: ca-certificates-utils 20170307-1 upgrade requires manual intervention"
date:   2017-03-15T21:27:54+00:00
author: "TRANSLATOR_NAME_HERE"
---

**原文：**[ca-certificates-utils 20170307-1 upgrade requires manual intervention](https://www.archlinux.org/news/ca-certificates-utils-20170307-1-upgrade-requires-manual-intervention/)

<p>The upgrade to <strong>ca-certificates-utils 20170307-1</strong> requires manual intervention because a symlink which used to be generated post-install has been moved into the package proper.</p>
<p>As deleting the symlink may leave you unable to download packages, perform this upgrade in three steps:</p>
<pre><code># pacman -Syuw                           # download packages
# rm /etc/ssl/certs/ca-certificates.crt  # remove conflicting file
# pacman -Su                             # perform upgrade
</code></pre>
