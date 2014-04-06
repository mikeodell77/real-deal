require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Twitter.configure do |config|
  config.consumer_key = "bnYrSHhUlRfaTj4JWRF2sw"
  config.consumer_secret = "PQUTWJ0HeAtVmJlToMJiAJe01aOFQ6HPiXrmxMtYs8"
  config.oauth_token = "42545218-6ErCjtLG5EePXEKPOFJAVvXFKpVC7vbPOR94jhCpf"
  config.oauth_token_secret = "BonExDUUyNAQAQ9b1eCoswy1unHLUOa6UhVmOrS0pMU"
end
