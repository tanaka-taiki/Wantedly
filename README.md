##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|integer|null: false, unique: true|
|image|string|
|cover_image|string|
### Association
- belongs_to :introduction
- has_many :projects, :through: project_members
- has_many :settings
## introductionsテーブル
|Column|Type|Options|
|------|----|-------|
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
- has_many :school_historys
- has_many :seminars
- has_many :clubs
- has_many :work_historys
- has_many :projects
- has_many :skill
- has_many :languages
- has_many :award_historys
- has_many :writing_historys
- has_many :portfolios
- has_many :youtubes
- has_many :topics
- has_many :informations

## school_historysテーブル
|Column|Type|Options|
|------|----|-------|
|schoolname|string|null :false, foreign_key: true|
|department|string|foreign_key: true|
|graduate|date|foreign_key: true|
|research_content|text|
### Association
- belongs_to :introduction

## seminarsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, foreign_key: true|
|url|text|
|period|date|foreign_key: true|
|information|text|
### Association
- belongs_to :introduction

## clubsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, foreign_key: true|
|url|text|
|period|date|foreign_key: true|
|information|text|
### Association
- belongs_to :introduction

## work_historysテーブル
|Column|Type|Options|
|------|----|-------|
|company_name|string|null :false, foreign_key: true|
|position|string|foreign_key: true|
|company_period|date|foreign_key: true|
|company_information|text|
### Association
- belongs_to :introduction

## projectsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, foreign_key: true|
|url|text|
|period|date|foreign_key: true|
|information|text|
|user_id|integer|foreign_key: true|
### Association
- belongs_to :introduction
- has_many :users, :through: project_members
- has_many :project_members

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
|skill|string|foreign_key: true|
### Association
- belongs_to :introduction

## languagesテーブル
|Column|Type|Options|
|------|----|-------|
|can_language|string|null :false, foreign_key: true|
|level|string|foreign_key: true|
### Association
- belongs_to :introduction

## qualificationsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false, foreign_key: true|
|get_date|date|foreign_key: true|
### Association
- belongs_to :introduction

## award_historysテーブル
|Column|Type|Options|
|------|----|-------|
|year|date|foreign_key: true|
|title|string|foreign_key: true|
### Association
- belongs_to :introduction

## writing_historysテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|foreign_key: true|
|title|string|foreign_key: true|
|url|text|
### Association
- belongs_to :introduction

## portfoliosテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|index: true|
|name|string|foreign_key: true|
|url|text|
|information|text|
|date|date|foreign_key: true|
### Association
- belongs_to :introduction

## youtubesテーブル
|Column|Type|Options|
|------|----|-------|
|url|text|
|name|string|foreign_key: true|
|relation_url|text|
|information|text|

|date|date|foreign_key: true|
### Association
- belongs_to :introduction

## topicsテーブル
|Column|Type|Options|
|------|----|-------|
|topic|string||
|user_id|integer|foreign_key: true|
### Association
- belongs_to :introduction

## informationテーブル
|Column|Type|Options|
|------|----|-------|
|sex|string|foreign_key: true|
|date|date|foreign_key: true|
|unmarried|string|foreign_key: true|
|children|string|foreign_key: true|
### Association
- belongs_to :introduction

## settingsテーブル
|Column|Type|Options|
|------|----|-------|
|display_laguage|srtring|null :false|
|living|string|null: false|
|scout_span|text|
|rejection_company|text|
|search results|integer|null: false|
|alert|integer|null: false|
### Association
- belongs_to :user
