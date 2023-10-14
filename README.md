NAME
====
  Vercel

SYNOPSIS
========
  write backends systems for your vercel application in ruby

URI
===
  https://github.com/ahoward/Vercel

INSTALL
=======
  gem install Vercel 

DESCRIPTION
===========
  - clean serverless functions
  - run ruby functions locally
  - test your serverless functions

SAMPLES
=======
  #### <========< [samples/a.rb](https://github.com/ahoward/Vercel/blob/main/samples/a.rb) >========>
  ```sh
  ~ > cat samples/a.rb
  ```
  ```ruby
    require 'vercel'
    p 42
  ```
  
  ```sh
  ~ > ruby samples/a.rb
  ```
  ```txt
    42
  ```
  
  #### <========< [samples/b.rb](https://github.com/ahoward/Vercel/blob/main/samples/b.rb) >========>
  ```sh
  ~ > cat samples/b.rb
  ```
  ```ruby
    require 'vercel'
    p Vercel
  ```
  
  ```sh
  ~ > ruby samples/b.rb
  ```
  ```txt
    Vercel
  ```

HISTORY
=======
  0.4.2
    - initial release