---
layout: default
title: 新手上路
itemid: getting-started
---

# 寫給老鳥

雖然這頁是寫給新手的入門文件，但是我們猜想身為老手的您，在推廣的場合可能會回頭來找這頁，關於推廣 Arch 的態度，且讓我們建議您：

* 多幫新手製作安裝光碟、隨身碟吧！這真的是個門檻。
* 論述「Arch 可以**做好**哪些事」而不是「某某系統有夠爛，快來改用 Arch 吧！」這類貶抑他人的言論，無助於推廣，徒惹他人反感而已。
* 論述「Arch 可以**做到**哪些事」而不是將 Arch 誇飾成無所不能的系統。陳述事實，並坦然承認短處，才能讓 Arch 藉由社群力量不斷進步。


# 寫給新手

## 心理建設

**「根本就沒有新手，又或者在 Arch 社群裡人人遇到安裝都是新手」**這句話絕非搞笑、亦不是安慰的場面話。Arch 日新又新的特性，使得系統安裝過程經常有些微幅甚至顛覆性的異動，但是系統裝好之後，因為漸進式升級 (rolling upgrade) 的設計，便極少需要「重灌」、「砍掉重練」。老鳥憑兩年前裝好系統的經驗拿到當下想要現學現賣，或多或少都會碰壁。

所幸 Arch 社群維護的 [ArchWiki] 有相當新穎、正確的安裝指引文件，可供大家邊看邊做。

不管新手老手，用 Arch 絕對免不了要到 ArchWiki 上找文件資源。我們推薦您先讀 [Arch Linux] 與 [The Arch Way] 這兩篇，以瞭解 Arch 的設計哲學。

[ArchWiki]: https://wiki.archlinux.org/
[Arch Linux]: https://wiki.archlinux.org/index.php/Arch_Linux_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29
[The Arch Way]: https://wiki.archlinux.org/index.php/The_Arch_Way_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29

## 何妨先在沙盤推演

無論是想要學習哪一種 Linux 發行版本，新手遇到最大的障礙恐怕就是：「我的電腦裡已經有一套我用慣的系統，我的硬碟也不可能清掉或再挪出新的分割區」這個時候我們推薦您使用 [VirtualBox] 虛擬機軟體，在現有的電腦上再虛擬出一台電腦，試著在這台虛擬電腦上安裝 Arch。

VirtualBox 的功能已經相當完備，您架出來的 Arch 經過適當的網路設定，在網路上就如同一台真實的機器一樣可當成伺服器使用。這也就是所謂的 VPS (Virtual Private Server)。您可參考 [VirtualBox 使用手冊][vbox-manual]或是 [ArchWiki 上的介紹][vbox-archwiki]取得更多安裝指示和操作說明。

[VirtualBox]: https://www.virtualbox.org/
[vbox-manual]: https://www.virtualbox.org/manual/UserManual.html
[vbox-archwiki]: https://wiki.archlinux.org/index.php/VirtualBox


# 取得 Arch Linux

## 下載

請至 Arch Linux 官方網站[下載頁面]取得光碟映像檔 (ISO file)。網頁當中列出的 **HTTP Direct Downloads** 是較常用的下載方式，如果您使用臺灣的 ISP 上網服務，我們比較推薦您使用臺灣、日本的分流載點，下載速度可能會較其他地區的載點快（您可能會在 Taiwan 這邊看到令您不悅的加註，這是一個陳年待解的[已知問題]）。台灣使用者建議使用 [交大機房] 的 mirror site。

如果您有使用 BitTorrent (BT)，也推薦您使用 BT 方式下載、同時協助分流。

我們建議您能驗證下載回來的 .iso 檔內容是否正確，避免下載到損壞或經過惡意竄改的檔案。在分流載點的檔案列表，您會看到除了 .iso 檔以外還有很多檔案，其中 md5sums.txt, sha1sums.txt 分別記載了 .iso 檔的 MD5, SHA1 驗證碼 (checksum)，可使用 md5sum, sha1sum 工具計算出 .iso 檔的 checksum 值，再予以比對是否相符。

[下載頁面]: https://www.archlinux.org/download/
[已知問題]: https://bugs.archlinux.org/task/30444
[交大機房]: http://linux.cs.nctu.edu.tw/archlinux/iso/



## 製作安裝光碟、隨身碟

幾乎任一款光碟燒錄軟體都支援燒錄 .iso 格式的光碟映像檔，但步驟各有不同，請參考您的光碟燒錄軟體指引。如果您想要安裝 Arch 的電腦沒有光碟機，除了使用外接式光碟機、並確定您的電腦支援由外接式光碟機開機，您也可以[使用隨身碟來製作安裝碟]，這種方式較複雜些。

如果您打算照前面所說的，使用 VirtualBox 體驗 Arch，VirtualBox 亦支援模擬光碟機，直接拿 .iso 檔模擬成開機片。

