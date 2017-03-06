---
layout: post
title:  "TRANSLATE_THIS_TITLE: mesa  with libglvnd support is now in testing"
date:   2017-02-27T20:15:02+00:00
author: "TRANSLATOR_NAME_HERE"
---

**原文：**[mesa  with libglvnd support is now in testing](https://www.archlinux.org/news/mesa-with-libglvnd-support-is-now-in-testing/)

<p><code>mesa</code>-17.0.0-3 can now be installed side-by-side with <code>nvidia</code>-378.13 driver without any libgl/libglx hacks, and with the help of Fedora and upstream xorg-server patches.</p>
<ul>
<li>
<p>First step was to remove the libglx symlinks with xorg-server-1.19.1-3 and associated mesa/nvidia drivers through the removal of various libgl packages. It was a tough moment because it was breaking optimus system, <code>xorg-server</code> configuration needs manual updating.</p>
</li>
<li>
<p>The second step is now here, with an updated <a href="https://git.archlinux.org/svntogit/packages.git/tree/trunk/nvidia-drm-outputclass.conf?h=packages/nvidia-utils">10-nvidia-drm-outputclass.conf</a>  file that should help to have an "out-of-the-box" working <code>xorg-server</code> experience with optimus system.</p>
</li>
</ul>
<p>Please test this extensively and post your feedback in this <a href="https://bbs.archlinux.org/viewtopic.php?id=223603">forum thread</a> or in our <a href="https://bugs.archlinux.org/">bugtracker</a>.</p>
