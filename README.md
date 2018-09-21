Structure of DataBase

## User
### association

```
has_many :prototypes, comments
has_many :likes
```

### table
- name
- email
- password
- avatar
- profile
- position
- occupation

## Prototype
### association

```
has_many :captured_images, comments
belongs_to :user
has_many :tags, through: :ptototype_tags
has_many :prototype_tags
has_many :likes
```

### table
- title
- catch_copy
- concept
- user_id

## CapturedImage
### association

```
belongs_to :prototype
```

### table
- content
- status
- prototype_id


## Like
### association

```
belongs_to :user
belongs_to :prototype
```

### table
- user_id
- prototype_id



## Comment
### association

```
belongs_to :user, :prototype
```

### table
- content
- user_id
- prototype_id



## Tag
### association

```
has_many :prototypes, through: :ptototype_tags
has_many: prototypes
```

### table
- name



## prototype_tag
### association

```
belongs_to :tag
belongs_to :prototype
```

### table
|tag_id |references|null: false, foreign_key: true|
|prototype_id|references|null: false, foreign_key: true|
