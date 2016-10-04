# == Schema Information
#
# Table name: contacts
#
#  id      :integer          not null, primary key
#  name    :text
#  email   :text
#  user_id :integer          not null
#

class Contact < ActiveRecord::Base

  validates :user_id, presence: true, uniqueness: {scope: :email}

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :shares,
    primary_key: :id,
    foreign_key: :contact_id,
    class_name: :ContactShare

  has_many :shared_users,
    through: :shares,
    source: :user
end
