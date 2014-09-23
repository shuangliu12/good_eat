class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, presence:true,
                      numericality: {only_integer:true, greater_than:0, less_than:6}
  validates :body, presence:true
end
