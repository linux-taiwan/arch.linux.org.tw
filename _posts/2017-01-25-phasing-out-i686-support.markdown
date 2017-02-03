---
layout: post
title:  "分階段取消對 i686 處理器家族的支援"
date:   2017-01-25 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Phasing out i686 support](https://www.archlinux.org/news/phasing-out-i686-support/)

因為 i686 處理器家族在我們的開發者與社群用戶裡的能見度愈來愈低，我們決定要逐步取消這個平台的支援。

這項決策意謂著今年二月份的 ISO 映像檔會是最後一份可供安裝 32 位元版本 Arch Linux 的安裝媒體。接下來的為期九個月是不建議使用期，在這期間的 i686 處理器版本仍會收到更新的套件。自 2017 年 11 月開始，套件與套件庫相關工具的維護者將不再需要去特別標註他們維護的項目不支援 i686 處理器。

然而，還是有人對繼續維持 i686 版本感興趣，我們鼓勵社群在我們的指引下來從事這項工作。透過 `arch-ports` 郵遞列表以及在 Freenode 上的 `#archlinux-ports` IRC 頻道這些媒體，我們會有進一步的協調討論。

`[multilib]` 套件庫不受此變動的影響。
