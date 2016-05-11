class Vehicle < ActiveRecord::Base
  belongs_to :user

  validates :license, format: {with: /\A[a-zA-Z0-9]+\z/, message: "only allows Alphanumeric characters (no spaces)"}

  validates :colour, format: {with: /\A[a-zA-Z\s]+\z/, message: "only allows Alphanumeric characters (no spaces)"}

  validates :make, presence: true

  validates :year, numericality: {:only_integer => true, :allow_nil => false, :greater_than_or_equal_to => 1900},
            :length => {is: 4}
end
