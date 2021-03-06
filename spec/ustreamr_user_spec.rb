require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ustreamr::User" do
  before do
    @stream_command = Ustreamr::Stream.new
    @user_command = Ustreamr::User.new
    @user_name = @stream_command.get_random[:user_name]
  end

  it "should success getInfo" do 
    result = @user_command.get_info(@user_name)
    result.class.should == Hash
  end

  it "should success getValueOf" do 
    result = @user_command.get_value_of(@user_name, :id)
    result.to_i.class.should == Fixnum
  end

  it "should success getId" do 
    result = @user_command.get_id(@user_name)
    result.to_i.class.should == Fixnum
  end

  it "should success list_all_channels" do 
    result = @user_command.list_all_channels(@user_name)
    result.class.should == Array
  end

  it "should success list_all_videos" do 
    result = @user_command.list_all_videos(@user_name)
    [Array, NilClass].include?(result.class).should be_true
  end

  it "should success get_comments" do 
    result = @user_command.get_comments(@user_name)
    [Array, NilClass].include?(result.class).should be_true
  end
end

