class FileUploader

  attr_reader :dir

  CHARACTERS_SET = [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
  BUFFER_SIZE = 1024

  def initialize(dir)
    @dir = dir
  end

  class << self
    def create(dir = 'public/upload')
      FileUploader.new dir
    end
  end

  def save(file_stream)
    file = save_stream(file_stream)
    yield file if block_given?
  end

  protected
  def save_stream(stream)
    filename = create_file(stream.original_filename)
    File.open filename, 'wb' do |f|
      while(bytes = stream.read(BUFFER_SIZE))
        f.write(bytes)
      end
    end
    filename
  end

  def create_file(original_filename)
    Dir.mkdir @dir unless File.directory?(@dir)
    filename = rnd_prefix << sanitize_filename(original_filename)
    path = File.join(@dir, filename)
    File.new path, 'w'
    path
  end

  def sanitize_filename(filename)
    just_filename = File.basename(filename)
    just_filename.gsub(/[^\w\.\-]/,'_')
  end

  def rnd_prefix
    (0..5).map { CHARACTERS_SET[rand(CHARACTERS_SET.length)] }.join << '_'
  end

end
