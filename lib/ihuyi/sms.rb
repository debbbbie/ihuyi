require 'rest_client'
require 'nori'

module Ihuyi
  module SMS
    # return send_status(true/false), send_msg (xxxxxx[send_code])
    def self.deliver(cellphone, content)
      base_uri = "http://106.ihuyi.cn/webservice/sms.php"
      parser = Nori.new(:parser => :rexml)
      res = parser.parse(RestClient.get(base_uri, { :params   => {
                                                    :method   => 'Submit',
                                                    :account  => Ihuyi.account,
                                                    :password => Ihuyi.password,
                                                    :mobile   => cellphone,
                                                    :content  => content
                                                } }))
      return res['SubmitResult']['code'] == '2', "#{res['SubmitResult']['msg']}[#{res['SubmitResult']['code']}]"
    end
  end
end
