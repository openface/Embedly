# Embedly for Ruby

Embedly.rb is a simple client for interfacing with the embed.ly API. (http://api.embed.ly)

## Usage

Instantiate the class by passing in the options, as supported by Embed.ly.  At the very least, a
URL is required.

```
	embedly = Embedly.new(:url=>'http://www.youtube.com/watch?v=60og9gwKh1o')
```

Other parameters such as format, maxheight, maxwidth, and callback are supported.  Any parameters
passed into Embedly.rb will be sent over to Embed.ly.

To return something usable, you'll need to call the gets method. This processes the request, and will
return a JSON object.

```
	pp(embedly.gets)
```

Outputs the following object in the JSON format.  (unless another format is specified)

```
	{"html"=>
	  "<object width=\"384\" height=\"313\"><param name=\"movie\" value=\"http://www.youtube.com/v/60og9gwKh1o&fs=1\"></param><param name=\"allowFullScreen\" value=\"true\"></param><param name=\"allowscriptaccess\" value=\"always\"></param><embed src=\"http://www.youtube.com/v/60og9gwKh1o&fs=1\" type=\"application/x-shockwave-flash\" width=\"384\" height=\"313\" allowscriptaccess=\"always\" allowfullscreen=\"true\"></embed></object>",
	  "thumbnail_width"=>120,
	  "author_name"=>"xloserkidx",
	  "title"=>"Numa Numa",
	  "provider_url"=>"http://www.youtube.com/",
	  "provider_name"=>"YouTube",
	  "thumbnail_height"=>90,
	  "version"=>"1.0",
	  "type"=>"video",
	  "height"=>313,
	  "thumbnail_url"=>"http://i.ytimg.com/vi/60og9gwKh1o/default.jpg",
	  "author_url"=>"http://www.youtube.com/user/xloserkidx",
	  "width"=>384
	}
```

## Notes / TODO

* Needs moar error checking
* Restructure this into a gem
* Add unit tests

## Copyright

Copyright (c) 2010 Jason Hines ~ DevTwo, LLC. See LICENSE for details.
