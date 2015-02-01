---
layout: post
title:  "KDE 軟體將逐漸轉移至 KDE Framework 與 Qt 5"
date:   2015-01-26 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Transition of KDE software to the KDE Framework and Qt 5](https://www.archlinux.org/news/transition-of-kde-software-to-the-kde-framework-and-qt-5/)

KDE Software Collection 已經更新到 KDE Applications 14.12 版。

KDE 開發者開始著手將他們的軟體移植到 KDE Frameworks 與 Qt 5。已經完成移植工作的軟體列表請參見[公告](https://www.kde.org/announcements/announce-applications-14.12.0.php)。

倘若某個 KDE 應用程式的 KDE Frameworks 移植版本夠穩定了，它往後會改在 KDE Applications 釋出，而不繼續在 Qt4/KDE4 底下開發與修正問題。這表示說如果某個移植版本釋出了，我們就會切換到這個新版本。同時我們也會把此軟體的 KDE 模組前綴名稱去除（例如：`kdebase-konsole` -> `konsole`）。

在此轉移工程過程中，會導致有些套件使用 Qt5，而有些還是使用 Qt4。我們會盡可能讓 KDE4 的使用者能順利度過這項轉移工程，但是事情有時會因為您的自訂設定導致難以盡如人意。請視需要為這兩版 toolkit 調整佈景主題與配色。您可參見 [wiki](https://wiki.archlinux.org/index.php/KDE#Personalization) 來獲取協助資訊。我們也建議您切換到本週即將釋出的 Plasma 5.2 版。

請將上游的錯誤回報至 KDE bugzilla，同時歡迎寄送副本給我（譯註：此處指原文作者 Andrea Scarpino）。
