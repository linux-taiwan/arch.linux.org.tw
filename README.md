# Arch Linux Taiwan Community Site

這是 [Arch Linux 台灣社群](http://archlinux.tw)網站的原始碼，我們使用 [Jekyll](http://jekyllrb.com) 做內容管理。

## 環境配置

1. 請架設好基本的 Ruby 執行環境，我們推薦您使用 [RVM](https://rvm.io/) 簡化這一步驟。
2. 將此原始碼拉回您的本地端之後，在原始碼根目錄下執行 <code>bundle install</code> 安裝必要的元件。（目前我們使用了 Jekyll 與 Compass）
3. 在原始碼根目錄執行 <code>jekyll serve -w</code>，在 _sass/ 目錄執行 <code>compass watch</code> 讓它們自動偵測檔案異動。
4. 新增、修改網站內容。您可以在 http://127.0.0.1:4000 看到目前編修的網站樣貌。

## 編輯原則

* 您貢獻的內容需同意以 [CC BY-SA 3.0 TW 授權條款](http://creativecommons.org/licenses/by-sa/3.0/tw/)或更新版本授權公眾使用。
* 我們接受 Jekyll 可處理的 HTML, Markdown, Textile 格式檔案。
* 不同主題的內容新增、異動請分別用不同的 commit 儲存，且寫清楚 commit message，俾利追蹤管理。
* 遇英文、阿拉伯數字夾在中文句子當中時，前後請加上空白，若遇標點符號則不用，如：Arch Linux 是一套支援 i686/x86-64 架構的通用 GNU/Linux 發行版本。
* 遇版面調整、域名管理等問題時，請用 GitHub 內建的 [issue tracker](https://github.com/hiroshiyui/archlinux-taiwan-site/issues) 找 hiroshiyui 處理。
* 主編保留內容潤飾、刊登與否的最終裁量權。任何違背關乎宗教、政治、性別、性傾向、種族、身心障礙等需遵循政治正確原則的爭議內容，本站恕不接受。
