# Vimal Hybrid Architecture

維摩團隊的混合開發架構專案

## 🎯 專案簡介

本專案採用「本機深度開發 + 雲端協作」的混合架構，結合 Cursor AI 的強大能力與 Google Project IDX 的無縫協作。

## 🚀 快速開始

### 本機開發環境

1. **克隆專案**
   ```bash
   git clone https://github.com/weimodesigntw-star/vimal-hybrid-architecture.git
   cd vimal-hybrid-architecture
   ```

2. **安裝依賴**
   ```bash
   npm install
   ```

3. **開始開發**
   - 使用 Cursor 打開專案
   - 使用 `Cmd+L` 開啟 Chat，輸入 `Vimal Review: [你的問題]` 召喚顧問團

### 雲端協作環境 (IDX)

1. **導入專案到 Google Project IDX**
   - 訪問 [Firebase Studio](https://idx.google.com)
   - 點擊 "Import Project"
   - 輸入 GitHub URL: `https://github.com/weimodesigntw-star/vimal-hybrid-architecture`
   - 環境會自動根據 `.idx/dev.nix` 配置

2. **分享給隊友**
   - 直接分享 IDX 工作區連結
   - 隊友打開即可看到最新代碼，無需手動配置環境

## 📋 開發流程

詳細流程請參考 [WORKFLOW.md](./WORKFLOW.md)

## 🛠️ 技術棧

- **Node.js**: 20.x
- **包管理**: npm / Bun
- **開發環境**: Cursor + Google Project IDX
- **配置管理**: Nix (`.idx/dev.nix`)

## 📚 相關文檔

- [開發流程](./WORKFLOW.md) - 詳細的開發工作流程
- [.cursorrules](./.cursorrules) - Vimal Advisory Board 規則

## 👥 維摩團隊

---

**License**: MIT
