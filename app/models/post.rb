class Post < ApplicationRecord
    has_one_attached :file, dependent: :destroy
    belongs_to :user

    def self.search(search)
        if search
            post_search = Post.find_by(filename: search)
            if post_search
                @posts = self.where(filename: search)
            else
                @posts = Post.all
            end

            # @posts = Post.where(filename: search)

        else
            @posts = Post.all
        end
    end
end
