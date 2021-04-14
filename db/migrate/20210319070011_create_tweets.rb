class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string     :voice, null: false
      t.string     :title
      t.text       :descriptiion
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end