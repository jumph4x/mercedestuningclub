module ApplicationHelper

  def random_bg
    filenames = Dir.entries("#{Rails.root}/app/assets/images/background/").select{|fn| fn.match /jpg/}
    filename = filenames[rand(0...filenames.size)]
    asset_url("background/#{filename}")
  end

end
