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
      FileUtils.mkpath dir unless File.directory?(dir)
    end
  end

  def save(stream)
    file = save_stream(stream)
    yield file if block_given?
  end

  protected
  def save_stream(stream)
    if stream.is_a? Hash
      return write_stream(stream[:tempfile], stream[:filename])
    end
    write_stream(stream, stream.original_filename) if stream.respond_to? :original_filename
  end
  
  def write_stream(stream, filename)
    FileStream.write(stream, @dir, filename)
  end

end
