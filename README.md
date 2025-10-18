# Awesome Blogdown

An awesome curated list of blogs built using [blogdown](https://github.com/rstudio/blogdown) or [hugodown](https://hugodown.r-lib.org).

You'll find the Awesome Blogdown website at [awesome-blogdown.org](https://awesome-blogdown.org).


## About Blogdown and hugodown

Blogdown and hugodown both allow you to build websites using R, [RMarkdown](http://rmarkdown.rstudio.com/) and [Hugo](https://gohugo.io/), but they work in slightly different ways. Check out their project website for more information on the fifferences. In both cases though, sites are rendered to static files which simplifies publishing and hosting, at the same time as allowing you to easily version control your site.


## Contributing to the list

The easiest way to add a site that uses blogdown or hugodown to this list is to [create an issue](https://github.com/rpodcast/awesome-blogdown/issues/new/choose) with the relevant information. We'll confirm that it's using one of the packages and add the site. 
If you're interested in how Awesome Blogdown works, or would prefer to add your site yourself, read on!

The Awesome Blogdown website is driven from a single json file that gets deployed to the website. This file is automatically built from the contents of the `json` directory.

To add your site, create a new file in the `json` directory, using the convention '<DOMAIN NAME>.json', for instance, if your site were hosted at 'rstats.example.com' the filename to use would be 'rstats.example.com.json'.

The new file should contain a short json snippet that describes your site. The structure is as follows:

```
{
  "name": "the name of the blog",
  "url": "https://the.url.of.the.blog.com",
  "desc": "A brief description of the blog"
}
```

Have a look at the some of the other files in the `json` directory to get an idea of the structure and what's been added for other sites, and then create a pull request with your changes.


## Using the Awesome Blogdown data

The json file containing all the data is available in this GitHub repository `data` directory as the file `all.json`.

If you do end up using it for something, let me know, I'd love to hear about it!

## Site build and deployment

The site is built and deployed by the `CI` GitHub action at every push to the `master` branch of the repository. The site is hosted using Amazon Web Services (AWS) Amplify.

## License

MIT  © [Eric Nantz](https://r-podcast.org) & [Mark Sellors](https://sellorm.com)
