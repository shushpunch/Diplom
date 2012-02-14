class Reason < ActiveRecord::Base
  attr_accessible :name
  has_many :documents,:order=>'name'

  default_scope order(:name)
  
  validates :name,:presence => true,:uniqueness => true
      
  
#  def new_reason?(name)
#    if Reason.where(:name => name).size == 0
#         Reason.create(:name => name)
#    end
#  end

  def new_reason?(document, name)
    return if name.blank?
    if Reason.where(:name => name).size == 0
        r = Reason.new(:name, :reas => name)
        r.save
        document.reason_id = r.id
    end
end  
end
