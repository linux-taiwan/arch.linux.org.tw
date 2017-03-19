---
layout: post
title:  "升級到 ca-certificates-utils 20170307-1 版需要手動處理"
date:   2017-03-15T21:27:54+00:00
author: "Huei-Horng Yo"
---

**原文：**[ca-certificates-utils 20170307-1 upgrade requires manual intervention](https://www.archlinux.org/news/ca-certificates-utils-20170307-1-upgrade-requires-manual-intervention/)

由於在 `ca-certificates-utils` 裡頭有個符號連結檔案之前是在 post-install 階段生成的，但是現在已經直接移入套件內，所以升級到 `20170307-1` 版時，需要您手動處理。

如果直接把這個符號連結檔案刪除，可能會導致無法正常下載套件，所以請依照以下三個步驟操作此項升級：

```
# pacman -Syuw                           # download packages
# rm /etc/ssl/certs/ca-certificates.crt  # remove conflicting file
# pacman -Su                             # perform upgrade
```

