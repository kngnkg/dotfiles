# dotfiles

## clone

```
cd ~/
git clone https://github.com/kwtryo/dotfiles.git
```

## インストール

```
./install.sh
```

## Mac

### Homebrewをインストール

コマンドが変わっている可能性があるので[公式](https://brew.sh/index_ja)を確認する

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### AppStoreにログインしておく

先にAppStoreにログインしておかないと`mas`パッケージのインストールに失敗する

### Brewfileから一括インストール

```
brew bundle
```
