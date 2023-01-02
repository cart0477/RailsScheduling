# README

Required Ruby Version: 7.0

GemFile (Unedited) Included in /SP

To import CSV files (technicians, work_orders, locations), move them to /SP/csv and convert absolute 
paths in /SP/lib/tasks/import_csv.rake to fit your needs.

After this is done, call any individual rake task with:
    rake import_technicians_csv:create_technicians
    rake import_locations_csv:create_locations
    rake import_orders_csv:create_orders

Or import all at once with:
    rake import_all_csv:create_all

After this, the page can be loaded using "rails s", followed by "localhost:3000" on your search engine.

This project was completed using a single index.html.erb page, and the CSS grid structure, found in /stylesheets.
Further, there are three distinct classes and databased (Technician, Location, Order) which the home page runs through 
in order to load the appropriate information. 

To create breaks, the diffference in Order.time was measured after being converted to the Ruby Time Class. More information
on this process can be found in the comments for index.html.erb

As I was new to Ruby, as well as Ruby on Rails, this project proved of some challenge to me. I had taken a UI course before, 
but it was not my passion at the time, and the information was fuzzy. However, even though it's not quite complete, I've learned so
much through the course of this project, and I've begun to fall in love with Rails. 

Of course, as far as improvements go, it is not quite complete. Further, I would possibly make Orders and Locations a
subclass of Technicians in the future, in order to better streamline the UI's construction, but since I was new to Ruby, there 
were more important concepts to learn. 


NOTES AND IMPORTANT BUGS:
On my machine, the given csv files seemed to be buggy, so I created copies in /csv, which is what is being 
called in the rake task (loc.csv, ord.csv, tech.csv)

Further, the project is not completely done. The work_orders are not yet properly organized on the home page.



