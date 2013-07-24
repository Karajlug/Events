class Media < ActiveRecord::Base
  belongs_to :album

  has_attached_file :file, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>" },
  :url => "/assets/gallery/:id.:extension",
  :path => ":rails_root/public/assets/gallery/:id.:extension"

  validates :file, :attachment_presence => true
end
