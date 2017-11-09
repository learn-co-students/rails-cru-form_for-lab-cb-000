Resources create model, migrations, a stubbed controller, routes, and tests(normally)/
What's missing?
* views within the directory
* more info within controller

rails g resource Song name:string artist_id:integer genre_id: integer --no-test-framework

This generator failed: created too many fields.  ids need not define type probably?

rails g resource Song name:string artist_id genre_id --no-test-framework

This defaulted the types to string.  Probably need to improve formatting next time, or at least check migration files.
s


rails g resource Artist name:string bio:text --no-test-framework

rails g resource Genre name:string --no-test-framework


Next:
* Create views
* def methods in controllers for each route
