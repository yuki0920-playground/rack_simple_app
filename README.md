## 準備

```
$ gem install rack
```

## 起動

```
$ rackup
```

`localhost:9292/`へアクセス -> `/hello`へリダイレクト
`localhost:9292/hello`へアクセス -> `Hello World`を表示
`localhost:9292/no_page`へアクセス -> `Not Found`を表示

## 参考

[RailsのリクエストのライフサイクルとRackを理解する（翻訳）](https://techracho.bpsinc.jp/hachi8833/2019_10_03/77493)
