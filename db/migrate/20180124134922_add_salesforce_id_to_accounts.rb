class AddSalesforceIdToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :salesforce_id, :string
  end
end
