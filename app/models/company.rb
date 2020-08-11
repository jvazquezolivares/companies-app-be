class Company < ApplicationRecord
  self.primary_key = "account_id"
  has_many :subcompanies, class_name: "Company", foreign_key: "parent_company_id"
  belongs_to :parent_company, class_name: "Company", optional: true

  def json_response
    companies = self.subcompanies.nil? ? [] : self.subcompanies.includes(:subcompanies).map{ |company| company.json_response }
    {
        account_id: self.account_id,
        name: self.name,
        city: self.city,
        companies: companies
    }
  end
end
