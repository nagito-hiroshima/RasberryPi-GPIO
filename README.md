# RasberyPi指定時間GPIO出力
## 概要
キャンパスのチャイム（Raspberry Pi）をGPIO出力させるシェルスクリプトファイル

## 必要なもの
- Raspberry Pi 3 Model B
- Raspberry Pi用ACアダプター
- Raspberry Pi用ケース
- 導線

## コマンド

1. 平日0時にシェルスクリプトを実行するためにcronを設定する（動かない場合は曜日指定を1-5にする）
```
XDG_RUNTIME_DIR=/run/user/1000
0 0 * * 1, 2, 3, 4, 5 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nagito-hiroshima/RaspberryPi-GPIO/master/chime.sh)"
```
2. 動作確認用  

タイムセットコマンド
```
curl -fsSL https://raw.githubusercontent.com/nagito-hiroshima/RaspberryPi-GPIO/master/chime.sh | sh
```
今すぐ確認コマンド
```
echo out > /sys/class/gpio/gpio14/direction;sleep 2s;echo in > /sys/class/gpio/gpio14/direction
```
## 解説
ラズベリーパイのGPIOを扱うにはC#/Python/シェルスクリプトなど沢山ありますが  
今回は　****「シェルスクリプト」**** で作成していきます。  
以下のコマンドはラズベリーパイ標準のコマンドプロントに入力実行することが可能で、そこからシェルで作成しcronなどで定期的に実行するなど応用ができます。   

(n)と例があるところは下のように使いたい番号に変換してください。  
``` echo (n)```→```echo 21``` 
  
  
ピン配置  
![image](https://user-images.githubusercontent.com/68215637/119237767-8616a500-bb79-11eb-9052-dbd4c725bbe7.png)


ラズベリーパイのGPIOを変化させるには
あるディレクトリ内にあるファイルを書き換えることで自動でGPIOの出力が変化します。
そこでまずこのコマンドを実行します。
```
echo (n) > /sys/class/gpio/export
```
このコマンドでは(n)のピンを使うためのファイルを作成してくれます。
簡単に言えば「今からこのピン使いますよ」と宣言しています。

そしてそのピンを出力として扱うのか入力として扱うのかを決めます
今回のスクリプトではOUTとINを切り替えて操作しています。（後述）
出力として設定するには
```
echo out > /sys/class/gpio/gpio(n)/direction
```
入力として設定するには
```
echo in > /sys/class/gpio/gpio(n)/direction
```
で設定できます。

このスクリプトでは使ってないですが出力を切り替え（HIGHかLOW）するには  
  
HIGHにする
```
echo 1 > /sys/class/gpio/gpio(n)/value
```
LOWにする
```
echo 0 > /sys/class/gpio/gpio(n)/value
```
GPIOを使い終わったら最後GPIOに
```
sudo echo (n) > /sys/class/gpio/unexport
```
を実行して「もう使わないピンだよ」と宣言してください。  

なぜ、出力モードを切り替えてON・OFFしたのかですが
普通であればGPIOピンを出力モードにして、GNDに接続すればよいのですが
RaspberryPiの出力は3.3vかつ最大出力電流は16mAしか無いためリレーを駆動できません。そこで、５Vの出力を活用してスイッチをON/OFFしてGNDを接続するシンク電流で作成しました。
![image](https://user-images.githubusercontent.com/68215637/119237907-60d66680-bb7a-11eb-9b28-4f645d5566f7.png)


なので今回の接続回路はこのようになっていて、シンク電流でONを切り替えているため
![image](https://user-images.githubusercontent.com/68215637/119237863-1359f980-bb7a-11eb-9e15-d071c19f1d84.png)

初期設定でdirectionをOUTに設定するとcronなどで読み込みをしたとき毎回電流が流れてしまうため  
(OUTにするとラズベリー側はGNDになって電流が流れ込み通電状態になるため）  
directionの設定を時間していしてOUT・INを切り替えて疑似的にON・OFF再現しています。
## 画像引用
https://tool-lab.com/raspberrypi-startup-22/
