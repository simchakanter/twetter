class Twet < ActiveRecord::Base
  belongs_to :user
  has_many :retwets, class_name: "Twet", :foreign_key => "parent_id"
  belongs_to :parent, class_name: "Twet"


  # validates :content, :presence => true, :length => { :minimum => 2, :maximum => 140 }, :unless => :parent_id?
  validates :user, :presence => true

  # Gets all twets made by the users referenced by the ids passed, starting with the
  # most recent twet made.
  #
  def self.by_user_ids(*ids)
    where(:user_id => ids.flatten.compact.uniq).order('created_at DESC')
  end
end
