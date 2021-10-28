Rails.application.routes.draw do
  root to: 'post_images#index'
  devise_for :users
  get 'maps/index', to:'maps#index'
  get 'maps/ab', to:'maps#ab'
  resources :post_images, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  get 'area/hokkaido', to:'areas#hokkaido'
  get 'area/tohoku', to:'areas#tohoku'
  get 'area/kanto', to:'areas#kanto'
  get 'area/tyubu', to:'areas#tyubu'
  get 'area/kansai', to:'areas#kansai'
  get 'area/tyugoku', to:'areas#tyugoku'
  get 'area/shikoku', to:'areas#shikoku'
  get 'area/kyusyu', to:'areas#kyusyu'
  get 'area/okinawa', to:'areas#okinawa'

  get 'prefecture/aomori', to:'prefectures#aomori'
  get 'prefecture/iwate', to:'prefectures#iwate'
  get 'prefecture/miyagi', to:'prefectures#miyagi'
  get 'prefecture/akita', to:'prefectures#akita'
  get 'prefecture/yamagata', to:'prefectures#yamagata'
  get 'prefecture/hukushima', to:'prefectures#hukushima'
  get 'prefecture/ibaraki', to:'prefectures#ibaraki'
  get 'prefecture/tochigi', to:'prefectures#tochigi'
  get 'prefecture/gunma', to:'prefectures#gunma'
  get 'prefecture/saitama', to:'prefectures#saitama'
  get 'prefecture/chiba', to:'prefectures#chiba'
  get 'prefecture/tokyo', to:'prefectures#tokyo'
  get 'prefecture/kanagawa', to:'prefectures#kanagawa'
  get 'prefecture/nigata', to:'prefectures#nigata'
  get 'prefecture/toyama', to:'prefectures#toyama'
  get 'prefecture/ishikawa', to:'prefectures#ishikawa'
  get 'prefecture/hukui', to:'prefectures#hukui'
  get 'prefecture/yamanashi', to:'prefectures#yamanashi'
  get 'prefecture/nagano', to:'prefectures#nagano'
  get 'prefecture/gifu', to:'prefectures#gifu'
  get 'prefecture/shizuoka', to:'prefectures#shizuoka'
  get 'prefecture/aichi', to:'prefectures#aichi'
  get 'prefecture/mie', to:'prefectures#mie'
  get 'prefecture/shiga', to:'prefectures#shiga'
  get 'prefecture/kyoto', to:'prefectures#kyoto'
  get 'prefecture/osaka', to:'prefectures#osaka'
  get 'prefecture/hyogo', to:'prefectures#hyogo'
  get 'prefecture/nara', to:'prefectures#nara'
  get 'prefecture/wakayama', to:'prefectures#wakayama'
  get 'prefecture/tottori', to:'prefectures#tottori'
  get 'prefecture/shimane', to:'prefectures#shimane'
  get 'prefecture/okayama', to:'prefectures#okayama'
  get 'prefecture/hiroshima', to:'prefectures#hiroshima'
  get 'prefecture/yamaguchi', to:'prefectures#yamaguchi'
  get 'prefecture/tokushima', to:'prefectures#tokushima'
  get 'prefecture/kagawa', to:'prefectures#kagawa'
  get 'prefecture/ehime', to:'prefectures#ehime'
  get 'prefecture/kochi', to:'prefectures#kochi'
  get 'prefecture/hukuoka', to:'prefectures#hukuoka'
  get 'prefecture/saga', to:'prefectures#saga'
  get 'prefecture/nagasaki', to:'prefectures#nagasaki'
  get 'prefecture/kumamoto', to:'prefectures#kumamoto'
  get 'prefecture/oita', to:'prefectures#oita'
  get 'prefecture/miyazaki', to:'prefectures#miyazaki'
  get 'prefecture/kagoshima', to:'prefectures#kagoshima'

  get '/post_image/hashtag/:name', to: "post_images#hashtag"

  resources :users,only: [:show,:edit,:update] do
    member do
      get 'followers'
      get 'followings'
    end
    resource :relationships, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
