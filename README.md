# Zircon

## What's this?

Well, the simplest answer is a game for PICO-8, a Fantasy Consile by zep. It's very much a work in progress and a lot of ideas are still in my head. Expect it to be a rougelike of sorts.

## Building

Zircon is created using [my own pico8 library](https://github.com/Caaz/pico8-lib) of tools. To build it you need to use my compiler which requires perl and a sense of humor
- `git pull https://github.com/Caaz/PICO8-zircon`
- `cd PICO8-zircon`
- `perl lib/compile.pl base.p8` if you'd like to create a fifo and use that instead, use `perl lib/live-compile.pl base.p8`

## Developing

The project begins at [base.p8](../blob/master/base.p8), where it imports other files. As of right now, that's all I can say. While working on it you're better off using the live compile option which will build it on pico8's reload of the fifo cart.

## License

This uses the [MIT License](../blob/master/LICENSE.txt).

## Credits

So far, just me! Feel free to work on things once I get going though!
