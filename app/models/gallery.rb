class Gallery < ApplicationRecord

    #attr_accessible :gallery_picture, :remove_image
    #has_many :gallery_picture, dependent: :destroy #added to test
    #accepts_nested_attributes_for :gallery_picture, allow_destroy: true #added to test
#It is weired that I need to block the line below to make the function work.
    #belongs_to :general_info

    validates_presence_of :gallery_title
    validates_presence_of :gallery_description
    validates_presence_of :gallery_picture
    validates_presence_of :GeneralInfo_id

    mount_uploaders :gallery_picture, GalleryUploader
end
