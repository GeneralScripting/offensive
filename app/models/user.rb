class User < ActiveRecord::Base
  attr_accessible :email, :facebook_idx, :first_name, :image_url, :large_image_url, :last_name, :locale, :small_image_url, :square_image_url, :username, :votes_count
end
