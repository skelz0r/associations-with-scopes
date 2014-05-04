require 'spec_helper'

describe Threadhead do
  describe "paths_by_user association" do
    it "works motherfocker" do
      u1=User.create!(name: "one")
      u2=User.create!(name: "two")

      t1=Threadhead.create!(name: "one")
      t2=Threadhead.create!(name: "two")

      p1=Path.create!(name: "one", user: u1, threadhead: t1)
      p2=Path.create!(name: "two", user: u1, threadhead: t1)
      p3=Path.create!(name: "two", user: u1, threadhead: t2)
      p4=Path.create!(name: "three", user: u2, threadhead: t1)
      p5=Path.create!(name: "three", user: u2, threadhead: t2)

      t1.paths_by_user(u1).should == [p1, p2]
      t1.paths_by_user(u2).should == [p4]
      t2.paths_by_user(u1).should == [p3]
      t2.paths_by_user(u2).should == [p5]
    end
  end
end
