class Post < ApplicationRecord
    has_one_attached :file, dependent: :destroy
    belongs_to :user
end
