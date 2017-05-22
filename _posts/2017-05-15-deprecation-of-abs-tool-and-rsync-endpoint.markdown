---
layout: post
title:  "棄用 ABS 工具與 rsync 端點"
date:   2017-05-15T10:55:50+00:00
author: "Huei-Horng Yo"
---

**原文：**[Deprecation of ABS tool and rsync endpoint](https://www.archlinux.org/news/deprecation-of-abs/)

因為維護與 Arch Build System 相關腳本程式 (scripts) 的成本過高，我們決定棄用 `abs` 工具，以及不再提供 rsync 此一管道來獲取 PKGBUILDs。

在 [extra] 套件庫裡的 `asp` 工具提供了近似 `abs` 的功能。使用 `asp export pkgname` 指令即可直接替代；更多有關 `asp` 的用法資訊可以在[文件](https://github.com/falconindy/asp/blob/master/man/asp.1.txt)處找到。除此之外，使用 Subversion 個別提取（[參見這裡](https://www.archlinux.org/svn/)）也可達到相似的作用。如果要獲取全部的 PKGBUILDs，最好的方法是複製 [svntogit](https://git.archlinux.org/svntogit/) 的鏡像來源。

目前 `extra/abs` 套件已被下架，而 rsync 端點 (rsync://rsync.archlinux.org/abs) 亦將於本月底關閉。