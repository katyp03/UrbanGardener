# README

## Features Used

* Running on Ruby 2.4.0

* Using Rails scaffold feature to build database

* Use Devise gem to create user

* Use bcrypt gem to encrypt passwords

## Building Project Database

````
rails new urban_garden
cd urban_garden
* in gemfile -> gem "devise", gem "paperclip", "~> 5.0.0" *
gem install bundler
bundle install
rails g devise:install
* in config/environments/development -> add 'config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }' *
* in config/routes -> add 'root static#home' *
* in app/layouts/application -> add notice and alert paragraphs *
rails g controller static
rails g devise:views
rails g devise user
* in db/migrate/(devise create user) -> add fields for :fname(.string), :lname(.string), :admin(.boolean), :bio(.text), :hometown(.string), :propic(paperclip.attachment) *
rails g scaffold plant name:string sname:string care:text water:integer sale:string size:integer image:attachment
rails g model recipe
rails g controller recipe
rails g migration UserPlants
rails g model user_plant
rails g migration UserRecipe
rails g model user_recipe
````
## Fixing Database
````
* in migration files for user_plant and user_recipe add -> '  def change
    create_table :user_plants, id: false do |t|
     t.belongs_to :user
     t.belongs_to :plant
     t.timestamps
   end' *

* in user, plant, recipe, and join table models -> add 'class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_plants
  has_many :plants, through: :user_plants
  has_many :user_recipes
  has_name :recipes, through: :user_recipes
  has_attached_file :propic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :propic, content_type: /\Aimage\/.*\z/
  def full_name
    "#{fname} #{lname}".strip
  end
end' *

 ````
## Building Search Function with Food2Fork api
````
rails g controller search index
````
## Issues and Fixes

### Profile Page Setup

* In routes.rb add:
````
get '/:username' => 'static#profile'
````

* In static_controller.rb add:
````
def profile
  @user = User.find_by_username(params[:username])
end
````
### Registration and Edit Account Info

* Create a registrations_controller and add
````
private

def sign_up_params
  params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :password, :password_confirmation)
end

def account_update_params
  params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :password, :password_confirmation, :current_password)
end
````

* Then edit the forms under views/devise/registrations to include added fields
