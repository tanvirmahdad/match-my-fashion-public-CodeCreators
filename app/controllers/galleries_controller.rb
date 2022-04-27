class GalleriesController < ApplicationController
  def new
    @gallery = Gallery.new
  end

  def show
    #puts "HOMMMMMMMMMMM"
    @gallery = Gallery.find(params[:project_key])
  end

  #def show
  #  @gallery = Gallery.find(params[:project_key])
  #end

  #create the project, use params to sent the foreign key to gallery database
  def create
    @general_info = GeneralInfo.find_by(userKey: session[:current_user_key])
    params[:gallery][:GeneralInfo_id] = @general_info.id
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      flash[:notice] = "Project Created"

      redirect_to '/show_profile'
    else
      render 'new'
    end
  end


  #def remove_file(gallery_picture)
  # File.delete(gallery_picture)
  #end

  #def set_gallery
  # @gallery = Gallery.find(params[:gallery_id])
  #end



  def index
  end


  private

  def gallery_params
    params.permit(:author, :content, :all_tags, :project_key, :gallery, :gallery_title, :gallery_collaborators, :gallery_description, :ratings, :gallery_totalRate, :gallery_totalRator, :GeneralInfo_id, :gallery_picture => [])
  end
end
