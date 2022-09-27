class Link < ApplicationRecord
    # 建立投票系統
    acts_as_votable
    belongs_to :user 

end
