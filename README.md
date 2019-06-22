## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|name|string|null: false|
|description|text|null: false|
|condition|string|null: false|
|delivery_fee|string|null: false|
|area|string|null: false|
|delivery_date|string|null: false|
|price|integer|null: false|
|buyer_id|integer|foreign_key: true|
|saler_id|integer|foreign_key: true|
|category_id|integer|foreign_key: true|
|brand_id|integer|foreign_key: true|
|size|string|null: false|

### Association
- has_many :likes
- has_many :comments
- has_many :item_images
- belongs_to :brand
- belongs_to :category
- belongs_to :saler, class_name: "User"
- belongs_to :buyer, class_name: "User"

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|image_url|string||
|item_id|integer|foreign_key: true|

### Association
- belongs_to :item

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|user_id|integer|foreign_key: true|
|item_id|integer|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|comment|text|null: false|
|user_id|integer|foreign_key: true|
|item_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|parent_id|integer||
|brand|string|null: false|

### Association
- has_many :items

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|parent_id|integer||
|category|string|null: false|

### Association
- has_many :items

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|password_confirmation|string|null: false|
|family_name|string|null: false|
|last_name|string|null: false|
|family_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|
|profile|text||

### Association
- has_many :items
- has_many :comments
- has_many :likes
- has_one :address
- has_one :card

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|tel|string|null: false|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|card_number|integer|null: false, unique: true|
|expiration_year|string|null: false|
|expiration_month|string|null: false|
|security_code|string|null: false|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user