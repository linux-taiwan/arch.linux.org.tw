---
layout: post
title:  "TRANSLATE_THIS_TITLE: Perl library path change"
date:   2017-09-02T11:44:22+00:00
author: "TRANSLATOR_NAME_HERE"
---

**原文：**[Perl library path change](https://www.archlinux.org/news/perl-library-path-change/)

<p>The perl package now uses a versioned path for compiled modules. This means
that modules built for a non-matching perl version will not be loaded any more
and must be rebuilt. </p>
<p>A pacman hook warns about affected modules during the upgrade by showing output
like this:</p>
<pre><code>WARNING: '/usr/lib/perl5/vendor_perl' contains data from at least 143 packages which will NOT be used by the installed perl interpreter.
 -&gt; Run the following command to get a list of affected packages: pacman -Qqo '/usr/lib/perl5/vendor_perl'
</code></pre>
<p>You must rebuild all affected packages against the new perl package before you
can use them again. The change also affects modules installed directly via
CPAN. Rebuilding will also be necessary again with future major perl updates
like 5.28 and 5.30.</p>
<p>Please note that rebuilding was already required for major updates prior to
this change, however now perl will no longer try to load the modules and then fail in strange ways.</p>
<p>If the build system of some software does not detect the change automatically,
you can use <code>perl -V:vendorarch</code> in your PKGBUILD to query perl for the
correct path. There is also <code>sitearch</code> for software that is not packaged with
pacman.</p>
