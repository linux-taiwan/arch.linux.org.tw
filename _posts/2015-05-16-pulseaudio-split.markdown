---
layout: post
title:  "PulseAudio 拆分出數個模組子套件"
date:   2015-05-16 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[PulseAudio split](https://www.archlinux.org/news/pulseaudio-split/)

因為要避免模組找不到動態函式庫的問題，某些模組已經從 `pulseaudio` 套件中拆分出來。請檢查您需要的模組，並重新安裝它們。

這些拆分出來的模組如下：

  * `pulseaudio-bluetooth`: Bluetooth (Bluez) support
  * `pulseaudio-equalizer`: Equalizer sink (qpaeq)
  * `pulseaudio-gconf`: GConf support (paprefs)
  * `pulseaudio-jack`: JACK sink, source and jackdbus detection
  * `pulseaudio-lirc`: Infrared (LIRC) volume control
  * `pulseaudio-xen`: Xen paravirtual sink
  * `pulseaudio-zeroconf`: Zeroconf (Avahi/DNS-SD) support
