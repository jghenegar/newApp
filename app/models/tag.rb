# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
    has_many :taggings
    has_many :articles, through: :taggings

    def to_s
        name
    end    
end
