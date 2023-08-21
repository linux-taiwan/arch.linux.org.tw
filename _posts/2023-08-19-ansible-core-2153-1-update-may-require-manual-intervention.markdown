---
layout: post
title:  "ansible-core >= 2.15.3-1 升級可能需要手動處理"
date:   2023-08-19 22:51:00 +08:00
author: "Ji Kuai"
---

**原文：**[ansible-core >= 2.15.3-1 update may require manual intervention](https://archlinux.org/news/ansible-core-2153-1-update-may-require-manual-intervention)

自 `ansible-core 2.15.3` 起，上游將文件和範例移到[專門的倉庫](https://github.com/ansible/ansible-documentation)（見[相關的版本紀錄](https://github.com/ansible/ansible/blob/v2.15.3/changelogs/CHANGELOG-v2.15.rst#minor-changes)）  
這代表自版本 `2.15.3` 起，`ansible-core` 套件將會停止附帶文件以及 `/etc/ansible/ansible.cfg` 底下的預設設定檔。

而文件現在可從線上取得：[https://docs.ansible.com/](https://docs.ansible.com/)  
至於設定檔，如 [wiki](https://wiki.archlinux.org/title/Ansible#Configuration) 所提到，一個基礎的設定可以用以下指令生成：

```ansible-config init --disabled > ansible.cfg```

從 `ansible-core` <= `2.15.2-1` 更新到 `2.15.3-1` 後，所有使用者存放在 `/etc/ansible/ansible.cfg` 底下的**自訂義**全域設定檔都會被存成一個 `pacsave` 檔。  
可以使用以下指令還原它：

```mv /etc/ansible/ansible.cfg.pacsave /etc/ansible/ansible.cfg```
