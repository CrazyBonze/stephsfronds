class Image < ActiveRecord::Base
  enum image_type: [ :fish, :pop_art ]
  def generate_filename
    t = Time.new
    filename = "#{t.year}-#{t.month}-#{t.day}-#{t.hour}-#{t.min}-#{t.sec}-#{t.usec}"
    write_attribute(:filename, filename)
  end
end
