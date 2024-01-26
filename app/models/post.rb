class Post < ApplicationRecord
    has_one_attached :file, dependent: :destroy
    belongs_to :user
  
    def self.search(search)
        if search
            search_term = "%#{search.downcase}%"
            @posts = self.where("LOWER(filename) LIKE ?", search_term).where(user_id: Current.user.id)
        else
            @posts = self.where(user_id: Current.user.id)
        end
    end
end

#test