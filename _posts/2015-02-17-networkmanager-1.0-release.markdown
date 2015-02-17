---
layout: post
title:  "NetworkManager 1.0 發布"
date:   2015-02-17 12:00:00 +0800
author: "Huei-Horng Yo"
---

廣為人知的網路連線管理軟體 NetworkManager 日前釋出 1.0 版，請見 [ANN: NetworkManager 1.0.0 released!](https://mail.gnome.org/archives/networkmanager-list/2014-December/msg00030.html)。

Arch Linux 業已提供 1.0 版套件，其中由於 DHCP 終端程式的已知相容問題，如果您原先使用的是 `dhcpcd` 有可能無法正常使用無線網路，請將您的 `/etc/NetworkManager/NetworkManager.conf` 當中 `dhcp=` 設定項目改成 `internal`，或 `dhclient`（需配合安裝 `dhclient` 方可使用）。
