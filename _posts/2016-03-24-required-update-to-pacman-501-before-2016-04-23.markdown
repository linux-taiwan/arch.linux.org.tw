---
layout: post
title:  "請務必在 2016-04-23 前升級到 pacman-5.0.1"
date:   2016-03-24 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Required update to pacman-5.0.1 before 2016-04-23](https://www.archlinux.org/news/required-update-to-pacman-501-before-2016-04-23/)

從 `pacman-5.0` 版開始，新增了 "transactional hooks" 的支援。這項功能可以讓我們做到像是「在某次升級時，若有多組字型套件，以往每升級一組字型套件就要重建一次字型快取，現在則只需統一重建一次就好」如此的改進，無論在升級流程的速度提升，以及減少開發者與被信賴用戶 (Trusted Users) 的套件打包負擔都有所助益。

為了讓 "transactional hooks" 可以啟用，我們需要所有用戶配合，請在 2016-04-23 前將 `pacman` 至少升級 5.0.1 版。Pacman-5.0.1 已於 2016-02-23 釋出，所以各位有兩個月的時間可以升級您們的系統。
