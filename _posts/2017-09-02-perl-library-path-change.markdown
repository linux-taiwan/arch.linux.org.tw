---
layout: post
title:  "Perl 程式庫路徑變更"
date:   2017-09-02T11:44:22+00:00
author: "Louie Lu"
---

**原文：**[Perl library path change](https://www.archlinux.org/news/perl-library-path-change/)

從現在開始 perl 套件將會對編譯模組使用版號路徑。這表示不合於 perl 版號的模組將
不會被載入，並且需要重新編譯。

一個 pacman 鉤子將會在升級受影響的模組時，以下面的方式顯示出警告內容：

```
WARNING: '/usr/lib/perl5/vendor_perl' contains data from at least 143 pacages which will NOT be used by the installed perl interpreter.
 -> Run the following command to get a list of affected packages: pacman -Qqo '/usr/lib/perl5/vendor_perl'
```

你必須要重新編譯所有受影響的套件以及新的 perl 套件才能再次使用它們。這個變更
也將會影響從 CPAN 安裝的模組。重編譯的動作在 perl 主要版號變更時 (如 `5.28`
變成 `5.30`) 也會需要重新動作。

請注意到，在此之前主要版號變更時就需要重新編譯了。只是這次的變更將讓 perl 不會
再以奇怪的方式讀取套件然後失敗。

如果編譯系統或是某些軟體沒有自動偵測到這樣的變更，你可以在你的 PKGBUILD 使用
`perl -V:vendorarch` 來讓 perl 使用正確的路徑。同時也有 `sitearch` 來讓非
pacman 打包的軟體來使用。
