# PerlでMLライクな言語の評価器を作る

## 利用方法
Cartonの入った環境で
```
carton install
carton exec ./MyLang '/path/to/text'
```
で実行できます。

## 文法
`mygrammer.yp`に従います。

### 値
- 非負整数

### 演算
- 四則演算