# .idx/dev.nix - 定義雲端開發環境
{ pkgs, ... }: {
  # 選擇你的頻道 (stable-23.11 or unstable)
  channel = "stable-23.11";

  # 1. 定義系統依賴 (相當於 Dockerfile)
  packages = [
    pkgs.nodejs_20
    pkgs.bun # 如果你有用 bun
    pkgs.git
    pkgs.docker # 如果你需要 docker
  ];

  # 2. 設定環境變數
  env = {
    PORT = "3000";
  };

  idx = {
    # 3. 定義擴充套件 (VS Code Extensions)
    extensions = [
      "esbenp.prettier-vscode"
      "dbaeumer.vscode-eslint"
      # 在這裡加入你常用的套件 ID
    ];

    # 4. 定義預覽視窗 (Previws)
    previews = {
      enable = true;
      previews = {
        web = {
          # 這裡設定啟動指令，例如 npm run dev
          command = ["npm" "run" "dev" "--" "--port" "$PORT" "--host" "0.0.0.0"];
          manager = "web";
        };
      };
    };

    # 5. 工作區生命週期 (第一次打開時執行什麼)
    workspace = {
      onCreate = {
        npm-install = "npm install";
        # 或者 "bun install"
      };
      onStart = {
        # 每次重啟時執行的指令
        git-pull = "git pull";
      };
    };
  };
}
