require 'rails_helper'

describe User do
  it { should have_many :photos}
  it { should have_many :taggings}
  it { should have_many :tagged_photos}


  describe "#tagged_photos" do
    it 'returns all the photos this user is tagged in' do
      user1= User.create({:email => "amy@amy.com", :id => 1})
      user2 = User.create({:email => "mike@amy.com", :id => 3})
      photo = Photo.create({:photo_file_name => "elephant.jpg", :user_id =>1, :id =>2})
      tagging = Tagging.create({:user_id =>3, :photo_id =>2})
      expect(user2.tagged_photos).to eq([photo])
      expect(user1.tagged_photos).to eq([])
    end
  end
end
