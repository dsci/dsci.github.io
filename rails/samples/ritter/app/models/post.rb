class Post < ActiveRecord::Base

  include Formattable
  
  attr_accessible :text, :author

  belongs_to :author, :class_name => "User"

  validates :text, :presence => true, 
            :length => {:maximum => Application::RitterConfig.post_length},
            :buzzwords_not_allowed => true

  validates :author, :presence => true 

  before_save :to_html, :on => :create

  scope :by_author, ->(author) do
    where(:author_id =>author.id)
  end

  scope :all_except, ->(author) do
    scoped - by_author(author)
  end

  formattable :text

  #def to_html
  #  write_attribute(:text,RedCloth.new(self.text).to_html)
  #end

end
