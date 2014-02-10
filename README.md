"Null Object" Exercise: Part Two
================================

In this exercise, you'll use the Null Object pattern to encapsulate conditional
logic relating to `nil`. The conditions in this exercise are more complex than
the ones in the first exercise. You may want to use more than one Null Object
class.

Exercise!
---------

1. Open `lib/user.rb` in your favorite editor.
2. Look for conditionals related to `nil`.
3. Introduce a Null Object. Think of a good name based on what `nil` represents
   in this context.
4. Replace a single conditional by moving the nil logic to the Null Object.
5. Repeat step four until nothing else can be moved to the Null Object.
6. Repeat steps three through five until the `nil` logic is entirely
   encapsulated within Null Objects.
7. Make sure all tests pass by running `rake`.

## Working/Submitting

1. To work on this exercise, fork the repo and begin implementing your solution.
2. Create a pull request so your code can be reviewed.
3. Perform a code review on at least one other person's solution. Your comments
   should follow our [code review guidelines]. Most important: be friendly. Make
   suggestions, not demands.
4. Improve your solution based on the comments you've received and approaches
   you've learned from reviewing others' attempts.

[code review guidelines]: https://github.com/thoughtbot/guides/tree/master/code-review
