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
  link 'プロフィール', users_mypage_profile_path
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
