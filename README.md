# Refactoring / Null Object Part Two

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

In this exercise, you'll use the Null Object pattern to encapsulate conditional logic relating to `nil`. The conditions in this exercise are more complex than the ones in the first exercise. You may want to use more than one Null Object class.


[Watch a relevant example from The Weekly Iteration](https://upcase.com/videos/live-coding-session-replace-conditional-with-null-object).

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/null-object-part-two.git
    cd null-object-part-two
    bin/setup

1. Open `lib/user.rb` in your favorite editor.
2. Look for conditionals related to `nil`.
3. Introduce a Null Object. Think of a good name based on what `nil` represents in this context.
4. Replace a single conditional by moving the nil logic to the Null Object.
5. Repeat step four until nothing else can be moved to the Null Object.
6. Repeat steps three through five until the `nil` logic is entirely encapsulated within Null Objects.
7. Make sure all tests pass by running `rake`.


## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/null-object-part-two/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/refactoring-null-object-part-two/4641)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Refactoring](https://thoughtbot.com/upcase/refactoring) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

null-object-part-two is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
