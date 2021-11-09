require 'pg'

class Bookmark



  def self.all
    connrction = PG.connect( dbname: 'bookmark_manager' )
    result = connection.exec( "SELECT * FROM bookmarks" )
    result.map { |bookmark| bookmark['url']  }
  end

end