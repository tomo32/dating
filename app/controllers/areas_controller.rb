class AreasController < ApplicationController
  def hokkaido
    @post_images = PostImage.ransack(address_cont_any: ["北海道"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tohoku
    @post_images = PostImage.ransack(address_cont_any: ["岩手県", "秋田県", "宮城県", "福島県", "青森県", "山形県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kanto
    @post_images = PostImage.ransack(address_cont_any: ["埼玉県", "東京都", "千葉県", "栃木県", "茨城県", "神奈川県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tyubu
    @post_images = PostImage.ransack(address_cont_any: ["新潟県", "福井県", "石川県", "長野県", "岐阜県", "富山県", "山梨県", "静岡県", "愛知県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kansai
    @post_images = PostImage.ransack(address_cont_any: ["三重県", "滋賀県", "京都府", "大阪府", "和歌山県", "兵庫県", "奈良県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def tyugoku
    @post_images = PostImage.ransack(address_cont_any: ["鳥取県", "島根県", "岡山県", "広島県", "山口県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def shikoku
    @post_images = PostImage.ransack(address_cont_any: ["香川県", "高知県", "徳島県", "愛媛県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def kyusyu
    @post_images = PostImage.ransack(address_cont_any: ["福岡県", "長崎県", "佐賀県", "熊本県", "大分県", "宮崎県", "鹿児島県"]).result
    @post_images = @post_images.page(params[:page])
  end

  def okinawa
    @post_images = PostImage.ransack(address_cont_any: ["沖縄県"]).result
    @post_images = @post_images.page(params[:page])
  end

end
