class CreateParents < ActiveRecord::Migration
  def up
    create_table 'parents' do |t|
      t.string 'name'
      t.string 'phoneNumber'
      t.string 'childName'
      t.string 'class'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table 'parents' # deletes the whole table and all its data!
  end
end
