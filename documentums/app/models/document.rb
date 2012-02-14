# coding: utf-8

class Document < ActiveRecord::Base
  scope :full_load, includes(:reason, :type, :users, :branch, :chair)
  serialize :settings
  
  belongs_to :reason
  belongs_to :type
  belongs_to :branch
  belongs_to :chair
  has_and_belongs_to_many :users
  

  validates :number,:presence => true,
                    :length   => { :within => 1..10 }
  validates :type_id,:presence => true
  
  validates :cdate,:presence => true

  attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
  
end
