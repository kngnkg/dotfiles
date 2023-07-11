# dotfiles

## 1: clone

```bash
cd ~/ && git clone https://github.com/kngnkg/dotfiles.git
```

## 2: インストール

### MacOS or Linux

```bash
./install.sh
```

### Windows

#### 管理者権限でPowerShellを起動する

#### ps1ファイルの実行権限を付与する

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

#### インストール

```powershell
.\Install.Windows.ps1
```

## 3-A: Mac

### Homebrewをインストール

コマンドが変わっている可能性があるので[公式](https://brew.sh/index_ja)を確認する。

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### AppStoreにログインしておく

先にAppStoreにログインしておかないと`mas`パッケージのインストールに失敗する。

### `~/Brewfile`から一括インストール

```bash
cd ~/ && brew bundle
```

## 3-B: Linux

Linuxはコンテナとして使うことを想定しているので、`./install.sh`の実行後は特別な作業は不要。`4`以降の手順も不要。

## 3-C: Windows

考え中

## 4: 設定ファイルの編集

`~/.gitconfig`や`~/.aws/`以下のファイルなどはdotfilesに含めていないので、適宜設定する。

## 5: Dev Containerの設定

ホストマシンの`settings.json`を以下のように変更する。

```json
{
    // ...
    "dotfiles.repository": "kngnkg/dotfiles",
    "dotfiles.installCommand": "~/dotfiles/install.sh",
    // ...
}
```
