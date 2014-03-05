class AddFtEsToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :fte1, :integer
    add_column :surveys, :fte1_prcnt, :integer
    add_column :surveys, :fte2, :integer
    add_column :surveys, :fte2_prcnt, :integer
    add_column :surveys, :fte3, :integer
    add_column :surveys, :fte3_prcnt, :integer
    add_column :surveys, :fte4, :integer
    add_column :surveys, :fte4_prcnt, :integer
    add_column :surveys, :fte5, :integer
    add_column :surveys, :fte5_prcnt, :integer
    add_column :surveys, :fte6, :integer
    add_column :surveys, :fte6_prcnt, :integer
  end
end
