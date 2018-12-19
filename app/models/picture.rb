class Picture < ApplicationRecord
belongs_to:pothole
mount_uploader :id, MyuploaderUploader 
end
