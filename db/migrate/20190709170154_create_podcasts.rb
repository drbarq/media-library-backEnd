class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :episodeName
      t.string :showName
      t.string :url
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
