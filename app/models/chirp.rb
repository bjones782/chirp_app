class Chirp < ApplicationRecord

    belongs_to :user
    has_many :squwaks, dependent: :destroy

end
