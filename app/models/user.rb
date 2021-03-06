class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token

  has_many :products,
    primary_key: :id,
    foreign_key: :hunter_id,
    class_name: "Product"

  has_many :upvotes, dependent: :destroy,
  primary_key: :id,
  foreign_key: :hunter_id,
  class_name: "Upvote"

  has_many :upvoted_products,
  through: :upvotes,
  source: :product

  has_many :comments,
  primary_key: :id,
  foreign_key: :hunter_id,
  class_name: "Comment"

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save
    self.session_token
  end

  def hunted_ids
    product_ids = []
    self.products.each do |product|
      product_ids.push(product.id)
    end
    product_ids
  end

  def upvoted_products_ids
    product_ids = []
    self.upvoted_products.each do |product|
      product_ids.push(product.id)
    end
    product_ids
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end


end
