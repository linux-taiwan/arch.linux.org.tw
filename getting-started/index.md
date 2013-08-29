---
layout: default
title: 新手上路 | Arch Linux 臺灣社群 / Arch Linux Taiwan Community
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

所幸 Arch 社群維護的 [ArchWiki](https://wiki.archlinux.org/) 有相當新穎、正確的安裝指引文件，可供大家邊看邊做。不管新手老手，用 Arch 絕對免不了要到 ArchWiki 上找文件資源。

## 何妨先在沙盤推演

無論是想要學習哪一種 Linux 發行版本，新手遇到最大的障礙恐怕就是：「我的電腦裡已經有一套我用慣的系統，我的硬碟也不可能清掉或再挪出新的分割區」這個時候我們推薦您使用 [VirtualBox](https://www.virtualbox.org/) 虛擬機軟體，在現有的電腦上再虛擬出一台電腦，試著在這台虛擬電腦上安裝 Arch。

VirtualBox 的功能已經相當完備，您架出來的 Arch 經過適當的網路設定，在網路上就如同一台真實的機器一樣可當成伺服器使用。這也就是所謂的 VPS (Virtual Private Server)。

# 取得 Arch Linux
## 下載

請至 Arch Linux 官方網站的 [Download](https://www.archlinux.org/download/) 頁取得光碟映像檔 (ISO file)。網頁當中列出的 **HTTP Direct Downloads** 是較常用的下載方式，如果您使用臺灣的 ISP 上網服務，我們比較推薦您使用臺灣、日本的分流載點，下載速度可能會較其他地區的載點快（您可能會在 Taiwan 這邊看到令您不悅的加註，這是一個陳年待解的已知[問題](https://bugs.archlinux.org/task/30444)）。

如果您有使用 BitTorrent (BT)，也推薦您使用 BT 方式下載、同時協助分流。

我們建議您能驗證下載回來的 .iso 檔內容是否正確，避免下載到損壞或經過惡意竄改的檔案。在分流載點的檔案列表，您會看到除了 .iso 檔以外還有很多檔案，其中 md5sums.txt, sha1sums.txt 分別記載了 .iso 檔的 MD5, SHA1 驗證碼 (checksum)，可使用 md5sum, sha1sum 工具計算出 .iso 檔的 checksum 值，再予以比對是否相符。

## 製作安裝光碟、隨身碟

幾乎任一款光碟燒錄軟體都支援燒錄 .iso 格式的光碟映像檔，但步驟各有不同，請參考您的光碟燒錄軟體指引。如果您想要安裝 Arch 的電腦沒有光碟機，除了使用外接式光碟機、並確定您的電腦支援由外接式光碟機開機，您也可以[使用隨身碟來製作安裝碟](https://wiki.archlinux.org/index.php/USB_Installation_Media_%28%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87%29)，這種方式較複雜些。

如果您打算照前面所說的，使用 VirtualBox 體驗 Arch，VirtualBox 亦支援模擬光碟機，直接拿 .iso 檔模擬成開機片。

# 開始安裝
## 安裝作業系統的基本知識

# 在世界中心呼喊我需要幫忙

如果您真的搞不定 Arch 的安裝過程，我們有社群朋友可以當面幫忙您。

## 台北

* Huei-Horng Yo (hiroshiyui) <hiroshi@ghostsinthelab.org> 

  週五偶爾會出現在 [MozTW Lab](http://moztw.org/events/moztw-lab/) 臺北場。

## 宜蘭

* Huei-Horng Yo (hiroshiyui) <hiroshi@ghostsinthelab.org>
  
  週六經常會出現在 [MozTW Lab](http://moztw.org/events/moztw-lab/) 宜蘭場、或在宜蘭市區出沒。

# 如果您仍然覺得 Arch 的門檻還是太高了些…

[Chakra](http://www.chakra-project.org/) 是個以 Arch 為基礎打造的、預先整合 [KDE](http://kde.org/) 桌面環境的 Linux 發行版本，您或許可以嘗試看看！
