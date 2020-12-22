# == Schema Information
#
# Table name: items
#
#  id                   :integer          not null, primary key
#  description          :string
#  name                 :string
#  picture_content_type :string
#  picture_file_name    :string
#  picture_file_size    :bigint
#  picture_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  post_id              :integer
#
# Indexes
#
#  index_items_on_post_id  (post_id)
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
