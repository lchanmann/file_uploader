class FileUploader

  attr_reader :dir

  def initialize(dir)
    self.class.mkdir dir
    @dir = dir
  end

  class << self
    def create(dir = 'public/upload')
      FileUploader.new dir
    end
    
    def mkdir(dir)
      Dir.mkdir dir unless File.directory?(dir)
    end
  end

  def save(stream)
    file = save_stream(stream)
    yield file if block_given?
  end

  protected
  def save_stream(stream)
    FileStream.write(stream, @dir)
  end

end
