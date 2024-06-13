# テーブル設計

## usersテーブル

| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| nickname           | string  | null: false  |
| last-name          | string  | null: false  |
| first-name         | string  | null: false  |
| last-name(kana)    | string  | null: false  |
| first-name(kana)   | string  | null: false  |
| birthday           | integer | null: false  |


### Association

- has_many :items
- has_many :orders



## itemsテーブル

| Column             | Type      | Options      |
| ------------------ | --------- | ------------ |
| title              | string    | null: false  |
| content            | text      | null: false  |
| category           | string    | null: false  |
| items-status       | string    | null: false  |
| delivery-price     | string    | null: false  |
| delivery-area      | string    | null: false  |
| delivery-date      | string    | null: false  |
| items-price        | integer   | null: false  |
| user               | reference | null: false, foreign_key |
| order              | reference | null: false, foreign_key |


### Association

- belongs_to :user
- has_one :order



## ordersテーブル

| Column             | Type      | Options      |
| ------------------ | --------- | ------------ |
| user               | reference | null: false, foreign_key |
| item               | reference | null: false, foreign_key |
| address            | reference | null: false, foreign_key |


### Association

- belongs_to :user
- belongs_to :item
- has_many :address



## addressテーブル

| Column             | Type      | Options      |
| ------------------ | --------- | ------------ |
| post-number        | integer   | null: false  |
| prefecture         | string    | null: false  |
| city               | string    | null: false  |
| number             | string    | null: false  |
| building           | string    |              |
| phone-number       | integer   | null: false  |
| order              | reference | null: false  |


### Association

- belongs_to :address