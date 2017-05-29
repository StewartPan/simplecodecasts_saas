Aws.config.update({
    region:'us-east-1',
    credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_ACCESS_KEY']),
})

S3.BUCKET = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET'])