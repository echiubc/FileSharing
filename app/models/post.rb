class Post < ApplicationRecord
    has_one_attached :file, dependent: :destroy
    belongs_to :user

    def self.search(search)
        if search
            post_search = Post.find_by(filename: search)
            if post_search
                @posts = self.where(filename: search, user_id: Current.user.id)
            else
                @posts = self.where(user_id: Current.user.id)
            end

        else
            @posts = self.where(user_id: Current.user.id)
        end
    end
end
