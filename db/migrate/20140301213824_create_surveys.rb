class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :completing_name
      t.string :completing_title
      t.string :completing_email
      t.string :contact_name
      t.string :contact_title
      t.string :contact_email
      t.integer :num_servers
      t.text :type_servers
      t.integer :num_locations
      t.boolean :colocated
      t.boolean :dedicated
      t.boolean :state_owned
      t.integer :state_owned_sqft
      t.boolean :leased
      t.integer :leased_sqft
      t.boolean :access_control
      t.boolean :ups
      t.boolean :envir_ctrl
      t.boolean :generator
      t.boolean :fire
      t.boolean :data_server
      t.boolean :data_san
      t.integer :total_capacity
      t.integer :used_capacity
      t.boolean :backup
      t.boolean :local_backup
      t.boolean :central_backup
      t.string :freq_backup
      t.string :freq_backup_other
      t.string :who_manages
      t.string :who_manages_other
      t.boolean :hard_maint
      t.integer :hard_maint_amt
      t.boolean :soft_maint
      t.integer :soft_maint_amt
      t.boolean :contractor_support
      t.integer :contractor_support_amt

      t.timestamps
    end
  end
end
