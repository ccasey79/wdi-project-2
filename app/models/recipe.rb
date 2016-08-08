class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments

  mount_uploader :image, ImageUploader

  def ingredient_list
    self.ingredients.split(', ')
  end

  def steps
    self.method.split('. ').map do |step|
      if step.last != '.'
        step << '.'
      end

      step
    end
  end

end