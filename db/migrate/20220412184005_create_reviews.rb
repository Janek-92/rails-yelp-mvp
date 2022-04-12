class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end
