if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AKIAJLRKXHHR53TD5BHA'],
        :aws_secret_access_key => ENV['CXCGAsQDqFKp5cjM1wUOMJUio+2pNmj+IuOkplto'],
        :region                => ENV['sa-east-1']
      }
      config.fog_directory     =  ENV['sampleappbucket2020']
      config.fog_provider = 'fog/aws'
    end
  end