class Form < ActiveRecord::Base
    has_many :replies, dependent: :destroy
end
