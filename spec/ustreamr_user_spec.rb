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
    result = @user_command.get_value_of(@user_name, :about)
    result.class.should == String
  end

  #it "should success getId" do 
  #  result = @channel_command.get_id(@channel_name)
  #  result.to_i.class.should == Fixnum
  #end


end