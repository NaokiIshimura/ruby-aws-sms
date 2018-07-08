# Ruby Amazon SNS

## Qiita

- https://qiita.com/tanaka512/items/159a3327fd4ac2eb658f
- https://qiita.com/g08m11/items/463af2665f514b35b9f7

## command

```
gem install aws-sdk
```

## run

```
export AWS_ACCESS_KEY_ID="xxxxx"
export AWS_SECRET_ACCESS_KEY="xxxxx"
export AWS_REGION="ap-northeast-1"
ruby sms.rb
```

## memo

- 半角：200文字送信→153/47文字の2通で受信
- 全角：200文字送信→67/66/67文字の3通で受信
