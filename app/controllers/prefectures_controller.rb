class PrefecturesController < ApplicationController
  def aomori
    @post_images = PostImage.ransack(address_cont: "青森").result
    @post_images = @post_images.page(params[:page])
  end

  def iwate
    @post_images = PostImage.ransack(address_cont: "岩手").result
    @post_images = @post_images.page(params[:page])
  end

  def miyagi
    @post_images = PostImage.ransack(address_cont: "宮城").result
    @post_images = @post_images.page(params[:page])
  end

  def akita
    @post_images = PostImage.ransack(address_cont: "秋田").result
    @post_images = @post_images.page(params[:page])
  end

  def yamagata
    @post_images = PostImage.ransack(address_cont: "山形").result
    @post_images = @post_images.page(params[:page])
  end

  def hukushima
    @post_images = PostImage.ransack(address_cont: "福島").result
    @post_images = @post_images.page(params[:page])
  end

  def ibaraki
    @post_images = PostImage.ransack(address_cont: "茨城").result
    @post_images = @post_images.page(params[:page])
  end

  def tochigi
    @post_images = PostImage.ransack(address_cont: "栃木").result
    @post_images = @post_images.page(params[:page])
  end

  def gunma
    @post_images = PostImage.ransack(address_cont: "群馬").result
    @post_images = @post_images.page(params[:page])
  end

  def saitama
    @post_images = PostImage.ransack(address_cont: "埼玉").result
    @post_images = @post_images.page(params[:page])
  end

  def chiba
    @post_images = PostImage.ransack(address_cont: "千葉").result
    @post_images = @post_images.page(params[:page])
  end

  def tokyo
    @post_images = PostImage.ransack(address_cont: "東京").result
    @post_images = @post_images.page(params[:page])
  end

  def kanagawa
    @post_images = PostImage.ransack(address_cont: "神奈川").result
    @post_images = @post_images.page(params[:page])
  end

  def nigata
    @post_images = PostImage.ransack(address_cont: "新潟").result
    @post_images = @post_images.page(params[:page])
  end

  def toyama
    @post_images = PostImage.ransack(address_cont: "富山").result
    @post_images = @post_images.page(params[:page])
  end

  def ishikawa
    @post_images = PostImage.ransack(address_cont: "石川").result
    @post_images = @post_images.page(params[:page])
  end

  def hukui
    @post_images = PostImage.ransack(address_cont: "福井").result
    @post_images = @post_images.page(params[:page])
  end

  def yamanashi
    @post_images = PostImage.ransack(address_cont: "山梨").result
    @post_images = @post_images.page(params[:page])
  end

  def nagano
    @post_images = PostImage.ransack(address_cont: "長野").result
    @post_images = @post_images.page(params[:page])
  end

  def gifu
    @post_images = PostImage.ransack(address_cont: "岐阜").result
    @post_images = @post_images.page(params[:page])
  end

  def shizuoka
    @post_images = PostImage.ransack(address_cont: "静岡").result
    @post_images = @post_images.page(params[:page])
  end

  def aichi
    @post_images = PostImage.ransack(address_cont: "愛知").result
    @post_images = @post_images.page(params[:page])
  end

  def mie
    @post_images = PostImage.ransack(address_cont: "三重").result
    @post_images = @post_images.page(params[:page])
  end

  def shiga
    @post_images = PostImage.ransack(address_cont: "滋賀").result
    @post_images = @post_images.page(params[:page])
  end

  def kyoto
    @post_images = PostImage.ransack(address_cont: "京都").result
    @post_images = @post_images.page(params[:page])
  end

  def osaka
    @post_images = PostImage.ransack(address_cont: "大阪").result
    @post_images = @post_images.page(params[:page])
  end

  def hyogo
    @post_images = PostImage.ransack(address_cont: "兵庫").result
    @post_images = @post_images.page(params[:page])
  end

  def nara
    @post_images = PostImage.ransack(address_cont: "奈良").result
    @post_images = @post_images.page(params[:page])
  end

  def wakayama
    @post_images = PostImage.ransack(address_cont: "和歌山").result
    @post_images = @post_images.page(params[:page])
  end

  def tottori
    @post_images = PostImage.ransack(address_cont: "鳥取").result
    @post_images = @post_images.page(params[:page])
  end

  def shimane
    @post_images = PostImage.ransack(address_cont: "島根").result
    @post_images = @post_images.page(params[:page])
  end

  def okayama
    @post_images = PostImage.ransack(address_cont: "岡山").result
    @post_images = @post_images.page(params[:page])
  end

  def hiroshima
    @post_images = PostImage.ransack(address_cont: "広島").result
    @post_images = @post_images.page(params[:page])
  end

  def yamaguchi
    @post_images = PostImage.ransack(address_cont: "山口").result
    @post_images = @post_images.page(params[:page])
  end

  def tokushima
    @post_images = PostImage.ransack(address_cont: "徳島").result
    @post_images = @post_images.page(params[:page])
  end

  def kagawa
    @post_images = PostImage.ransack(address_cont: "香川").result
    @post_images = @post_images.page(params[:page])
  end

  def ehime
    @post_images = PostImage.ransack(address_cont: "愛媛").result
    @post_images = @post_images.page(params[:page])
  end

  def kochi
    @post_images = PostImage.ransack(address_cont: "高知").result
    @post_images = @post_images.page(params[:page])
  end

  def hukuoka
    @post_images = PostImage.ransack(address_cont: "福岡").result
    @post_images = @post_images.page(params[:page])
  end

  def saga
    @post_images = PostImage.ransack(address_cont: "佐賀").result
    @post_images = @post_images.page(params[:page])
  end

  def nagasaki
    @post_images = PostImage.ransack(address_cont: "長崎").result
    @post_images = @post_images.page(params[:page])
  end

  def kumamoto
    @post_images = PostImage.ransack(address_cont: "熊本").result
    @post_images = @post_images.page(params[:page])
  end

  def ooita
    @post_images = PostImage.ransack(address_cont: "大分").result
    @post_images = @post_images.page(params[:page])
  end

  def miyazaki
    @post_images = PostImage.ransack(address_cont: "宮崎").result
    @post_images = @post_images.page(params[:page])
  end

  def kagoshima
    @post_images = PostImage.ransack(address_cont: "鹿児島").result
    @post_images = @post_images.page(params[:page])
  end

end
