crumb :root do
  link 'メルカリ', root_path
end

crumb :user do
  link 'マイページ', users_mypage_path
  parent :root
end

crumb :user_logout do
  link 'ログアウト', users_mypage_destroy_path
  parent :user
end

crumb :user_profile do
  link 'プロフィール', mypage_pofile_user_path
  parent :user
end

crumb :user_credit do
  link '支払い方法', users_mypage_credit_path
  parent :user
end

crumb :user_identification do
  link '本人情報', users_mypage_identification_path
  parent :user
end

crumb :user_syuppin do
  link '出品した商品', users_mypage_syuppin_path
  parent :user
end

crumb :user_edit do
  link 'メール/パスワード', edit_user_registration_path
  parent :user
end
