# メルカリDB設計

## usersテーブル
|  column |   type|option   |
|---|---|---|
| nickname  |  string |  null:false |
|image| string||
|  email |  string |  null:false, unique: true |
| password|string|null:false|
|family_name   |  string |  null:false |
|  first_name |  string | null:false  |
|family_name_kana   |  string |   null:false|
|  first_name_kana | string  |  null:false |
|  birthday |  integer | null:false  |
|   phone_number|   integer|  null:false, unique: true |
| prefecture  | integer  |  null:false |
|city|string|null:false|
|address|string|null:false|
|building|string||
|review_good|integer||
|review_ok|integer||
|review_bad|integer||
### Assotiation
- has_many :images
- has_many :comments
- has_many :likes
## creditsテーブル
|  column |type   |   option|
|---|---|---|
| number  |   integer|  unique: true |
| expiration  | integer  |   |
| security code  | integer  |   |
### Assotiation
- has_many :users
## itemsテーブル
|colmn|type|option   |
|---|---|---|
|  buyer_number |integer   |  null:false|
|  name |  string |  null:false |
|   discription|string   |null:falsae   |
|condition   |   | null:false  |
| delivery_fee   |   integer|  null:false |
| delivery_ method|string   | null:false  |
|delivary_days|stirng|null:false|
| price  |  integer | null:false  |
|category_id | integer |  null: false, foreign_key: true  |
|  user_id |   integer| null: false, foreign_key: true  |

###Assotiation
- has_many :likes
- has_many :comments
- has_many :images
- belongs_to :brand
- belongs_to :category
- belongs_to :user
- belongs_to :area
## images テーブル
|column   | type  |option   |
|---|---|---|
|  item_id |   integer|  null: false, foreign_key: true |
|  image |   stirng| null: false  |
###Assotiation
- belongs_to item

## likes テーブル
| column  | type  | option  |
|---|---|---|
|  user_id | integer  |  foreign_key: true |
|  item_id |   integer|  foreign_key: true |



###Assotiation
- belongs_to :user
- belongs_to :item
## brandテーブル
|   column|   type| option  |
|---|---|---|
|  item_id | integer  | foreign_key :true |
|name|string|null: false|
###Assotiation
- has_many :items

## categorysテーブル
|  column |type   |   optioon|
|---|---|---|
| name  | string  |   |
| ancestry  |string   |   |
###Assotiation
- has_many :items
- has_ancestruy
## area
|   column| type  | option  |
|---|---|---|
| name  | string  |   |
| item_id  |  integer | foreign_key: true  |

###Assotiation
- has_many :items