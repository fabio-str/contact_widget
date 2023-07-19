class Message < ApplicationRecord
  belongs_to :widget

  validates_presence_of :name, :email, :content

  def self.to_csv(messages)
    CSV.generate do |csv|
      csv << [ 'created_at', 'name', 'email', 'content'  ] # title row
    
      messages.each do |message| # loop through data and adding rows
        csv << [ message.created_at, message.name, message.email, message.content ]
      end
    end
  end
end
