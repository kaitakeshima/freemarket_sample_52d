FactoryBot.define do
  factory :item do
    user
    name                {'お花'}
    discription         {'中国製'}
    condition           {1}
    delivery_fee        {1}
    delivery_method     {1}
    delivery_days       {1}
    price               {9970}
    size                {1}
    user_id             {1}
    brand               {'デズヌー'}
    prefecture          {1}
    image               {'aaa.jpg'}
    status              {1}
    category            {1}
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
  end
end