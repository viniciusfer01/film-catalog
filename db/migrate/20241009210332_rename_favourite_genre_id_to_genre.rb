class RenameFavouriteGenreIdToGenre < ActiveRecord::Migration[7.1]
  def change
    drop_table :directors
  end
end
