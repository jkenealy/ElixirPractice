### Author: Jake Kenealy

#Simple friends list module that allows for insertion, deletion,
#and checking if a friend is in the list
#It's not explicitly defined yet but the program considers
#friends to be a tuple of form {username, gamename}

defmodule Friends_List do

  def add_friend(friendlist,name,game), do: [{name,game}]++friendlist

  def contains(friendlist,pnamecheck,gnamecheck) 
    when hd(friendlist)=={pnamecheck,gnamecheck} do
      IO.puts "#{pnamecheck} on #{gnamecheck} is in your friends list!"
	  true
  end
  
  def contains(friendlist,pnamecheck,gnamecheck) do
    contains(tl(friendlist),pnamecheck,gnamecheck)
  end
  
    def contains([],pnamecheck,gnamecheck) do
    IO.puts "#{pnamecheck} on #{gnamecheck} is not in your friends list"
	false
  end
  
  def remove_friend(friendlist,pname,gname) do	  
    List.delete(friendlist,{pname,gname})
  end
 
end