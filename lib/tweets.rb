module Tweets
  def self.client
    Twitter::REST::Client.new do |config|
      config.consumer_key = "bnYrSHhUlRfaTj4JWRF2sw"
      config.consumer_secret = "PQUTWJ0HeAtVmJlToMJiAJe01aOFQ6HPiXrmxMtYs8"
      config.access_token = "42545218-6ErCjtLG5EePXEKPOFJAVvXFKpVC7vbPOR94jhCpf"
      config.access_token_secret = "BonExDUUyNAQAQ9b1eCoswy1unHLUOa6UhVmOrS0pMU"
    end
  end

end