[使用隨身碟來製作安裝碟]: https://wiki.archlinux.org/index.php/USB_Installation_Media_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29

# 開始安裝

<div class="alert alert-warning">在已有作業系統的電腦上，再安裝包括 Arch 在內的作業系統，通常會需要更動到硬碟的配置，這代表您有可能因為操作錯誤而造成既有的作業系統無法正常啟動。提醒您請務必在動手安裝前，做好硬碟現有資料的完整備份。</div>

請用您的安裝光碟、隨身碟開機，準備開始安裝 Arch。如果您之前的作業系統安裝經驗，有圖形介面的輔助，頭一次看到 Arch 的純文字、命令列介面，也許會當場傻眼，甚至心生恐懼、排斥。但是 Arch 安裝介面為求耗用最少資源、達成最大彈性，是刻意設計成這樣的。無論純文字介面還是圖形介面的目的都一樣，就是要輔助您完成系統安裝。

請您照著 [Installation Guide] 或 [Beginners' Guide] 的說明指引，來安裝 Arch。事實上，這兩份文件也就是我們在本文前頭提過的，不管是老手還是新手，至少都有一次機會需要邊讀邊做的必讀文件。

[Installation Guide]: https://wiki.archlinux.org/index.php/Installation_Guide_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29
[Beginners' Guide]: https://wiki.archlinux.org/index.php/Beginners%27_Guide_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29


# 在世界中心呼喊我需要幫忙

若在認真摸索和研究過後，依然無法完成安裝手續，可以前往[線上資源]所列的網路社群，或者尋求在地夥伴出手相助。

[線上資源]: /resources/

## 台北

* Carl X. Su (carl_tw) <http://gplus.to/carl>

  通常會出現在 [H4] 或 [MozTW Lab] 台北場。

* Huei-Horng Yo (hiroshiyui) <hiroshi@ghostsinthelab.org>

  週五偶爾會出現在 [MozTW Lab] 台北場。

* 元兒～ <me@yuaner.tw>

  有可能在週末、寒暑假會待在台北，常會在週五晚上去 [MozTW Lab] 台北場。

## 宜蘭

* Huei-Horng Yo (hiroshiyui) <hiroshi@ghostsinthelab.org>

  週六經常會出現在 [MozTW Lab] 宜蘭場、或在宜蘭市區出沒。

## 新竹

* 元兒～ <me@yuaner.tw>

  目前就讀於中華大學，也會參加每個禮拜一的"MozTW + Arch Linux Lab in Hsinchu"聚會。

* xatier <xatierlike@gmail.com> / @xatierlikeLee on [Twitter](https://twitter.com/xatierlikeLee)

  台中人，目前就讀於交通大學，出沒於 [PyHUG 社群](http://www.meetup.com/pythonhug/) 和各社群研討會

## 台中

* Yushin Huang (hyslion) ✉ <hyslion@gmail.com> ✎ [Google+](https://plus.google.com/communities/101238863048851764297)

  就讀於東海大學，出沒在東海商圈周遭。
  
* Harold Wu (haroldwu) <wennynnewenny@gmail.com>
  
  目前就讀中國醫藥大學，北區的朋友可以就地支援，或參加雙周週一的 [臺中自由軟體聚會](https://plus.google.com/u/0/communities/103994353345517742722)，也有一些使用 Arch Linux 的朋友。

[H4]: http://www.hackingthursday.org/
[MozTW Lab]: http://moztw.org/events/moztw-lab/
[新竹碼農]: http://www.facebook.com/groups/hsinchu.coders/


# 基於 Arch Linux 的發行版本

這裡有些常見 GNU/Linux 發行版本，以 Arch Linux 為基礎，預載圖形桌面環境，同時保有 Arch 的優點：

* [Antergos]：透過 [Gnome] 環境重生的現代化作業系統，前身為知名的 Cinnarch 系統。
* [ArchBang]：基於 [Openbox] 視窗管理員的輕量級系統，免於繁雜的設定。
* [Chakra]: 以 [KDE] 桌面環境精心打造，提供極其完善的安裝及操作介面。
* [Manjaro Linux]：採用輕量 [Xfce] 桌面環境，官方同時支援 [Openbox]，為新手提供 [KDE] 以外的選擇。

想要知道還有哪些選項，可以參考 [Arch Based Distributions (Active)] 取得完整清單。

[Antergos]: http://antergos.com/
[ArchBang]: http://www.archbang.org/
[Chakra]: http://www.chakra-project.org/
[Manjaro Linux]: http://manjaro.org/
[Gnome]: http://www.gnome.org/
[Openbox]: http://openbox.org/
[KDE]: http://kde.org/
[Xfce]: http://www.xfce.org/
[Arch Based Distributions (Active)]: https://wiki.archlinux.org/index.php/Arch_Based_Distributions
