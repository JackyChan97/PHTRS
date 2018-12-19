class PictureController < ApplicationController
   def show
	puts("show params", params)

     @pothole = Pothole.find(params[:pothole_id])
     @picture = @pothole.picture unless @pothole.nil?
  end


  def mystore
    up_file = params[:localfile]
puts("up_file", up_file)
	pothole_id = params[:pothole_id]
puts("pothole_id", pothole_id)
     myfile = MyuploaderUploader.new()
     myfile.store!(up_file)
	# puts("111111111111111111111111111111")
	path = myfile.to_s
	# puts(s)
	@newpicture = Picture.new(:path => path, :pothole_id => pothole_id )
	@newpicture.save
	redirect_to picture_path(:pothole_id => @newpicture.pothole_id)

    
  end

end
