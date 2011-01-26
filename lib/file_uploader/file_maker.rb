module FileMaker
  CHARACTERS_SET = [('a'..'z'), ('A'..'Z')].map{|i| i.to_a}.flatten
  
  def self.create_file(dir, original_filename)
    filename = rnd_prefix << sanitize_filename(original_filename)
    path = File.join(dir, filename)
    
    File.new(path, 'wb')
  end
    
  def self.sanitize_filename(filename)
    just_filename = File.basename(filename)
    just_filename.gsub(/[^\w\.\-]/,'_')
  end

  def self.rnd_prefix
    (0..5).map { CHARACTERS_SET[rand(CHARACTERS_SET.length)] }.join << '_'
  end
end
