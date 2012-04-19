class Blog

  include Cequel::Model
  include Timestamps

  key :id, :integer
  column :name, :varchar
  column :published, :boolean, :default => true

  has_many :posts, :dependent => :destroy

end
