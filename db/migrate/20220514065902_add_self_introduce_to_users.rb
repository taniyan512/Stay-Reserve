class AddSelfIntroduceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :self_introduce, :text
  end
end
