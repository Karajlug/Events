class Media < ActiveRecord::Base
  belongs_to :album

  has_attached_file :file, :styles => {
    :original => "1025x800>",
    :medium => "200x200>",
    :thumb => "100x100>" },
  :url => "/assets/gallery/:class/:attachment/:style/:filename",
  :path => ":rails_root/public/assets/gallery/:class/:attachment/:style/:filename"


  validates :file, :attachment_presence => true
end
