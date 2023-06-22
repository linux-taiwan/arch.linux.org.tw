---
layout: post
title:  "TeX Live 套件重組"
date:   2023-06-22T09:10:00+00:00
author: "Ji Kuai"
---

**原文：**[TeX Live package reorganization](https://archlinux.org/news/tex-live-package-reorganization/)

自版本 2023.66594-9 起，Tex Live 的套件被重新編排成符合上游集合（upstream collections）的樣子。儘管有新的 `texlive-basic` 取代舊的 `texlive-core`，texlive-core 的許多內容（包括針對特定語言的檔案）都被劃分進不同的套件。如果要找出哪個 Arch 套件含有特定的 CTAN 套件，你可以用 `tlmgr`，例如：

```
$ tlmgr info euler | grep collection
collection:  collection-latexrecommended
```

代表 euler CTAN 套件被放在 `texlive-latexrecommended` 裡面。你也可以用 `pacman -F` 來查詢特定的檔案。

此外，新增了叫做 texlive-meta 的 metapackage 可以來安裝所有子套件（除了針對特定語言的那些），和新的 texlive-doc 套件提供了完整的文件供離線查看。
