# encoding: utf-8

class ProjectFileUploader < CarrierWave::Uploader::Base
  include CarrierWave::Video::Thumbnailer
	include CarrierWave::RMagick

	# Choose what kind of storage to use for this uploader:
	#storage :file
	# storage :fog

	# Override the directory where uploaded files will be stored.
	# This is a sensible default for uploaders that are meant to be mounted:
	def store_dir
		"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end

	# Provide a default URL as a default if there hasn't been a file uploaded:
	# def default_url
	#   # For Rails 3.1+ asset pipeline compatibility:
	#   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
	#
	#   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
	# end

	# Process files as they are uploaded:
	# process :scale => [200, 300]
	#
	# def scale(width, height)
	#   # do something
	# end

	# Create different versions of your uploaded files:
	# version :thumb do
	#   process :resize_to_fit => [50, 50]
	# end

	# Add a white list of extensions which are allowed to be uploaded.
	# For images you might use something like this:
	def extension_white_list
    %w(jpg jpeg png mp4 mov)
	end

	# Override the filename of the uploaded files:
	# Avoid using model.id or version_name here, see uploader/store.rb for details.
	# def filename
	#   "something.jpg" if original_filename
	# end

	# Process files as they are uploaded:
	#process :resize_to_fill => [850, 315]
	#process :convert => 'png'

	version :image_thumbnail, :if => :image? do
		process :resize_to_limit => [200, 200]
	end

	version :video_thumbnail do #, :if => :video? do
		process thumbnail: [{format: 'png', quality: 10, size: 200, strip: false, logger: Rails.logger}]
		def full_filename for_file
		  png_name for_file, version_name
		end
	end
  
  process :save_content_type_and_size_in_model
  
	protected
		def image?(new_file)
			new_file.content_type.start_with? 'image'
		end

		def video?(new_file)
			new_file.content_type.start_with? 'video'
		end
    
    def png_name for_file, version_name
			%Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.png}
		end
    
    def save_content_type_and_size_in_model
			model.content_type = file.content_type if file.content_type
			model.file_size = file.size
		end

end
