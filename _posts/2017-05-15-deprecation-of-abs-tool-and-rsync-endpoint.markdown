---
layout: post
title:  "TRANSLATE_THIS_TITLE: Deprecation of ABS tool and rsync endpoint"
date:   2017-05-15T10:55:50+00:00
author: "TRANSLATOR_NAME_HERE"
---

**原文：**[Deprecation of ABS tool and rsync endpoint](https://www.archlinux.org/news/deprecation-of-abs/)

<p>Due to high maintenance cost of scripts related to the Arch Build
System, we have decided to deprecate the <code>abs</code> tool and thus rsync
as a way of obtaining PKGBUILDs.</p>
<p>The <code>asp</code> tool, available in [extra], provides similar functionality to
<code>abs</code>.  <code>asp export pkgname</code> can be used as direct alternative; more
information about its usage can be found in <a href="https://github.com/falconindy/asp/blob/master/man/asp.1.txt">the documentation</a>.
Additionally Subversion sparse checkouts, as described <a href="https://www.archlinux.org/svn/">here</a>, can
be used to achieve a similar effect.  For fetching all PKGBUILDs, the
best way is cloning the <a href="https://git.archlinux.org/svntogit/">svntogit</a> mirrors.</p>
<p>While the <code>extra/abs</code> package has been already dropped, the rsync
endpoint (rsync://rsync.archlinux.org/abs) will be disabled by the end
of the month.</p>
