---
layout: post
title:  "zita-resampler 升級到 1.6.0-2 需要手動處理"
date:   2018-02-22T07:57:11+00:00
author: "Nightfeather"
---

**原文：**[zita-resampler 1.6.0-1 -> 2 update requires manual intervention](https://www.archlinux.org/news/zita-resampler-160-1-2-update-requires-manual-intervention/)

<p>
zita-resampler 在 1.6.0-2 版加入了一個不存在於 1.6.0-1 的函式庫鏈結。
如果你已經安裝了 1.6.0-1 版，因為 ldconfig 會在安裝時期產生這個鏈結，進而造成與新版本中擁有的鏈結衝突。
所以在升級前請先手動刪除 `/usr/lib/libzita-resampler.so.1` 以避免衝突發生。
</p>

