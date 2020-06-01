CarrierWave.configure do |config|

  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.fog_credentials = {
      :provider               =>  'AWS',
      :aws_access_key_id      =>  'test',
      :aws_secret_access_key  =>  'test',
      :region                 =>  'us-east'
    }
    config.fog_directory = 'test'
    config.fog_public    = false
    config.storage       = :fog
  end
end
