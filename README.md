# RasberyPi指定時間GPIO出力
## 概要
キャンパスのチャイムをRaspberry Piで指定したGPIOを出力する

## 必要なもの
- Raspberry Pi 3 Model B
- Raspberry Pi用ACアダプター
- Raspberry Pi用ケース
- 導線

## コマンド

1. 平日0時にシェルスクリプトを実行するためにcronを設定する（動かない場合は曜日指定を1-5にする）
```
XDG_RUNTIME_DIR=/run/user/1000
0 0 * * 1, 2, 3, 4, 5 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nagito-hiroshima/hiroshima-campus-chime/master/chime.sh)"
```
2. 動作確認用
```
curl -fsSL https://raw.githubusercontent.com/nagito-hiroshima/hiroshima-campus-chime/master/chime.sh | sh
```
