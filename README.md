# dotfiles

## 1: clone

```
cd ~/
git clone https://github.com/kwtryo/dotfiles.git
```

## 2: インストール

### MacOS or Linux

```
./install.sh
```

### Windows

非対応

## 3-A: Mac

### Homebrewをインストール

コマンドが変わっている可能性があるので[公式](https://brew.sh/index_ja)を確認する。

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### AppStoreにログインしておく

先にAppStoreにログインしておかないと`mas`パッケージのインストールに失敗する。

### `~/Brewfile`から一括インストール

```
cd ~/
brew bundle
```

## 3-B: Linux

Linuxはコンテナとして使うことを想定しているので、`./install.sh`の実行後は特別な作業は不要。`4`以降の手順も不要。

## 3-C: Windows

非対応

## 4: `~/.gitconfig`の設定

`~/.gitconfig`はdotfilesに含めていないので、適宜設定する。

## 5: Dev Containerの設定

ホストマシンの`settings.json`を以下のように変更する。

```json
{
    // ...
    "dotfiles.repository": "kwtryo/dotfiles",
    "dotfiles.installCommand": "~/dotfiles/install.sh",
    // ...
}
```
