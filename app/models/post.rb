class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
  # include ActiveModel::Validations
  # validates_with MyValidator
  # inclusion: %w(fiction non-fiction)

  # , { with: "Fiction" || "Non-Fiction" }

  # Subclassing ActiveModel::Validator and invoking with #validates_with


end
