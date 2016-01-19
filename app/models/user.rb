class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :username
  has_and_belongs_to_many :films
  def has_film(film)
    @uf ||= self.films
    b = false
    @uf.each do |f|
      b = ((f.id == film.id) or b)
    end
    return b
  end

end
