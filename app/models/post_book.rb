class PostBook < ApplicationRecord
	belongs_to :user

	validates :book_name, presence: true
	validates :comment, presence: true
end
