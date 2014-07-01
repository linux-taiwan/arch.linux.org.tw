---
layout: post
title:  "Perl 已經升級到 5.20"
date:   2014-07-01 14:43:00 +0800
author: "Yushin Huang"
---

**原文：**[Perl updated to 5.20](https://www.archlinux.org/news/perl-updated-to-520/)

Perl 5.20 需要將所有不是以純 Perl 寫成的模組重新編譯。我們已經將所有軟體倉庫中的軟體包都重新編譯了。

在最新的版本中，如果載入非以最新版本編譯的 Perl 模組將會印出錯誤訊息，甚至是導致 segment faults。請將所有手動安裝的 CPAN 模組重新編譯、安裝，並將二進位檔和 libperl.so 連結。

請參考[我在 arch-dev-public 郵件列表中的貼文](https://mailman.archlinux.org/pipermail/arch-dev-public/2014-June/026359.html)來取得一段 script 來幫忙你尋找那些需要被重新編譯的模組。
