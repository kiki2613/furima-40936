# テーブル設計

## usersテーブル

| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| nickname           | string  | null: false  |
| email              | string  | null: false  |
| password           | string  | null: false  |
| encrypted_password | string  | null: false  |
| last_name          | string  | null: false  |
| first_name         | string  | null: false  |
| last_name_kana     | string  | null: false  |
| first_name_kana    | string  | null: false  |
| birthday           | data    | null: false  |


### Association

- has_many :items
- has_many :orders



## itemsテーブル

| Column             | Type      | Options      |
| ------------------ | --------- | ------------ |
| title              | string    | null: false  |
| content            | text      | null: false  |
| category_id        | integer   | null: false  |
| items_status_id    | integer   | null: false  |
| delivery_price_id  | integer   | null: false  |
| prefecture_id      | integer   | null: false  |
| delivery-date_id   | integer   | null: false  |
| items-price        | integer   | null: false  |
| user               | reference | null: false, foreign_key |


### Association

- belongs_to :user
- has_one :order



## ordersテーブル

| Column             | Type       | Options      |
| ------------------ | ---------- | ------------ |
| user               | references | null: false, foreign_key |
| item               | references | null: false, foreign_key |


### Association

- belongs_to :user
- belongs_to :item
- has_many :address



## addressテーブル

| Column             | Type       | Options      |
| ------------------ | ---------- | ------------ |
| post_number        | integer    | null: false  |
| prefecture_id      | integer    | null: false  |
| city               | string     | null: false  |
| number             | string     | null: false  |
| building           | string     |              |
| phone_number       | string     | null: false  |
| order              | references | null: false  |


### Association

- belongs_to :address