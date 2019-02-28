# Refinery CMS Embed

Simple embed extension for [Refinery CMS](http://refinerycms.com).
It adds a 'Embeds' tab to admin menu where you can manage embeds.
And adds an 'add embed' link to WYMeditor on 'Pages'.

There are three ways to include embeds in your project.
- You can embedded video (like youtube or vimeo iframes)
- You can upload files
- You can use link to external source

Embed (instance of `Refinery::Videos::Video` model) aggregates different sources (files and links, one or many).

The instance method `Video#to_html` renders an html video tag like:

```html
<video id="my_video_1" class="video-js vjs-default-skin" controls
  preload="auto" width="640" height="264"
  poster="my_video_poster.png"
  data-setup="{}">
  <source src="oceans-clip.mp4" type='video/mp4'>
  <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm'>
</video>
```

This content can be added to a page in WYMeditor, or everywhere in your view like:

```erb
<div class='video'>
  <%= @my_video.to_html %>
</div>
```

This extension: 
  * Allows you to manage playback configuration (poster image, width, height, autoplay, controls, etc).
  * Allows you to insert embed to pages using WYMeditor, by inserting an HTML code with iframe tag.

## Requirements

Refinery CMS 4.x

## Install

Open up your ``Gemfile`` and add at the bottom this line:

Get the latest version with:
```ruby
gem 'refinerycms-embed', git: 'git@github.com:Captive-Studio/refinerycms-embed.git'
```

Now, run: 

    bundle install

Next, to install the video extension run:

    rails generate refinery:videos

Run database migrations:

    rake db:migrate

And you're done.

## More Information

- Check out Refinery CMS [guides](http://refinerycms.com/guides)
- Check out our [website](http://captive.fr)
