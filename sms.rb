require 'aws-sdk'

def send_sms(tel:, msg:)
  # sns = Aws::SNS::Client.new(
  #     access_key_id:     'xxxxx',
  #     secret_access_key: 'xxxxx',
  #     region:            'xxxxx'
  # )
  
  sns = Aws::SNS::Client.new()
  
  # オプション：送信するメッセージのタイプに「Transactional」を指定
  # sns.set_sms_attributes({
  #                            attributes: {
  #                                "DefaultSMSType": "Transactional"
  #                            },
  #                        })
  
  sns.publish(phone_number: tel, message: msg)

end

send_sms(tel: '+81 xxxxxxxxxx',
         msg: "テスト")
