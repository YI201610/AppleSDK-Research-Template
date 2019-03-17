# Apple SDK Research Template

AppleのSDKを検証する時に使える、雛形のプロジェクトです。

## 役割

- 複数の検証項目を、1つのアプリにまとめて開発していける
- プロジェクトごとに、別々の検証アプリを設けることを支援する。
- 1つの検証項目につき、他の検証項目から独立した1つの画面を作る作業量を減らす。

## 用例

- 新しいプロジェクトで、迅速に新規の検証環境を作る。
- 異なるiOSバージョンでの動作確認を行う。
   - ベータ版のiOSでの動作を検証する。  
      - (e.g.) UIKitの仕様が変更になった時、レイアウト崩れがないか。レイアウトの実装方法は妥当か。

## プロジェクト構成の概要

:warning: 現在のプロジェクト構成は暫定のため、今後変更になる可能性があります。


(a) ... ここに検証項目に対応するViewControllerを追加する
(b) ... `Apple SDK Reserch Template` アプリのフレームワーク。基本は触らない。

```
├── AppleSDKTips
│   ├── Application ... (a)
│   └── Framework ..... (b)
```

(c) ... 検証項目のメニューを定義する。plist形式。テキストエディタで編集して、検証項目を追加する。

```
├── AppleSDKTips
│   ├── Application
│   │   └── Resource
│   │       └── topMenu.plist ... (c) 

```

## 



## License
AppleSDK-Research-Template is licensed under the MIT license.
