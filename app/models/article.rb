# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  body       :text
#  status     :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy

    has_many :taggings
    has_many :tags, through: :taggings

    validates :title, presence: true
    validates :body, presence: true #, length: { minimum: 2}

    def tag_list=(tags_string)
        tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
        self.tags = new_or_found_tags
    end      
end