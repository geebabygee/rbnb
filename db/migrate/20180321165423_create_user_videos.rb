class CreateUserVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_videos do |t|
      t.datetime :date
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
