require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ustreamr::Channel" do
  before do
    @stream_command = Ustreamr::Stream.new
    @channel_command = Ustreamr::Channel.new
    @channel_name = @stream_command.get_random[:url_title_name]
  end

  it "should success getInfo" do 
    result = @channel_command.get_info(@channel_name)
    result.class.should == Hash
  end

  it "should success getValueOf" do 
    result = @channel_command.get_value_of(@channel_name, :id)
    result.to_i.class.should == Fixnum
  end

  it "should success getId" do 
    result = @channel_command.get_id(@channel_name)
    result.to_i.class.should == Fixnum
  end

end
