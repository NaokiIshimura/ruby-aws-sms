require 'aws-sdk'

def send_sms(tel:, msg:)
  # sns = Aws::SNS::Client.new(
  #     access_key_id:     'xxxxx',
  #     secret_access_key: 'xxxxx',
  #     region:            'xxxxx'
  # )
  
  # arn = 'arn:aws:sns:ap-northeast-1:646887767209:test-topic'   # Topicで作成したARN
  # res = sns.publish({
  #                       topic_arn: arn,
  #                       message: msg
  #                   })
  
  sns = Aws::SNS::Client.new()
  sns.publish(phone_number: tel, message: msg)

end

send_sms(tel: '+81 xxxxxxxxxx',
         msg: "テスト1\nテスト2\nテスト3")
