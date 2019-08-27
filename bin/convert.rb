require 'time'
raise "You've done this!".inspect
def parseDate(s)
  ticker = Time.parse(s).iso8601
  # puts "-- #{ticker}"
  "date: #{ticker}\n"
end
Dir.glob("_posts/**/*") { |file|
  next unless file.include?('.')
  puts file
  newfile = "content/posts/converted/" + File.basename(file).sub('.markdown','.md')
  contents = File.read(file).sub(/category:(.*?)\n/) {
    "categories: [\"#{$1.gsub("'","\"").gsub("-"," ").strip}\"]\n".gsub('""','"')
  }
  ['sidebar','published','comments','footer','sharing','modified_at','published_at'].each do |term|
    contents.sub!(/#{term}: .*?\n/, "")
  end
  contents = if contents.include?("date:")
    contents.sub(/date:(.*?)\n/) { parseDate("#{$1}") }
  else
    contents.sub(/created_at:(.*?)\n/) { parseDate("#{$1}") }
  end
  contents.gsub!("``",'"')
  contents.gsub!("\"`","```")
  contents.sub!("<!-- more -->","<!--more-->")
  contents.gsub!("{: .table :}", "\n")
  contents.gsub!(/image: (.*?)\n/) {
    "image: #{$1.downcase.strip.gsub('"','').gsub(/[^a-z0-9\s]+/i, '-').sub(/-(png|jpg)/, ".jpg")}\n"
  }
  ['diary','technology','writing'].each do  |term|
    contents.gsub!(/\(\/#{term}/,"(/posts")
  end

  File.open(newfile,'w+').write(contents)
}
