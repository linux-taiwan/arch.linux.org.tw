---
layout: post
title:  "openssh-7.0p1 棄用 ssh-dss 類金鑰"
date:   2015-08-15 12:00:00 +0800
author: "Huei-Horng Yo"
---

**原文：**[openssh-7.0p1 deprecates ssh-dss keys](https://www.archlinux.org/news/openssh-70p1-deprecates-ssh-dss-keys/)

因為近期揭露的安全弱點，新推出的 openssh-7.0p1 棄用了 ssh-dss 類型、亦即所謂的 DSA 型金鑰。詳情請參見[官方公告](http://lists.mindrot.org/pipermail/openssh-unix-announce/2015-August/000122.html)。

在更新與重新啟動遠端的 sshd 之前，請確認您沒有使用此類的金鑰來連接這台機器。要檢查機器上個別用戶是否採用了 DSA 型金鑰來獲取存取權限，可使用：

    grep ssh-dss ~/.ssh/authorized_keys

如果您發現有使用此類金鑰，務必確認您有替代的登入方法，像是使用不同類型的金鑰，或是密碼驗證。

最後，ssh-dss 型的機器用金鑰 (host keys) 同樣也被棄用了，當您連上更新後的機器時，也需要重新確認新產生的金鑰指紋（針對不同金鑰類型的 host key）。
