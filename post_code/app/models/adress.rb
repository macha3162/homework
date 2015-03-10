class Adress < ActiveRecord::Base
  validates :code, presence: true,
           format: {with: /\A[0-9]+\Z/},
           length: {is: 7}
end

