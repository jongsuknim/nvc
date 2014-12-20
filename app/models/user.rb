class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable


  has_many :experiences, dependent: :destroy
  has_many :feelings, dependent: :destroy
  has_many :needs, dependent: :destroy

end
