class User < ApplicationRecord
  has_many :jobs
  has_attached_file :resume
  validates_attachment :resume, content_type: { content_type: "application/pdf" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
