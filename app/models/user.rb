# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  username   :text             default("lksjd"), not null
#

class User < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true

  has_many :shares,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :ContactShare

  has_many :contacts,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Contact

  has_many :shared_contacts,
    through: :shares,
    source: :contact

end
