---
layout: post
title:  "請注意：自 Linux 3.13 起 PS/2 鍵盤改以核心模組方式驅動"
date:   2014-03-05 14:44:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[Linux 3.13 WARNING: PS/2 keyboard support is now modular](https://www.archlinux.org/news/linux-313-warning-ps2-keyboard-support-is-now-modular/)

我們收到要求支援 i8042 鍵盤、滑鼠控制器核心模組的請求。部份使用者看到怪異的錯誤訊息，因為他們沒有此一模組，且手動偵測又會拖慢開機速度。Tom 處理了這個核心問題（感謝 Tom！）而終於在 3.13 版解決了。

為了能在 init 早期階段就獲取鍵盤輸入，如果您還沒有這麼做，請將 `keyboard` hook 加進 `/etc/mkinitcpio.conf` 的 `HOOK=` 這行，之後請執行 `mkinitcpio -P`。這項設定也有可能早就已經在您的預設配置裡了。

*注意：* 這項設定有個負面影響：在有些主機板（大部分是較舊款，但是新款的也會有）裡頭 i8042 控制器是無法被自動偵測的。這雖然很罕見，但是只要不巧遇上了就會有無法使用鍵盤的現象。您可以用下列指令先行偵測：

<pre>
$ dmesg -t | grep '^i8042'
i8042: PNP: No PS/2 controller found. Probing ports directly.
</pre>

倘若您有個 PS/2 連接埠且看到這樣的輸出訊息，請將 `atkbd` 加進 'mkinitcpio.conf' 的 `MODULES=` 這行，之後也請執行 `mkinitcpio -P`。如果您發現重開機後沒有鍵盤可用，別擔心！只要將

`earlymodules=atkbd modules-load=atkbd`

加進您啟動程式 (bootloader) 的 kernel 命令列即可解決。

為了讓大家在升級前有機會提前注意到本文，本文刊出之後，再過幾個小時我才會把 Linux 3.13 推進 [core] 套件庫中。如果這項異動帶來任何不便，我在此先跟您致歉。
