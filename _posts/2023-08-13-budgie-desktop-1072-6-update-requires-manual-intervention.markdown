---
layout: post
title:  "升級 budgie-desktop >= 10.7.2-6 時需要手動處理"
date:   2023-08-13 16:14:00 +08:00
author: "Ji Kuai"
---

**原文：**[budgie-desktop >= 10.7.2-6 update requires manual intervention](https://archlinux.org/news/budgie-desktop-1072-6-update-requires-manual-intervention/)

將 budgie-desktop 從 10.7.2-5 更新到 10.7.2-6 時，mutter43 套件必須被換成 magpie-wm，其目前相依於 mutter。然而 mutter43 與 mutter 衝突，需要手動處理來完成更新。

先移除 mutter43，接著立即更新。不要在這之間重登或重開機。

```
pacman -Rdd mutter43
```

```
pacman -Syu
```
