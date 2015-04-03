CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'xxx',
    aws_secret_access_key: 'yyy',
    region:                'eu-west-1'
  }
  config.fog_directory  = 'name_of_directory'
end