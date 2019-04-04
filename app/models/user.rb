class User < ApplicationRecord
    validates :phone, numericality: {greater_than: 5 }, presence: true

    has_many :houses
    has_many :posts
    has_many :notes
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