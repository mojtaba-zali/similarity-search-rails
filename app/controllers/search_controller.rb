class SearchController < ApplicationController
  def upload
    img_name = params[:upload][:file].original_filename
    img_path = File.join('public', 'upload', img_name)
    File.open(img_path, 'wb') { |f| f.write(params[:upload][:file].read) }
    redirect_to controller: :search, action: :content, img: img_name
  end

  def content
    @img_name = params[:img]
    img_direct = params[:direct]
    if img_direct
      dataset_path = Settings.development.dataset_path
      img_path = "#{dataset_path}/#{@img_name}"
      @img_name = "/image_dataset/#{@img_name}"
    else
      upload_path = Settings.development.upload_path
      img_path = "#{upload_path}/#{@img_name}"
      @img_name = "/upload/#{@img_name}"
    end
    @results = []
    output = `python3.8 #{Settings.development.python_similarity_seach_module} #{img_path}`
    output.split.each do |img|
      @results << "/image_dataset#{img[9..img.length]}"
    end
  end
end
