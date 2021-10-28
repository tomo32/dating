class AreasController < ApplicationController
  def hokkaido
    @post_images = PostImage.ransack(address_cont_any: ["北海道"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tohoku
    @post_images = PostImage.ransack(address_cont_any: ["岩手", "秋田", "宮城", "福島", "青森", "山形"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kanto
    @post_images = PostImage.ransack(address_cont_any: ["埼玉", "東京", "千葉", "栃木", "茨城", "神奈川"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tyubu
    @post_images = PostImage.ransack(address_cont_any: ["新潟", "福井", "石川", "長野", "岐阜", "富山", "山梨", "静岡", "愛知"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kansai
    @post_images = PostImage.ransack(address_cont_any: ["三重", "滋賀", "京都", "大阪", "和歌山", "兵庫", "奈良"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tyugoku
    @post_images = PostImage.ransack(address_cont_any: ["鳥取", "島根", "岡山", "広島", "山口"]).result
    @post_images = @post_images.page(params[:page])
  end

  def shikoku
    @post_images = PostImage.ransack(address_cont_any: ["香川", "高知", "徳島", "愛媛"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kyusyu
    @post_images = PostImage.ransack(address_cont_any: ["福岡", "長崎", "佐賀", "熊本", "大分", "宮崎", "鹿児島"]).result
    @post_images = @post_images.page(params[:page])
  end

  def okinawa
    @post_images = PostImage.ransack(address_cont_any: ["沖縄"]).result
    @post_images = @post_images.page(params[:page])
  end

end
