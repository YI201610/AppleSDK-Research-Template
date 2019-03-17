# Apple SDK Research Template

AppleのSDKを検証する時に使える、雛形のプロジェクトです。

## 役割

- 複数の検証項目を、1つのアプリにまとめて開発できるようにする環境を提供する。
- プロジェクトごとに、別々の検証アプリを設けることを支援する。
- 1つの検証項目につき、他の検証項目から独立した1つの画面を作る作業量を減らす。

## 用例

- 新しいプロジェクトで、迅速に、新規の検証環境を作る。
- 異なるiOSバージョンでの動作確認を行う。
   - ベータ版のiOSでの動作を検証する。  
      - (e.g.) UIKitの仕様が変更になった時、レイアウト崩れがないか。レイアウトの実装方法は妥当か。

## プロジェクト構成の概要

:warning: 現在のプロジェクト構成は暫定のため、今後変更になる可能性があります。


- (a) ... ここに検証項目に対応するViewControllerを追加する
- (b) ... `Apple SDK Reserch Template` アプリのフレームワーク。基本は触らない。

```
├── AppleSDKTips
│   ├── Application ... (a)
│   └── Framework ..... (b)
```

- (c) ... 検証項目のメニューを定義する。plist形式。テキストエディタで編集して、検証項目を追加する。

```
├── AppleSDKTips
│   ├── Application
│   │   └── Resource
│   │       └── topMenu.plist ... (c) 

```

## 使い方

1. プロジェクトをXcodeで開く

2. `src/AppleSDKTips/Application/Resource/topMenu.plist` をテキストエディタで編集し、新しい検証項目を追加する。
  - 各項目は、 `title` と `vc` (ViewController) から構成する。
    - 次の例では、 titleに「サンプルタイトル1」、 vcに「SampleViewController」を指定している。

```
<key>title</key>
<string>サンプルタイトル1</string>
<key>vc</key>
<string>SampleViewController</string>
```

3. 「2.」の「vc」で指定したViewControllerを、プロジェクトに追加する。

4. 「2.」で追加したvcと全く同名のStoryboardをプロジェクトに追加する。
  - そのStoryboardに、NavigationControllerと、rootViewControllerを追加する。
    - rootViewControllerに、「2.」で追加したvcを設定する。
    - rootViewControllerに、BarButtonItemを追加する。テキスト文字を「戻る」と入力する。
	  - BarButtonItemを「Exit」に接続し、Unwind Segueの「backToTop」にを選択する。


5. アプリを起動し、検証項目を選択する
  - 「4.」で追加したStoryboardを経て、「3.」で追加したViewControllerが表示されることを確認する。

6. 「3.」で追加したViewControllerに検証したい内容を実装する。


## License
AppleSDK-Research-Template is licensed under the MIT license.
