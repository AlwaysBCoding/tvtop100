CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: "AWS",
		aws_access_key_id: ENV["TVTOP100_AWS_ACCESS_KEY_ID"],
		aws_secret_access_key: ENV["TVTOP100_AWS_SECRET_ACCESS_KEY"]
	}
	config.fog_directory = ENV["TVTOP100_AWS_S3_BUCKET"]
end
