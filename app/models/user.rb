class User < ActiveRecord::Base
  has_many :tweets

  has_secure_password

  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find {|username| username.slug == slug}
  end
end