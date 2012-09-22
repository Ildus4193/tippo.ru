class Order < ActiveRecord::Base

  filters_spam :message_field => :name,
               :email_field => :email,
               :author_field => :lastname,
               :other_fields => [:phone],
               :extra_spam_words => %w()

  validates :name, :presence => true
  validates :lastname, :presence => true
  validates :email, :format=> { :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :country, :presence => true
  validates :zip_code, :presence => true
  validates :city, :presence => true
  validates :street, :presence => true
  validates :house, :presence => true
  validates :phone, :presence => true

  acts_as_indexed :fields => [:name, :lastname, :email, :phone]

  default_scope :order => 'created_at DESC' # previously scope :newest

  belongs_to :file, :class_name => 'Resource'

  def self.latest(number = 7, include_spam = false)
    include_spam ? limit(number) : ham.limit(number)
  end

end
