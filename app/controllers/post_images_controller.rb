class PostImagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @post_image = PostImage.new
    @latitude = params[:latitude].to_f
    longitude = params[:longitude].to_f
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id

    if EXIFR::JPEG.new(@post_image.image.file.file).exif?
      @post_image.latitude = EXIFR::JPEG::new(@post_image.image.file.file).gps.latitude
      @post_image.longitude = EXIFR::JPEG::new(@post_image.image.file.file).gps.longitude
    end
  rescue
  ensure
    if @post_image.save
      redirect_to post_image_path(@post_image)
    else
      render :new
    end
  end

  def index
    @post_images = PostImage.page(params[:page]).reverse_order
  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit
    @post_image = PostImage.find(params[:id])
  end

  def update
    @post_image = PostImage.find(params[:id])
    if @post_image.update(post_image_params)
      redirect_to post_image_path(@post_image)
    else
      render :edit
    end
  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end

  def hashtag
    @user = current_user
    @tag = Hashtag.find_by(hashname: params[:name])
    @post_images = @tag.post_images
  end

  private

  def post_image_params
    params.require(:post_image).permit(:name, :image, :caption, :address, :latitude, :longitude, :rate, :price_rate, :photo_rate)
  end
end
