class AddChoicesToMessages < ActiveRecord::Migration[5.0]
  def change
    if column_exists? :messages, :choice1
      remove_column :messages, :choice1
    end
    if column_exists? :messages, :choice2
      remove_column :messages, :choice2
    end

    add_column :messages, :choice1, :string
    add_column :messages, :choice2, :string
  end
end