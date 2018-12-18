class PictureController < ApplicationController
  def show
  end
  def mystore
    up_file = params[:localfile]
    myfile = MyuploaderUploader.new
    myfile.f
    myfile.store!(up_file)
    
  end
end
