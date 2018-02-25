class Blog < ApplicationRecord
	belongs_to :user

validates :title, uniqueness: {case_sensitive: false}, presence: true
validates :body, uniqueness: {case_sensitive: false}, length: {maximum: 200}, presence: true

	# validates :book_name, presence: true
	# validates :comment, presence: true
end
