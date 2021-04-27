# frozen_string_literal: true

require 'httparty'
require 'octokit'
require '../lib/api'
require '../lib/file_manip'

# puts 'Enter new repos: '
# new_repo = gets.chomp

# api_rest = Api.new
# api_rest.repos_new(new_repo)

file1 = File.open("test1.html")
x = FileController.new

extent = x.take_extention(file1)
x.namefile(2, file1, extent)



