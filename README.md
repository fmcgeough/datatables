# Datatables

This is a simple demonstration of [datatables.js](http://datatables.net/) and how to use server-side paging.
There's an accompanying blog post at [fmcgeough.github.io](http://fmcgeough.github.io/phoenix-and-datatables/).
It creates a single table in the development Postgres instance called "zips". The zipcode data is populated
by the zip_codes.csv file in the priv/repo directory. See seeds.exs for the code that is used to populate it.

To run the demonstration :

    ```
      git clone https://github.com/fmcgeough/datatables
      cd datatables
      mix deps.get
      mix ecto.create && mix ecto.migrate
      npm install
      mix run priv/repo/seeds.exs
      mix phoenix.server
    ```  

Now you can visit [`localhost:4000`](http://localhost:4000/zips) from your browser to see the
page that uses datatables.


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
