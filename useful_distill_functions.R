# These are just one-time functions. 
# Don't just run to the whole script!

# ==============================================================================
# Install relevant packages, if needed. 

# install.packages("distill")
# install.packages("rmarkdown")
# install.packages("postcards")

# ==============================================================================
# Begin by creating the website files in the project directory,

distill::create_website(dir = ".", 
                        title = "Tobi Burns", 
                        gh_pages = TRUE)

# ==============================================================================
# Creating a postcard landing page. 

# (1) Remove the existing index.Rmd file.W
unlink("index.Rmd")

# (2) Create a postcard page and name it index.
distill::create_article(file = "index",  
                        template = "jolla",    
                        package = "postcards")

# (3) copy this into the metadata (top section) of
#     the new postcard index. 
site: distill::distill_website

# ==============================================================================
# Create article/blog.

# Create a folder. The underscore is important!
dir.create("_posts/blog1")

# Create an example article in that folder.
distill::create_article(file = "_posts/blog1/first_article",
                        template = "distill_article")

# Add this to the metadata (top section) of the
# rmarkdown file page where you want the blogs to be 
# (e.g., about.Rmd, posts.Rmd)
listing: posts

# Make sure the Rmd you use for posts is in
# the _site.yml, so that it appears in the website menu.

# ==============================================================================

# MISC 

# YAML code for github logo in nav bar. Copy and paste this into the YAML.
# - icon: fab fa-github
#   href: https://github.com/aosmith16/personal-website
