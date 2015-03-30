# Omawho

Team:

- [Andrew Yolland](http://github.com/Ayolland)
- [Usman Anwar](http://github.com/uanwar88)
- [Derek George](http://github.com/Derek68038)
- [Jason Hogrefe](http://github.com/jhogrefe)

**Andrew** and **Derek**, you're primarily front-end developers on this project.

**Usman** and **Jason**, you're going to handle the back-end.

---

This project is a fairly standard Rails app: CRUD for a user, and a User belongs to a Category. It is a rebuild, from scratch, of http://omawho.com.

Each user's photo is shown on the homepage; you can filter by category.

Bonus feature: Some kind of quiz.

The biggest challenge here is building an attractive design for the site. I like the design for the site as it is now, but I don't love it. I want something cleaner, like these: http://www.awwwards.com/gallery/5654/30-grid-based-websites/, http://www.awwwards.com/gallery/5661/30-grid-based-websites/

---

# Development Plan

A project like this can be deceptively hard to get right. It's less about functionality than it is about *experience*, and that's a persnickety goal.

It's easy to think that keeping *experience* front-and-center is a job for the front-end developers, but that's a mistake. The back-end team is just as responsible for making the experience good: A user's password should be easily reset; users should get emails that effectively communicate system changes; uploaded images should be resized properly to avoid huge downloads; delayed jobs should handle long-running tasks to avoid slowdowns, etc.

The front-end team definitely has a big job to do though. So consider the following milestones:

1. Sitemap
2. Non-database-driven front-end design implementation
3. Console-based model functionality
4. Admin functionality
5. Controllers and basic views
6. Front-end design integration
7. Deployment

So, details:

## Sitemap

Define every page, from the end-user's (not admin's) perspective. Answer these questions for each page:

1. What is the page's primary responsibility?
2. Excluding global navigation links, where can a user go directly from this page?
3. In what way is this page restricted (if at all)?

The end result of this might look like index cards taped to a whiteboard.

## Non-database-driven front-end design implementation

Front-end team: With only HTML/CSS/JavaScript, build every page from the sitemap. Use fake content.

## Console-based model functionality

Back-end team: Without ever running `rails server`, you can get a lot done. Build all the models and other classes needed to support the functionality of the website. This includes tests and documentation.

It's true that end-users shouldn't be able to use all of the ActiveRecord CRUD methods, but that's not your concern yet. Knowledge of what kind of user is logged in doesn't arrive until the session is introduced.

## Admin functionality

Back-end team: Use a gem like Rails Admin or ActiveAdmin to quickly set up an admin section, where you (or anyone else who is identified as an admin) can do CRUD operations for users. This way, we won't need to use `rails console` on Production when things [inevitably] go wrong.

## Controllers and basic views

Back-end team: Organize the various pages from the sitemap into controllers and build out basic, unstyled views.

## Front-end design integration

Front-end team: Cut up your HTML/CSS/JavaScript into pieces, and fill out the views the back-end folks prepared for you.

## Deployment

We'll deploy to both Staging and Production. More to come.