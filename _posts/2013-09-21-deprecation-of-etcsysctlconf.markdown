---
layout: post
title:  "棄用 /etc/sysctl.conf"
date:   2013-09-21 23:19:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Deprecation of /etc/sysctl.conf](https://www.archlinux.org/news/deprecation-of-etcsysctlconf/)

從 `systemd` 207 版開始，將不再採用 `/etc/sysctl.conf` 當中的設定，改成只採用 `/etc/sysctl.d/*` 裡頭的內容。因為我們在 `procps-ng` 套件中提供的原始 `/etc/sysctl.conf` 設定已經成為系統核心的預設值，所以我們決定要棄用這個檔案。

當升級 `procps-ng` 到 3.3.8-3 版時，系統會提醒您將自訂的 `/etc/sysctl.conf` 設定改放在 `/etc/sysctl.d` 底下。最簡單的解法是這樣：

<pre>
pacman -Syu
mv /etc/sysctl.conf.pacsave /etc/sysctl.d/99-sysctl.conf
</pre>

如果您不曾自訂 `/etc/sysctl.conf`，則無須配合做任何調整。
