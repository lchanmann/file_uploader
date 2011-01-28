class FileStream
  
  BUFFER_SIZE = 1024
  
  def initialize(file)
    @file = file
  end
  
  class << self
    def write(stream, dir, filename)
      file = FileMaker.create_file(dir, filename)
      file_stream = FileStream.new(file)
      file_stream.write stream and file_stream.close
      file.path
    end
  end

  def write(stream)
    while(bytes = stream.read(BUFFER_SIZE))
      @file.write bytes
    end
  end
  
  def close
    @file.close unless @file.closed?
  end
end
