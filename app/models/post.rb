class Post < ApplicationRecord
    validates :title, :cocontent presence: true
    
    
    belong_to :user
end


#### ANTES
# Post.create(title: "titulo")
# Post.create!(title: "titulo") --> en caso de error, laza un aviso al momento de crearse


#### DURANTE
# post = Post.new(title: "")
# post.save!

# #### DESPUES
# post = Post.find(1)
# post.update(title: "")

# post = Post.fnd(2)
# post.valid? FALSE
# post.invalid? TRUE
