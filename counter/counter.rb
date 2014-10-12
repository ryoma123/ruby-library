#! /usr/local/lang/ruby/2.1/bin/ruby
File.open 'counter', File::RDWR | File::CREAT do |f|
  f.flock File::LOCK_EX
  count = f.read.to_i
  f.rewind
  f.write count.succ

  print "Content-Type: text/html\n\n"
  print count
end
