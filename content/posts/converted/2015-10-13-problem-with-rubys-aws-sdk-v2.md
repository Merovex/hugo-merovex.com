---
title: Ruby's AWS SDK v2 Solution
author: Ben Wilson
description: "During my transition to Jekyll, I was confronted by the AWS-SDK v2 gem update. I share my solution here."
categories: ["Technology"]
tags: 
  - Ruby
  - Amazon
  - Jekyll
photo:
  image: 3887934311_1476c75b17_b.jpg
  creator: SuperFantastic/Flickr
  url: https://www.flickr.com/photos/35423169@N00/3887934311/
  license: under CC BY 2.0
  caption: Technology Can be Frustrating
date: 2015-10-13T16:55:00-04:00
created_at: 2015-10-13 07:09
---

So here I am, transitioning from Octopress to Jekyll. As I host on GitHub pages, the last thing I wanted was to have GitHub host images. So, I use AWS for that capability. I ran into a problem that I resolved this morning.

<!--more-->

The Ruby Gem `AWS-SDK` did a full version bump from 1.x to 2.0 recently. When I bundle-updated, I inadvertantly completed the bump. If you look at the documentation, there is a way to sustain the 1.x behavior. However, I thought it better to go full monty and make the transition.

I figure I just have to show the code. Naturally, there is some omitted content. I don't want to bore you. The necessary changes are in the Code After block.

## Code Before


~~~ruby
task :cdn do
  require 'aws-sdk'
  ENV['AWS_ACCESS_KEY_ID'] = s3_access
  ENV['AWS_SECRET_ACCESS_KEY'] = s3_secret

  s3 = AWS::S3.new
  bucket = s3.buckets[s3_bucket]

  @files.flatten.each do |file_path|
      bucket_path = file_path.sub('assets/', '').sub('.gz','')
      fd = File.open(file_path)
      obj = bucket.objects[bucket_path]
      obj.write(
          fd, 
          :acl => :public_read, 
          :cache_control => "max-age=#{age}",
          :content_type => c_type
      ) if (!obj.exists? || obj.last_modified < fd.mtime)
  end
end
~~~

## Code After

~~~ ruby
task :cdn do
    require 'aws-sdk'
    ENV['AWS_ACCESS_KEY_ID'] = s3_access
    ENV['AWS_SECRET_ACCESS_KEY'] = s3_secret
    ENV['AWS_REGION'] = s3_region   # Added for 2.0
    
    Aws::S3::Client.new             # Changed for 2.0
    s3 = Aws::S3::Resource.new      # Changed for 2.0
    bucket = s3.bucket(s3_bucket)   # Changed for 2.0

    @files.flatten.each do |file_path|
        bucket_path = file_path.sub('./', '').sub('.gz','')
        fd = File.open(file_path)
        obj = bucket.object(bucket_path)
        obj.upload_file(fd, {       # Changed for 2.0
            :acl => "public-read",  # Use String instead of Symbol for 2.0
            :cache_control => "max-age=#{age}",
            :content_type => c_type
        }) if (!obj.exists? || obj.last_modified < fd.mtime)
    end
  end
~~~

