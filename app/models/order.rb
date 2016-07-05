class Order < ActiveRecord::Base
    belongs_to :order_form, foreign_key: 'order_form_id'
    
    validates :quantity, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 99 }
    
    validate :has_date_or_title
    def has_date_or_title
        errors.add(:title, :blank, message: "タイトルか日付は必須です") if date.blank? && title.blank?
        errors.add(:date, :blank, message: "タイトルか日付は必須です") if date.blank? && title.blank?
    end
end
