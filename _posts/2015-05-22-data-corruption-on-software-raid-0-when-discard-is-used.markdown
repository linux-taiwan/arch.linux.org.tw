---
layout: post
title:  "若使用了 discard 參數，軟體型 RAID 0 會發生資料毀損"
date:   2015-05-22 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Data corruption on software RAID 0 when discard is used](https://www.archlinux.org/news/data-corruption-on-software-raid-0-when-discard-is-used/)

幾週前送進 [core] 套件庫的 Linux 核心 (4.0.2+, LTS 3.14.41+) 有一個錯誤，檔案系統若以 `discard` 參數掛載、且配置在軟體型 RAID 0 陣列內就會引發資料毀損。然而即使未指定使用 `discard` 參數，當使用 `fstrim` 命令也同樣會觸發這個錯誤。 **（如果您並未使用軟體型 RAID 0 搭配 `discard` 參數，那麼本問題並不會對您造成影響。）**

本問題已經在 `linux 4.0.4-2` 與 `linux-lts 3.14.43-2` 修正。但是由於這個問題的發生原理使然，很可能系統資料已經在前述有問題的核心版本上發生毀損情況了。強烈建議您在受到影響的檔案系統上做資料完整性檢查，可使用 `fsck` 工具，並（或）從現存的完整備份那邊還原資料。

若需要進一步的資訊，請參考 LKML 上由 Holger Kiehl 發表的[貼文](https://lkml.org/lkml/2015/5/21/167)、Phoronix 上的[相關文章](http://www.phoronix.com/scan.php?page=news_item&px=Linux-4-EXT4-RAID-Issue-Found)以及被 backport 到 Arch 核心的[修正](http://git.neil.brown.name/?p=md.git;a=commitdiff;h=a81157768a00e8cf8a7b43b5ea5cac931262374f)。
