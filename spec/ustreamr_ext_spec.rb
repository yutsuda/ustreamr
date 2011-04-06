require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ruby Extended" do
  it "should success Hash#to_sym" do 
    hash = {
      "a"=>1, 
      "b"=>[1, {"ba"=>1, "bb"=>{"bbb"=>1}, "bc"=>2}, 2], 
      "c"=>{"ca"=>1, "cb"=>{"cba"=>1}, "cc"=>[1, 2, 3]},
      :d=>1
    }

    correct_hash = {
      :a=>1, 
      :b=>[1, {:ba=>1, :bb=>{:bbb=>1}, :bc=>2}, 2], 
      :c=>{:ca=>1, :cb=>{:cba=>1}, :cc=>[1, 2, 3]},
      :d=>1
    }

    (correct_hash == hash.to_sym).should be_true
  end
end
