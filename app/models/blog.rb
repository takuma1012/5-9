class Blog < ApplicationRecord
	belongs_to :user

validates :body, uniqueness: {case_sensitive: false}, length: {maximum: 200}

	# validates :book_name, presence: true
	# validates :comment, presence: true
end
