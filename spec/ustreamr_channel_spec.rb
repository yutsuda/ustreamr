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

  it "should success getEmbedTag" do 
    result = @channel_command.get_embed_tag(@channel_name)
    result.class.should == String
  end

  it "should success getCustomEmbedTag" do 
    result = @channel_command.get_custom_embed_tag(@channel_name)
    result.class.should == String
  end

  it "should success listAllChannels" do 
    result = @channel_command.list_all_channels(@channel_name)
    #result.class.should == String
  end

  it "should success getComments" do 
    result = @channel_command.get_comments(@channel_name)
    result.class.should == Array
    [Hash, NilClass].include?(result.first.class).should be_true
  end

  it "should success getTags" do 
    result = @channel_command.get_tags(@channel_name)
    result.class.should == Array
    result.first.class.should == String
  end


end
