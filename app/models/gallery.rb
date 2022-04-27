class Gallery < ApplicationRecord

    #attr_accessible :gallery_picture, :remove_image
    #has_many :gallery_picture, dependent: :destroy #added to test
    #accepts_nested_attributes_for :gallery_picture, allow_destroy: true #added to test
#It is weired that I need to block the line below to make the function work.
    #belongs_to :general_info
    #
    #belongs_to :tag
    #belongs_to :general_info
    # has_many :taggings
    # has_many :gallery, :tags, through: :taggings


    #def all_tags=(names)
    #   self.tags = names.split(",").map do |name|
    #       Tag.where(name: name.strip).first_or_create!
    # end
    # end

    # def all_tags
    #   self.tags.map(&:name).join(", ")
    #end

    validates_presence_of :gallery_title
    validates_presence_of :gallery_description
    validates_presence_of :gallery_picture
    validates_presence_of :GeneralInfo_id
    validates_presence_of :gallery_collaborators

    mount_uploaders :gallery_picture, GalleryUploader
end
