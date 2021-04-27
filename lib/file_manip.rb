# frozen_string_literal: true

# method for manipulating files in Ruby.
# Anvi98
# ---------------

# Takes the number of Round (Int), the path of the file and the extension of
# the file, Then it renames the targeted file with
# the standard : Round#Number_Date_time

class FileController
  def initialization
    @base = 'Round#'
  end

  def namefile(file_number, file, extension)
    name = File.stat(file).mtime
    name = name.to_s
    refactor = name.split[0, 2].join('_')
    full = @base + file_number.to_s + '_' + refactor + '.' + extension
    File.rename(file.path, full)
  end

  def take_extention(file)
    pathy = file.path
    extention = pathy.split('.')[1]
    extention
  end
  # This function triggers ohter functions like the commiter/pusher/rename after a period of time.
  # For now, the implementation of the code is just renaming file each 3s for 30 seconds.

end

# --------------------
