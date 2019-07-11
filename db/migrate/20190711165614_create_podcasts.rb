class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :showName
      t.string :episodeName
      t.string :url
      t.string :comment
      t.references :user_group, foreign_key: true

      t.timestamps
    end
  end
end
