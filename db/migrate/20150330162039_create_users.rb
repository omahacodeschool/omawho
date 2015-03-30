class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :crypted_password, null: false
      t.string :salt, null: false
      t.string :remember_me_token
      t.datetime :remember_me_token_expires_at
      t.string :reset_password_token
      t.datetime :reset_password_token_expires_at
      t.datetime :reset_password_email_sent_at
      t.string :username
      t.string :first_name
      t.string :last_name
      t.boolean :admin
      t.text :bio
      t.string :website
      t.string :company
      t.string :company_site
      t.string :facebook
      t.string :twitter
      t.string :pinterest
      t.string :linkedin
      t.string :github
      t.string :googleplus
      t.string :dribbble
      t.string :instagram
      t.string :tumblr
      t.string :tagline
      t.string :profile_image_id

      t.timestamps null: false
    end
  end
end
