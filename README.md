# elder-scrolling
*That's how the elder scrolls*

## ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `THIS SCRIPT WILL BE HEAVILY MODIFIED IN THE NEXT FEW DAYS BECAUSE I FOUND OUT HOW EVERYTHING IS DONE IS MORE OR LESS USELESS AND UNPRACTICAL.`

Scroll using your mouse movements instead of the scrollwheel. By default scroll while holding right click (mouse button 3).

![elder-scrolling demo](https://i.imgur.com/ngIbExy.gif)

Just install by running `install_mouse_scroll.sh`  **without sudo**.

If you want to temporarly disable this scrolling mechanism, run `disable.sh`, `enable.sh` to re-enable it.

You can make an alias to access these scripts easily from anywhere.
Just add:
```bash
alias scroll-enable='<path-of-elder-scrolling-folder>/enable.sh'
alias scroll-disable='<path-of-elder-scrolling-folder>/disable.sh'
```
at the end of your `~/.bashrc` / shell configuration file.

Should work with any mouse model.

*Original idea by [Jeet Sukumaran](https://jeetblogs.org/) and [Charles Grassin](http://charleslabs.fr/en/index)*
