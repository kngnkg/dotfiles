# dotfiles

## 1: clone

```
cd ~/
git clone https://github.com/kwtryo/dotfiles.git
```

## 2: インストール

```
./install.sh
```

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

## 3-B: Windows

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
