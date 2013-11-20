# Superfunc: a fully functional programming language

Superfunc is a fully functional, side-effect-limiting, programming language
implemented in C.

Functional programming is all the rage these days. One of the main tenets of
functional programs is to limit side effects: Superfunc takes this idea to its
recursive end. Superfunc is implemented in C, so it has all of the benefits of
C: speed, portability, and all of the things you love. However, the
programming language is defined in such a way that other implementations are
possible.

One of the many benefits of Superfunc is that its syntax is extremely
flexible: you can write in your favorite syntax and Superfunc just works! If
you're an imperative programming fan, write imperative code! If you're more of
an object-oriented kind of person, implement all of the AbstractFactories you
like! Because Superfunc is a fully functional, side-effectless programming
language, the Superfunc interpreter is quite flexible in the programs it
accepts.

## Installation

Clone this repo, run `make` and put the resulting `superfunc` binary somewhere
in your path. (Requires some flavor of `make` installed and a C compiler.
Later implementations may not have these prerequisites).

## Sample code

As mentioned above, Superfunc is extremely flexible in the programs it will
interpret. All of the following produce the same result when run through the
superfunc interpreter:

Ruby-ish:
```ruby
puts "Hello, world!"
```

Lispy:
```lisp
(print "Hello, world!")
```

Object-orienty:
```java
class HelloWorldApp {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```

Even more esoteric languages:
```
>+++++++++[<++++++++>-]<.>+++++++[<++++>-]<+.+++++++..+++.[-]
>++++++++[<++++>-] <.>+++++++++++[<++++++++>-]<-.--------.+++
.------.--------.[-]>++++++++[<++++>- ]<+.[-]++++++++++.
```

Or a mixture of several:
```
(class HelloWorldApp extends AnyObject {
    System.out.puts($the_message)

    ~
     ~
      ~
       <><

    // variables can be hoisted, if that's your thing
    $the_message = "Hello, world!";)))))))
```

## Running

Save a Superfunc file (with any extension you like), then run it through the
`superfunc` interpreter:

```
superfunc my_awesome_program_with_no_side_effects.sf
```

Because Superfunc is a side-effect-limiting language, you probably won't see
anything happen...we're eliminating side effects, remember! You may notice a
few cycles of your processor used up, but this is a bug we are looking at
fixing in the next version.

## To Do

It would be nice to have other implementations:

- Ruby/Rails: for all your webapp needs
- PHP: in case you want to run Superfunc on a shared host (easy install)
- NodeJS: it's nearly perfect already, so maybe we could skip this one

## A fun fact

Because Superfunc eliminates side effects, it's especially fun for use in
quines. Given a few of the examples above, the following is a purely
functional quine:

```
superfunc ruby-ish.sf > rubyish && chmod +x rubyish
rubyish lispy.sf > lispy        && chmod +x lispy
lispy bf.sf > bf                && chmod +x bf
bf superfunc > superfunc        && chmod +x superfunc
```

Thanks to the many benefits of pure functional programming, the superfunc at
the end is completely identical to the superfunc at the beginning.

## License

Superfunc is licensed under the [WTFPL](www.wtfpl.net).
