require 'rubygems'
gem 'rspec'
require 'file_uploader'

describe FileUploader do
  it "should create file_uploader" do
    FileUploader.create.should be_is_a FileUploader
  end

  it "should save file" do
    uploader = FileUploader.create
    uploader.save "stream" do |filename|
      filename.should_not be_empty
    end
  end
end
