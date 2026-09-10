class User < ApplicationRecord
    has_one_attached :photo



    # 画像を縦横 200 x 200 ピクセルにリサイズする
  def thumbnail
    # photo.variantで画像を加工し、resize_to_fitで縦横比を維持したまま、指定したサイズにリサイズ
    photo.variant(resize_to_fit: [200, 200]).processed
  end
  
end
