class Hotel < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :website, :city, :main_image
  mount_uploader :main_image, AvatarUploader

  belongs_to :user

  has_many :tables
  has_many :bookings, through: :tables
  has_one :sitemap
  has_one :gallery

  def find_hotel_by_city(city)
  c = city.upcase
  Hotel.select{|hotel| hotel.city==city}
  end
end
