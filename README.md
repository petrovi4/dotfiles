## install

Установка:

```sh
git clone git@github.com:petrovi4/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

Для обновления периодически запускаем

```sh
cd ~/.dotfiles
./script/bootstrap
```

## Описание

В зависимости от OS работа идет либо с папкой **mac**, либо с **nix**


- Каждая папка - это настройка какого-то одного приложения/софта
- При запуске script/bootstrap
  - zsh делается дефолтным шеллом
  - определяется OS и выбирается нужная папка для работы (mac/nix)
  - настраивается git
  - затем все symlink линкуются в домашнюю папку юзера
  - запускается скрипт system/set-defaults.sh
  - и в конце запускается скрипт system/install.sh



### В Маке

- Через системный апдейтер идет попытка обновить OS
- Ставится Homebrew
- Ставится бандл Brewfile со всеми приложениями
- Запускаются все скрипты **install.sh** от всех топиков



### В NIX'е

- Обновляется apt-get
- Ставятся базовые библиотеки
- Запускаются все скрипты **install.sh** от всех топиков


## Роль топика zsh

Через конфиги zsh подглужаются алиасы, загружаются скрипты при старте сессии


В **zshenv.symlink** (который будет прилинкован как **~/.zshenv**) 
- Можно настроить переменные окружения


В **zshrc.symlink** (который будет прилинкован как **~/.zshrc**) 
- Подгружаются все **path.zsh** 
- Подгружаются все остальные ***.zsh** файлы (за исключением **completion.zsh**)
- Загружается autocomplete для zsh
- Подгружаются все **completion.zsh** файлы из топиков




