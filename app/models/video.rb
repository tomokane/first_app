class Video < ActiveRecord::Base
  validates_presence_of :title, :embed_code
  validate :must_have_valid_embed_code

  def must_have_valid_embed_code
    unless embed_code.include?("<iframe")
      errors.add(:embed_code, "Must include an iframe tag")
    end
  end
end
