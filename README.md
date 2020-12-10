# Arch Linux Taiwan Community Website

[![Join the chat at https://gitter.im/linux-taiwan/arch.linux.org.tw](https://badges.gitter.im/linux-taiwan/arch.linux.org.tw.svg)](https://gitter.im/linux-taiwan/arch.linux.org.tw?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

這是 [Arch Linux 臺灣社群]網站原始碼，我們使用 [Jekyll] 做內容管理、[GitHub Flow] 做流程管理、[GitHub Actions] 自動佈署。

[Arch Linux 臺灣社群]: http://archlinux.tw/
[Jekyll]: http://jekyllrb.com/
[GitHub Flow]: https://guides.github.com/introduction/flow/
[GitHub Actions]: https://docs.github.com/en/free-pro-team@latest/actions

## 環境配置

### 方法 A：手動安裝

1. 請架設好基本的 Ruby 執行環境，我們推薦您使用 [RVM] 簡化這一步驟。
2. 將此原始碼 `git clone` 到您的本地端之後，在原始碼根目錄下執行 `bundle install` 安裝必要的元件。
3. 在原始碼根目錄執行 `jekyll server` 讓它自動偵測檔案異動。
4. 新增、修改網站內容。您可以在 <http://127.0.0.1:4000/> 看到目前編修的網站樣貌。

[RVM]: https://rvm.io/

### 方法 B：使用 Docker

1. 將此原始碼 `git clone` 到您的本地端之後，執行 `make build` 建立 Docker image。
2. 執行 `make start` 把網站編修過程所需的 Docker container 跑起來。
3. 新增、修改網站內容，再執行 `make update` 將變動更新至 Docker container 裡。您可以在 <http://127.0.0.1:4000/> 看到目前編修的網站樣貌。

## 佈署

* 本網站代管於 GitHub Pages。
* 有新的 pull request 會自動執行 CI/CD。
* CI/CD 由 [GitHub Actions](https://github.com/linux-taiwan/arch.linux.org.tw/actions) 執行。
  * 透過 `jekyll build` 產生靜態網頁於 `docs` 資料夾底下。
    * [jekyll Command Line Usage](https://jekyllrb.com/docs/usage/)
  * 設定客製化網域 `archlinux.tw` 於 `docs/CNAME`。
    * [Managing a custom domain for your GitHub Pages site](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site)
  * 細節請參考 `.github/workflows/build.yaml`。

## 編輯原則

* 可利用 GitHub 的 Pull Request 機制貢獻內容，或使用 git format-patch, git send-email 至 <PingNote.Wu@gmail.com>。
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
* 本專案使用了某些第三方軟體，授權條款全文詳見根目錄底下的 [NOTICE] 檔。

[MIT License]: LICENSE
[NOTICE]: NOTICE
