class Profile < ActiveRecord::Base
  belongs_to :user
  validate :oddoreven
  def oddoreven
  	if first_name==nil and last_name==nil
  		errors.add(:first_name,"not allowed")
  	end

  end
  validates :gender,:inclusion => {:in=>['male','female']}

  validate :genderandname
  def genderandname
  	if(gender=='male' and first_name=='Sue')
  		errors.add(:first_name,"not allowed")
  	end
  end
  def self.get_all_profiles(min_birth,max_birth)
  		Profile.where("birth_year BETWEEN :minbirth and :maxbirth",minbirth: min_birth,maxbirth: max_birth).order('birth_year asc')
  end


end
