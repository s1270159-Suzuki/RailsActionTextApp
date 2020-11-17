class Blogconfig < ApplicationRecord
  validates :title, :stylesheet, presence: {message:'は、必須項目です。'}
end
