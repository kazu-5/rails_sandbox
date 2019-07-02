class Task < ApplicationRecord
  serialize :data, JSON
  SELECT_DATA = [
      ["Railsの基礎", "rails_base"],
      ["Rubyの基礎", "ruby_base"],
      ["テスト1", "test1"],
      ["テスト2", "test2"],
  ]
  enum status: { draft: 0, published: 1 }
end


