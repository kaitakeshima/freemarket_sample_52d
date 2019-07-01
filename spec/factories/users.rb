FactoryBot.define do

  factory :user do
    nickname              {"aaa"}
    sequence(:email)      {Faker::Internet.email}
    password              {"aaaaaa"}
    password_confirmation {"aaaaaa"}
    family_name           {'吉田'}
    first_name            {'優作'} 
    family_name_kana      {'ヨシダ'}
    first_name_kana       {'ユウサク'}
    birthday              {1}
    city                  {3}
    address               {2}
  end

end