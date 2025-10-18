---
author: Eric Nantz
date: "2025-10-17"
description: Preserving the showcase of the pioneers using Hugo and blogdown 
title: Awesome-Blogdown lives on!
toc: true
---

I'm pleased to announce that Awesome-Blogdown lives on! In the spirit of the many "awesome" lists that share examples and resources associated with popular software, the goal of Awesome-Blogdown has always been to share the web sites created within the R community powered by the [Hugo](https://gohugo.io) static site generator via the `{blogdown}` or `{hugodown}` R packages. That is and always will be the main reason this site exists. To learn how I became involved with this project and the technical details behind this new version, read on!

## The Legacy of R Markdown & `{blogdown}`

I have proudly been using the R language for my statistical computing since the beginning of graduate school in 2005, and it is not an exaggeration to say that R was the critical component that helped me complete my dissertation. From that point forward, I was hooked instantly as it blends the best of my passions: Open-source software, a brilliant community, and much more. Not long thereafter, I launched the [R-Podcast](https://r-podcast.org/) in 2012 to spread awareness of R and to challenge myself to "learn out loud" in a new medium. There was no shortage of terrific contributions from the R community via the package ecosystem, something that still amazes me to this day. For the purposes of this post, I want to focus on a massive innovation that empowered the R community to take reproducible analysis to the stratosphere, and this is R Markdown. Yes, R itself comes with the Sweave framework for literate programming inside LaTeX documents, and that is what I used for my dissertation. But Yihui Xie turned everything I knew about literate programming upside-down with the introduction of the [`{knitr}`](https://yihui.org/knitr/) package, and shortly afterwards the [`{rmarkdown}`](https://rmarkdown.rstudio.com/docs/) package to lower the barrier of entry thanks to the simplicity of markdown. I somehow was lucky enough to hear the story behind the creation of R Markdown from the man himself, as you can hear in [Episode 13](https://r-podcast.org/013-interview-with-yihui-xie/).

It would have been easy for someone to think their job is done with the creation of these packages, but Yihui most certainly did not rest on these accomplishments. An ecosystem of R packages extending R Markdown began to take shape, with one of those being `{blogdown}` to enable anyone comfortable with R Markdown to create their own web presence building on the Hugo static site generator. Before this, I thought creating a web site meant I had to become an HTML / web development ninja, and I had a hard enough time creating a web site for the podcast. When I discovered that Hugo itself had a vast array of themes created by the community, I somehow found a theme tailored to podcasts called castanet. That was a sign: I embarked on the journey to revamp my podcast site with `{blogdown}` and Hugo. The journey was successful, and I shared the full story in a [blog post](https://support.rbind.io/2017/04/27/r-podcast-website/) on [Rbind](https://support.rbind.io/), a community-led initiative to help users host their `{blogdown}` sites without being confined to a commercial platform like Wordpress. This is only scratching the surface of how transformative R Markdown has been in my journey.

## Unexpected Dilemma

It was around this same time in 2016 when [Mark Sellors](https://sellorm.com/) created Awesome-Blogdown, another terrific way to share the `{blogdown}`-powered sites by the community. The site has always been in my bookmarks, but I admit I was not checking it regularly in the last few years. Fast forward to the present, and Mark shared the following news on Mastodon:

<blockquote class="mastodon-embed" data-embed-url="https://mastodon.social/@sellorm/115275222322527989/embed" style="background: #FCF8FF; border-radius: 8px; border: 1px solid #C9C4DA; margin: 0; max-width: 540px; min-width: 270px; overflow: hidden; padding: 0;"> <a href="https://mastodon.social/@sellorm/115275222322527989" target="_blank" style="align-items: center; color: #1C1A25; display: flex; flex-direction: column; font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Roboto, sans-serif; font-size: 14px; justify-content: center; letter-spacing: 0.25px; line-height: 20px; padding: 24px; text-decoration: none;"> <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 79 75"><path d="M63 45.3v-20c0-4.1-1-7.3-3.2-9.7-2.1-2.4-5-3.7-8.5-3.7-4.1 0-7.2 1.6-9.3 4.7l-2 3.3-2-3.3c-2-3.1-5.1-4.7-9.2-4.7-3.5 0-6.4 1.3-8.6 3.7-2.1 2.4-3.1 5.6-3.1 9.7v20h8V25.9c0-4.1 1.7-6.2 5.2-6.2 3.8 0 5.8 2.5 5.8 7.4V37.7H44V27.1c0-4.9 1.9-7.4 5.8-7.4 3.5 0 5.2 2.1 5.2 6.2V45.3h8ZM74.7 16.6c.6 6 .1 15.7.1 17.3 0 .5-.1 4.8-.1 5.3-.7 11.5-8 16-15.6 17.5-.1 0-.2 0-.3 0-4.9 1-10 1.2-14.9 1.4-1.2 0-2.4 0-3.6 0-4.8 0-9.7-.6-14.4-1.7-.1 0-.1 0-.1 0s-.1 0-.1 0 0 .1 0 .1 0 0 0 0c.1 1.6.4 3.1 1 4.5.6 1.7 2.9 5.7 11.4 5.7 5 0 9.9-.6 14.8-1.7 0 0 0 0 0 0 .1 0 .1 0 .1 0 0 .1 0 .1 0 .1.1 0 .1 0 .1.1v5.6s0 .1-.1.1c0 0 0 0 0 .1-1.6 1.1-3.7 1.7-5.6 2.3-.8.3-1.6.5-2.4.7-7.5 1.7-15.4 1.3-22.7-1.2-6.8-2.4-13.8-8.2-15.5-15.2-.9-3.8-1.6-7.6-1.9-11.5-.6-5.8-.6-11.7-.8-17.5C3.9 24.5 4 20 4.9 16 6.7 7.9 14.1 2.2 22.3 1c1.4-.2 4.1-1 16.5-1h.1C51.4 0 56.7.8 58.1 1c8.4 1.2 15.5 7.5 16.6 15.6Z" fill="currentColor"/></svg> <div style="color: #787588; margin-top: 16px;">Post by @sellorm@mastodon.social</div> <div style="font-weight: 500;">View on Mastodon</div> </a> </blockquote> <script data-allowed-prefixes="https://mastodon.social/" async src="https://mastodon.social/embed.js"></script>

This one hit home for a variety of reasons. It was only a couple of weeks prior that I decided to switch the underpinnings of my [Shiny Developer Series](https://shinydevseries.com) site from `{blogdown}` (using the Hugo Apero theme) to [Quarto](https://quarto.org), the new scientific publishing engine created by [Posit](https://posit.co/). While I had technical reasons to make the switch, I felt a lot of guilt at the same time, which you can read about in the revamped site's first [blog post](https://shinydevseries.com/blog/2025-09-21-revamp-site/). While I am indeed using Quarto as the engine behind important professional initiatives and key open-source efforts, I will never let the legacy of `{blogdown}` vanish under my watch and I would never turn down the chance to keep spreading the word. With the domain expiring, I did not hesitate to carry the baton of Awesome-Blogdown and keep this important effort going.

## Technical Details

### Development Environment

It was tempting to simply fork the Awesome-Blogdown [GitHub repository](https://github.com/sellorm/awesome-blogdown) and re-deploy using the new domain I purchased (`awesome-blogdown.org`), but I have never been a stranger to over-engineer all the things. Mark already had a sophisticated system in place built upon GitHub actions, Python, clever bash scripting, and Makefiles to check the status of the sites he included, along with a nice crafting of the HTML behind the site. In my head I couldn't shake the opportunity of using `{blogdown}` to create the site meant to showcase uses of `{blogdown}`! But how could I ensure that this time I would be able to create a development environment that I can count on to keep as-is for the foreseeable future? 

**The answer: Nix!**

I am now using [Nix](https://nixos.org/) to manage dependencies of almost every new data science project involving R, Python, and other utilities in my open-source work. Nix certainly has a learning curve, but with the advent of [`{rix}`](https://docs.ropensci.org/rix/) authored by Bruno Rodriguez and Philip Baumann, R users now have a terrific way to tailor Nix to their needs, not unlike the role `{blogdown}` plays to help create sites with Hugo. If this is your first time hearing about `{rix}`, I highly recommend reviewing the [online documentation](https://docs.ropensci.org/rix/) as well as watching Bruno's R/Medicine 2025 workshop [recording](https://youtu.be/odC3soY2qnk?si=IzX_ktNUG4gVXO3h). Thanks to the power of Nix, I can employ a sandbox development environment driven entirely by a single configuration file, with the versions of R, Python, their associated packages, and Hugo all frozen until I deem an update is necessary:

```r
rix(
  r_ver = "4.5.1",
  project_path = getwd(),
  r_pkgs = c(
    "rmarkdown",
    "blogdown",
    "jsonlite",
    "knitr",
    "rix",
    "purrr",
    "reactable",
    "dplyr"
  ),
  py_conf = list(
    py_version = "3.12",
    py_pkgs = c("requests")
  ),
  system_pkgs = c("hugo", "jq"),
  ide = "none",
  overwrite = TRUE
)
```

This project is also a great opportunity to use [Positron](https://positron.posit.co/) to revise the code base, since I will be able to seamlessly switch between R and Python all within the Nix environment.

### Theme

Now it was time to choose a Hugo theme that would have a streamlined interface with little customization required, since I don't have the time or desire to go down a bunch of rabbit holes with custom Hugo scripting. I discovered the [Hugo Simple](https://github.com/maolonglong/hugo-simple) theme created by [Shaoleng Chen](https://chensl.me/) and it immediately checked all of the boxes of what I needed:

* [x] Stable code base (in fact the theme is now in maitenance mode)
* [x] Clean and simple look and feel
* [x] **Bonus**: The development environment was also powered by Nix!


### Site Data

Armed with the theme, it was time to start replicating the previous site's content, mainly the home page with the table displaying the sites built with `{blogdown}` or `{hugodown}`. Mark created a nice HTML table with a search functionality from scratch, but I only know enough lower-level HTML and Javscript to be dangerous. Now that R is the driver to compile the site, why not re-create this table using what has become my go-to package for creating interactive HTML tables? Yes, this was a job for [`{reactable}`](https://glin.github.io/reactable/)! I have used `{reactable}` more times than I can count across my Shiny applications and HTML-based reports. The only gotcha I encountered was the mismatch in appearance when using the default dark theme inside Hugo Simple. I took the easy way out and forced light mode in the theme, so the reactable table did not require any custom CSS tricks. 

Finally I had to address the source data of the table, in which Mark employed a terrific system in which each site listed in the table had an associated JSON file, and a very powerful Python script to determine if a site was indeed viewable by using the Requests library. As mentioned earlier, I have no problem leveraging Python in the development environment, so I wanted to keep using this workflow. I made a couple of small tweaks (assisted by AI via Positron Assistant):

* After determining if a site is valid, add two new fields to the JSON record of a site (whether the site passed or failed and the associated HTML status code).
* Create the integrated JSON file that combines all of the records together (this was previously handled by a separate bash script using `jq`).

### Deployment

The finish line was in sight. The remaining steps were to update how the site was built inside the [GitHub action](https://github.com/rpodcast/awesome-blogdown/blob/master/.github/workflows/gha-ci.yml). The strategy of using Nix to control the development environment is especially powerful in this context because I can install the necessary dependencies with the **exact same configuration** as my local development environment! I configured the action to build the site with a typical `blogdown::build_site()` in which the site files are routed to a `docs` subdirectory that is subsequently pushed to the `site-deploy` branch. In this project I am using AWS Amplify for the first time to host the site. Everything ran perfectly with the GitHub action, but to my dismay the deployed site only had a shell of the index page appearing, with no table! Well, silly me didn't' check the default arguments for `blogdown::build_site()` in which any R Markdown files are **not compiled** unless you specifically state `build_rmd = TRUE`. After making that small correction, the site deployed perfectly.

## Remaining Tasks

I'm quite satisfied that I made it this far after a few late evening dev sessions. But I still have a few issues to solve (eventually):

* Even if a web site is viewable as determined by the Python script, some of these sites have indeed switched to a different site generator. I of all people can understand this, having done a switch myself with the Shiny Developer Series site. But those sites likely shouldn't remain on this site's list. Perhaps there is a clever way to automatically determine if a web site is **not** built with Hugo?
* It would be neat to periodically send out a post to various social media channels highlighting one fo the sites on this list. That is a stretch goal :slightly_smiling_face:.
* A very logical question you may have is why am I not using the original domain of `awesome-blogdown.com`? That was always my intention, but as of this writing I have not been able to purchase the domain after it expired. To be honest, I prefer the `awesome-blogdown.org` version!

## Acknowledgements

I want to extend a massive thank you to Mark Sellors, who not only took the initiative to build Awesome-Blogdown completely on his own, but also was completely transparent about his plans once the domain expired. Had he not taken the time to post, it is highly likely I would not have known until it was too late. Mark is a brilliant guy, and deserves all of the kudos sent his way.

If it wasn't clear earlier in this post, I am a massive fan of everything [Yihui Xie](https://yihui.org/) has created for the R community. It's not just that Yihui is a brilliant software engineer, he is an even better person who has more than once blown me away with this honesty about his journey (if you don't believe, listen to [episode 24](https://r-podcast.org/024-rstudioconf-yihui-xie/)). I am forever grateful for Yihui's contributions, and he is showing no signs of slowing down either in creating the new [`{lightdown}`](https://yihui.org/litedown/) package.

