# Arch Linux Taiwan Community Website

這是 [Arch Linux 臺灣社群]網站原始碼，我們使用 [Jekyll] 做內容管理、[Git-flow] 做流程管理。

[Arch Linux 臺灣社群]: http://archlinux.tw/
[Jekyll]: http://jekyllrb.com/
[Git-flow]: https://github.com/nvie/gitflow


## 環境配置

### 方法 A：手動安裝

1. 請架設好基本的 Ruby 執行環境，我們推薦您使用 [RVM] 簡化這一步驟。
2. 將此原始碼 <code>git clone --recursive</code> 到您的本地端之後，在原始碼根目錄下執行 `bundle install` 安裝必要的元件。（目前我們使用了 Jekyll 與 Compass）
3. 在原始碼根目錄分別執行 `jekyll server` 以及 `compass watch` 讓它們自動偵測檔案異動。
4. 新增、修改網站內容。您可以在 http://127.0.0.1:4000/ 看到目前編修的網站樣貌。

[RVM]: https://rvm.io/

### 方法 B：使用 Docker

1. 將此原始碼 <code>git clone --recursive</code> 到您的本地端之後，在原始碼根目錄下執行 `make submodule` 安裝必要的 Git submodules。
2. 執行 `make build` 建立 Docker image。
3. 執行 `make start` 把網站編修過程所需的 Docker container 跑起來。
4. 新增、修改網站內容，再執行 `make update` 將變動更新至 Docker container 裡。您可以在 http://127.0.0.1:4000/ 看到目前編修的網站樣貌。


## 編輯原則

* 可利用 GitHub 的 Pull Request 機制貢獻內容，或使用 git format-patch, git send-email 至 <hiroshi@ghostsinthelab.org>。
* 您貢獻的內容需同意以 [CC BY-SA 4.0 授權條款]或更新版本授權公眾使用。
* 我們接受 Jekyll 可處理的 HTML, Markdown, Textile 格式檔案。
* 不同主題的內容新增、異動請分別用不同的 commit 儲存，且寫清楚 commit message，俾利追蹤管理。
* 遇英文、阿拉伯數字夾在中文句子當中時，前後請加上空白，若遇標點符號則不用，如：Arch Linux 是一套支援 i686/x86-64 架構的通用 GNU/Linux 發行版本。
* 網站相關錯誤，例如版面錯置或內容有誤，請前往 [GitHub 追蹤系統]回報問題，我們會盡快處理。
* 主編保留內容潤飾、刊登與否的最終裁量權。任何違背關乎宗教、政治、性別、性傾向、種族、身心障礙等需遵循政治正確原則的爭議內容，本站恕不接受。

[CC BY-SA 4.0 授權條款]: http://creativecommons.org/licenses/by-sa/4.0/deed.zh_TW 
[GitHub 追蹤系統]: https://github.com/linux-taiwan/arch.linux.org.tw/issues


## 專案授權

* 程式部分以 [MIT License] 釋出，圖文內容採用 [CC BY-SA 4.0 授權條款]。
* 本專案使用下列第三方軟體，授權條款全文詳見根目錄底下的 [NOTICE] 檔：
  * [Bootstrap]：The Apache 2.0 License
  * [Compass]：修改過的 MIT License（禁止背書或促銷）
  * [Jekyll]：The MIT License
  * [jQuery]：The MIT License
  * [jQuery UI]：The MIT License

[MIT License]: LICENSE
[NOTICE]: NOTICE
[Bootstrap]: http://getbootstrap.com/
[Compass]: http://compass-style.org/
[Jekyll]: http://jekyllrb.com/
[jQuery]: http://jquery.com/
[jQuery UI]: http://jqueryui.com/
