class UsersFilms < ActiveRecord::Migration
  def change
    create_table :films_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :film, index: true
    end
  end
end
