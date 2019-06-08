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
|user_id|integer|foreign_key: true|
|baby_category_id|integer|foreign_key: true|
|size|string|null: false|
|child_brand_id|integer|foreign_key: true|

### Association
- has_many :goods
- has_many :comments
- has_many :images
- belongs_to :child_brands
- belongs_to :baby_categories
- belongs_to :user

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|image_url|string||
|iten_id|integer|foreign_key: true|

### Association
- belongs_to :item

## goodsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|user_id|integer|foreign_key: true|
|iten_id|integer|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer| |
|comment|text|null: false|
|user_id|integer|foreign_key: true|
|iten_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item


##parent_brands
|Column|Type|Options|
|------|----|-------|
|id|integer||
|bland|string|null: false|

### Association
- has_many :child_brands

###child_brands
|Column|Type|Options|
|------|----|-------|
|id|integer||
|brand|string|null: false|
|parent_brand_id|int|foreign_key: true|

### Association
- belongs_to :parent_brand

###parent_categories
|Column|Type|Options|
|------|----|-------|
|id|integer||
|category|string|null: false|

### Association
- has_many :child_categories
- has_many :baby_categories

###child_categories
|Column|Type|Option|
|------|----|------|
|id|integer||
|category|string|null: false|
|parent_category_id|integer|foreign_key: true|

### Association
- has_many :baby_categories
- belongs_to :parent_category

###baby_categories
|Column|Type|Option|
|------|----|------|
|id|integer||
|category|string|null: false|
|child_category|integer|foreign_key: true|
|parent_category|integer|foreign_key: true|

### Association
- belongs_to :parent_category
- belongs_to :child_category

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
|tel|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|avatar|string||
|profile|text||
|card_number|integer|null: false, unique: true|
|expiration_year|string|null: false|
|expiration_month|string|null: false|
|security_code|string|null: false|

### Association
- has_many :items
- has_many :comments
- has_many :goods
