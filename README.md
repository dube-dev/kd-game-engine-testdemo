Manual Tests for kd-game-engine
===============================

This repository will contain demos and manual tests using KernelDeimos'
Javascript Game Engine.

Currently, this repository contains a node.js webserver with a single
example of a ball falling on a platform and promptly flying off the
screen. It's not much but it's a start.

Below are instrucitons on how to perform manual testing - using this
example(s) - by packaging a cloned copy of the kd-game-engine repo.

This means you can use your own version of the `kd-game-engine`
package before your changes are submitted to npm!

Getting Started
---------------

### Note on Environment
These instructions apply to deveopment under a GNU/Linux environment.

If you are using Windows, I reccommend doing development for the game
engine under a virtual machine. Elsewise, pull requests that add
scripts and instructions for windows are welcome.

### First Steps

1. First, clone both this repository and the kd-game-engine repository.
2. Follow the instructions to setup the kg-game-engine repository.
3. Run `npm install` in this directory.
4. Create a file called `config.sh` inside this directory.

   The file should contain a path to the location where you cloned the
   kd-game-engine package.

   If kg-game-engine and kd-game-engine-testdemo are in the same
   directory, the file should look like this:

   ```sh
   package_path=../kd-game-engine
   ```

Manual Testing
--------------

### Typical Build-and-Run

1. Run `npm build`
2. Run `npm start`
3. Navigate to `127.0.0.1:3000` in a browser

### Troubleshooting

If you encounter any problems trying to make this work, please submit
an issue on GitHub - elsewise someone else will suffer too!

Need Help?
----------

Please submit an issue on GitHub if anything is unclear; if you
encounter some ambiguity in the instructions, you're not alone!
