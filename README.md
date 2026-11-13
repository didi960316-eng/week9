# 🎵 Henry Moodie - iOS Fan App

一個專為喜愛英國新星創作歌手 **Henry Moodie** 的粉絲所打造的 SwiftUI iOS 應用程式。本 App 整合了精選熱門歌曲導覽、歌曲創作背後故事、歌手成長經歷與趣味冷知識，以及官方 YouTube 頻道的無縫瀏覽體驗。

---

## 📱 App 功能特色

### 1. 🎶 精選推薦歌曲列表 (Songs)
- **多首代表作一覽**：精選收錄全球爆紅神曲〈drunk text〉、感性新作〈indigo〉、〈sunday morning〉、〈MISS U〉、〈closure〉、〈comedown〉、〈right person, wrong time〉、〈eighteen〉、〈pick up the phone〉等曲目。
- **深入歌曲故事**：點選任一歌曲即可進入詳情頁面，展示單曲封面、正式發行日期以及深刻感人的背景創作意境解析。
- **流暢導覽**：採用 SwiftUI `NavigationStack` 與自訂背景主題，帶來優雅細緻的視覺沉浸感。

### 2. 👤 關於 Henry (About Henry)
- **成名之路**：詳細記錄 Henry Moodie 從 11 歲開始寫歌抒發情感、疫情期間在臥室彈唱上傳 TikTok 迅速累積數百萬粉絲，到正式簽約並站上國際舞台的音樂歷程。
- **趣味冷知識輪播 (Fun Facts Carousel)**：
  - 👁️ **密集恐懼症與唱片公司的牆**：每次走過公司走廊必須閉眼轉頭的逗趣日常。
  - 📖 **學生時代最差的科目竟是英文**：細膩動人的詞曲創作者，以前最弱的竟然是英文課！
  - 🍵 **超大聲的後台開嗓儀式**：喝綠茶、全團隊跟著大合唱的後台練唱秘密。
  - 🎤 **從臥室直衝兩萬人 O2 體育館**：受邀為 The Vamps 暖場的震撼體驗。
  - 🎸 **不折不扣的「超級泰勒絲迷」**：偶像 Taylor Swift 如何啟發他的創作靈感。

### 3. 🌐 官方 YouTube 頻道 (YouTube Channel)
- 透過 WebKit (`WKWebView`) 整合 Henry Moodie 的官方 YouTube 頻道，讓樂迷可直接在 App 內觀賞最新的 MV、音樂幕後與現場演出影片。

---

## 🛠️ 開發環境與技術棧

- **程式語言**：Swift 5.9+ / Swift 6
- **UI 框架**：SwiftUI
- **Web 框架**：WebKit (WKWebView)
- **系統需求**：iOS 17.0+ / iOS 18.0+
- **開發工具**：Xcode 15 / 16+

---

## 📂 專案架構

```text
第9週/
├── 第9週.xcodeproj         # Xcode 專案檔
├── 第9週/
│   ├── MyApp.swift          # App 進入點 (@main)
│   ├── ContentView.swift    # 主分頁導覽控制 (TabView: Songs / About Henry / YouTube)
│   ├── Song.swift           # 歌曲資料模型 (Song Model)
│   ├── SongList.swift       # 推薦歌曲清單頁面 (NavigationStack + List)
│   ├── songdetail.swift     # 歌曲詳情頁面 (單曲封面、發行日期、意境解析)
│   ├── aboutHenry.swift     # Henry Moodie 介紹與趣味故事輪播卡片
│   ├── yt chanel.swift      # 官方 YouTube 頻道 WebView 頁面
│   └── Assets.xcassets/     # 專案圖片與單曲封面資源庫
└── README.md                # 專案說明文件
```

---

## 🚀 安裝與執行說明

1. **Clone 專案庫**：
   ```bash
   git clone <REPO_URL>
   ```
2. **開啟專案**：
   使用 Xcode 打開 `第9週.xcodeproj`：
   ```bash
   open 第9週.xcodeproj
   ```
3. **選擇執行環境**：
   在 Xcode 頂部選單選擇 iPhone 模擬器（例如 iPhone 16 Pro 或任何支援 iOS 17+ 的模擬器）或實體裝置。
4. **編譯並運行**：
   按下 `Cmd + R` 或點選 Xcode 的 Run 按鈕即可啟動 App。

---

## 📝 授權與宣告

本專案僅供個人學習與 iOS 課程作業交流使用。歌曲版權與藝人影音資料皆屬於 Henry Moodie 及其唱片發行公司所有。
