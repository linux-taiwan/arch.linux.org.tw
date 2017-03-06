---
layout: post
title:  "啟用 libglvnd 支援的 mesa 已在 testing 套件庫"
date:   2017-02-27T20:15:02+00:00
author: "Huei-Horng Yo"
---

**原文：**[mesa with libglvnd support is now in testing](https://www.archlinux.org/news/mesa-with-libglvnd-support-is-now-in-testing/)

由於 Fedora 團隊的協助，以及 xorg-server 上游貢獻的修補，`mesa`-17.0.0-3 現在可與 `nvidia`-378.13 驅動程式併存，無須再使用各種 libgl/libglx 的 hacks 了。

* 首先要做的是透過解除安裝某些 `libgl` 的相關套件，來移除 `libglx` 與 `xorg-server`-1.19.1-3 的符號連結，以及相關的 mesa/nvidia 驅動程式。這項工作非常艱難，因為會導致 optimus 系統失效，也需要手動更新 `xorg-server` 的設定。

* 接下來這步驟是藉由更新過的 [10-nvidia-drm-outputclass.conf](https://git.archlinux.org/svntogit/packages.git/tree/trunk/nvidia-drm-outputclass.conf?h=packages/nvidia-utils) 設定檔的輔助，可以提供您的 `xorg-server` 在搭配 optimus 系統的環境下一個基本可用的體驗。

敬請多加測試，並將您的意見反饋發表到[論壇討論串](https://bbs.archlinux.org/viewtopic.php?id=223603)或是 [bugtracker](https://bugs.archlinux.org/) 上。
