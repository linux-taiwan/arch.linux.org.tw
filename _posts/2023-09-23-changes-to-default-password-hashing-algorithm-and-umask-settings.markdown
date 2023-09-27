---
layout: post
title:  "預設的密碼雜湊演算法與 umask 設定的更動"
date:   2023-09-23 15:52:00 +08:00
author: "Ji Kuai"
---

**原文：**[Changes to default password hashing algorithm and umask settings](https://archlinux.org/news/changes-to-default-password-hashing-algorithm-and-umask-settings/)

從 shadow >= `4.14.0` 起，Arch Linux 的預設密碼雜湊演算法將從 **SHA512** 改成 [**yescrypt**](https://www.openwall.com/yescrypt/)。

此外，[`umask`](https://man.archlinux.org/man/umask.1p) 的設定現在也位於 `/etc/login.defs` 而不是 `/etc/profile`。

這應該不需要任何手動調整。
# 使用 Yescrypt 的原因
因基於密碼的金鑰衍生函數（KDF）和密碼雜湊方式 **yescrypt** 已存在於 [*pam*](https://wiki.archlinux.org/title/PAM) 所使用的 *libxcrypt* 之中，且其面對於密碼破解時比 **SHA512** 更堅固，因此我們採用此演算法。

儘管 [Password Hashing Competition](https://www.password-hashing.net/) 的勝利者是 **argon2**，這個更堅固的演算法目前還未存在於 *libxcrypt* 之中（[第一次嘗試](https://github.com/besser82/libxcrypt/pull/113)、[第二次嘗試](https://github.com/besser82/libxcrypt/pull/150)）。
# 設定 yescrypt
`/etc/login.defs` 內的 `YESCRYPT_COST_FACTOR` 設定目前沒有效果，[除非 *pam* 未來的實作讀取其值](https://github.com/linux-pam/linux-pam/issues/607)。如果需要讓 `YESCRYPT_COST_FACTOR` 的值高過（或低於）其預設值（`5`），可以透過修改 [`pam_unix`](https://man.archlinux.org/man/pam_unix.8) 模組內（於 `/etc/pam.d/system-auth`）的 `rounds` 設定來達到。
# 改動列表
+ **yescrpyt** 現在取代了 **SHA512** 成為預設的密碼雜湊演算法
+ *pam* 現在採用 `/etc/login.defs` 內的 `ENCRYPT_METHOD` 而不再複寫其值
+ 修改了 *filesystem* (>= `2023.09.18`) 和 *pambase* (>= `20230918`) 來確保 `umask` 是設定於 `/etc/login.defs` 而非 `/etc/profile`
