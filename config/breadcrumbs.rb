crumb :root do
  link 'メルカリ', root_path
end

crumb :user do
  link 'マイページ', users_mypage_path
  parent :root
end

crumb :user_logout do
  link 'ログアウト', users_mypage_path
  parent :user
end
