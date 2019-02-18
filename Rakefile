
task :convert do
  Dir["staging/*.*"].each do |img|
    # puts img
    baseimg = File.basename(img).gsub(/\(/,'\(').gsub(/\)/,'\)')
    # newimg  = File.basename(img).gsub(/\(/,'-').gsub(/\)/,'-')
    newimg = File.basename(img).downcase.gsub(/[^a-z0-9\s]+/i, '-').sub(/-(png|jpg)/, ".jpg")
    # puts "New: '#{newimg}' #{baseimg}"
    # if img.include?(".jpg")
    `convert staging/#{baseimg} -strip  -resize 1200x -gravity center -crop 1200x675+0+0 +repage static/images/articles/#{newimg}`
    `mv staging/#{baseimg} original-images/#{File.basename(baseimg)}`
  end
end
