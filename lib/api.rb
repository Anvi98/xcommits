# frozen_string_literal: true

# Main methods are defined here
class Api
  def initialize
    @thanos = 0
  end

  def repos_new(name_repo)
    @client = Octokit::Client.new(access_token: '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')

    @client.create_repo(name_repo, private: true)
    `mkdir #{name_repo} && cd #{name_repo} && touch README.md`
    `cd #{name_repo} && git init`
    `cd #{name_repo} && git add README.md`
    `cd #{name_repo} && git commit -m"initial commit" `
    `cd #{name_repo} && git branch -M main`
    `cd #{name_repo} && git remote add origin https://github.com/Anvi98/#{name_repo}.git`
    `cd #{name_repo} && git push -u origin main`
    `cd #{name_repo} && git checkout -b development`
    `cd #{name_repo} && git pull origin main`
    `cd #{name_repo} && git push origin development`
    puts 'done'
  end

  # Method for automating commits based on Good practices developments
  # - Take in consideration the particular time to autocommits
  # - Since it's build on top of git it can track changes on files easily

  def commiter() end

  # The timer defines the duration between each commits, for now, I have not decided yet how long between each commits
  def timer
    while @thanos <= 30
      sleep 1
      if thanos % 3.zero? && !thanos.zero?
        file_test = File.new('hello.c', 'w')
        extension = take_extention(file_test)
        namefile(3, file_test, extension) # we call the method to rename a file
        puts 'File renamed'
      end
      @thanos += 1
    end
  end
end
