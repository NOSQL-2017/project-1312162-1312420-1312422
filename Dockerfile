from ruby
run apt-get update -y
run apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev nodejs
run gem install rails 
run mkdir /my_insta
workdir /my_insta