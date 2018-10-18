##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|integer|null: false, unique: true|
|image|string|
|cover_image|string|
### Association
- belongs_to :introduction
- has_many :projects, :through: project_members, dependent: :destroy
- has_many :projects_members, dependent: :destroy
- has_many :settings, dependent: :destroy

## introductionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|introduction|text|
|will|text|
|school_historys_id|integer|foreign_key: true|
|seminars_id|integer|foreign_key: true|
|club_id|integer|foreign_key: true|
|work_history_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|
|skill_id|integer|foreign_key: true|
|language_id|integer|foreign_key: true|
|qualification_id|integer|foreign_key: true|
|award_history_id|integer|foreign_key: true|
|writing_history_id|integer|foreign_key: true|
|portfolio_id|integer|foreign_key: true|
|youtube_id|integer|foreign_key: true|
|link|text|
|topic_id|integer|foreign_key: true|
|information_id|integer|null :false, foreign_key: true|
|file|text|index: true|
### Association
- belongs_to :user
- has_many :school_historys, dependent: :destroy
- has_many :seminars, dependent: :destroy
- has_many :clubs, dependent: :destroy
- has_many :work_historys, dependent: :destroy
- has_many :projects, dependent: :destroy
- has_many :skill, dependent: :destroy
- has_many :languages, dependent: :destroy
- has_many :award_historys, dependent: :destroy
- has_many :writing_historys, dependent: :destroy
- has_many :portfolios, dependent: :destroy
- has_many :youtubes, dependent: :destroy
- has_many :topics, dependent: :destroy
- has_many :informations, dependent: :destroy

## school_historysテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|schoolname|string||
|department|string||
|graduate|date||
|research_content|text||
### Association
- belongs_to :introduction

## seminarsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|name|string||
|url|text|
|period|date|foreign_key: true|
|information|text|
### Association
- belongs_to :introduction

## clubsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|name|string||
|url|text||
|period|date||
|information|text||
### Association
- belongs_to :introduction

## work_historysテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|company_name|string||
|position|string||
|company_period|date||
|company_information|text||
### Association
- belongs_to :introduction

## projectsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|name|string||
|url|text||
|period|date||
|information|text||
|user_id|integer|foreign_key: true|
### Association
- belongs_to :introduction
- has_many :users, :through: project_members, dependent: :destroy
- has_many :project_members, dependent: :destroy

## project_membersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :project

## skillテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|skill|string||
### Association
- belongs_to :introduction

## languagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|can_language|integer(enum)||
|level|integer(enum)||
### Association
- belongs_to :introduction

## qualificationsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|name|string||
|get_date|date||
### Association
- belongs_to :introduction

## award_historysテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|year|date||
|title|string||
### Association
- belongs_to :introduction

## writing_historysテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|date|date||
|title|string||
|url|text|
### Association
- belongs_to :introduction

## portfoliosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|image|text|index: true|
|name|string||
|url|text|
|information|text|
|date|date||
### Association
- belongs_to :introduction

## youtubesテーブル
|Column|Type|Options|
|------|----|-------|
|url|text|
|name|string||
|relation_url|text|
|information|text|
|date|date||
### Association
- belongs_to :introduction

## topicsテーブル
|Column|Type|Options|
|------|----|-------|
|topic|integer(enum)||
|user_id|integer|foreign_key: true|
### Association
- belongs_to :introduction

## informationテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|sex|integer(enum)|null: false|
|date|date|null: false|
|unmarried|integer(enum)||
|children|integer(enum)||
### Association
- belongs_to :introduction

## settingsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key:true|
|display_laguage|integer(enum)|null :false|
|living|integer(enum)|null: false|
|scout_span|text|
|rejection_company|text|
|search results|integer(enum)|null: false|
|alert|integer(enum)|null: false|
### Association
- belongs_to :user
