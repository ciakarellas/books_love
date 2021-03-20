class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :rating, array: true
      t.string :tags, array: true

      t.timestamps
    end
    # do not undestand yet what that code do bu this is example from https://edgeguides.rubyonrails.org/active_record_postgresql.html
    add_index :books, :tags, using: 'gin'
    add_index :books, :ratings, using: 'gin'
  end
end
