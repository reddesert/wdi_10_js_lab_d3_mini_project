# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :text
#  playlists  :integer
#  play_count :integer
#  subscriber :boolean
#  country    :text
#  age        :integer
#  gender     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
