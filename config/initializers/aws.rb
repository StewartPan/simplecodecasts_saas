CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAIU4ZB4S6HYBV4CHQ",
      :aws_secret_access_key  => "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"
      # :region                 => ENV['S3_REGION'] # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "devmatchphoto"
end