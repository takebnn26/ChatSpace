# Chat Space
## DB Settings

***

### Users Table

- columns and data type

| columns | data type | constraint |
|:-------:|:---------:|:----------:|
| name | string | index: true, null: false, unique: true |

- association

has_many :groups  
has_many :messages  
has_many :groups_users

***

### Groups Table

- columns and data type

| columns | data type | constraint |
|:-------:|:---------:|:----------:|
| name | string | null: false, unique: true |

- association

has_many :users  
has_many :messages  
has_many :groups_users

***

### Messages Table

- columns and data type

| columns | data type | constraint |
|:-------:|:---------:|:----------:|
| body | text ||
| image | string ||
| user_id | integer | null: false, foreign_key: true |
| grouop_id | integer | null: false, foreign_key: true |

- association

belongs_to :group  
belongs_to :user

***

### GroupsUsers Table

- columns and data type

| columns | data type | constraint |
|:-------:|:---------:|:----------:|
| user_id | integer | null: false, foreign_key: true |
| grouop_id | integer | null: false, foreign_key: true |

- association

belongs_to :group  
belongs_to :user
