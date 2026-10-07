# 🌭 Chicago Dog Stack (mobile)

A cute cartoon hot dog stacking game for phones. Swipe to slide your hot dog along the sidewalk, catch the falling Chicago-dog toppings, and stack them up to the **ORDER UP!** line to serve each dog. Never, ever catch the ketchup.

- **Seven levels at Chicago landmarks:** Willis Tower, the Bean, Navy Pier, Wrigley Field, Buckingham Fountain, the Riverwalk, and an endless final level that climbs past the clouds into outer space.
- **50 fun facts** about Chicago and hot dogs. Glowing 💡 bubbles drop in every 12 to 28 seconds, and you get a fact each time you serve a dog. The facts come in a shuffled order, and you see facts you haven't found yet before any repeats. The game keeps count of how many you've found.
- **Installs like an app** on iPhone and Android, opens full screen and works offline.
- **No AI and no server,** so there's nothing to pay for. It's a static web page.

## Play it

Once GitHub Pages is turned on (see below), the game is at:

**https://lbetscc.github.io/hotdog-stack-mobile/**

### Install it on your phone

- **iPhone (Safari):** open the link, tap the **Share** button, then **Add to Home Screen**.
- **Android (Chrome):** open the link, tap the **⋮** menu, then **Install app** (or **Add to Home screen**).

It then has its own icon, opens full screen without the browser bar, and works without an internet connection.

## How to play

- **Swipe** left and right anywhere on the game to move the hot dog. On a computer, use the arrow keys or A and D.
- **Tap** to start, and use the round button in the top-right corner to pause. You can also press Space on a computer. The game pauses by itself when you switch apps.
- The button in the top-left corner turns sound and vibration on or off.
- Stack toppings until they reach the **ORDER UP!** line. That serves the dog and moves you to the next level, which starts again with a plain hot dog.
- Catching a topping off-center makes the stack lean. If it leans too far, it topples. Tall stacks wobble, and moving fast makes it worse.
- You have 5 lives (the hot dogs in the top-right corner). You lose one for dropping a topping, catching ketchup or toppling the stack. A rare **golden frank** gives one back.
- Every topping falls somewhere you can reach in time, and ketchup never lands right where you need to be for a topping.
- 💡 bubbles are optional: catching one shows a fun fact below the game, and missing one costs nothing.
- On the final level, there's no finish line. As the tower grows, the view zooms out and rises with it, past Willis Tower, the clouds, an airplane, a satellite, the Moon, Saturn, a rocket and a UFO.

## Host it for free with GitHub Pages

GitHub Pages hosts the game for free, and it stays online without your computer. On a free GitHub account, the repository has to be **public**. The game has no passwords, keys or other secrets in it.

1. On GitHub, open the repository's **Settings**.
2. In the left sidebar, click **Pages**.
3. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
4. Set **Branch** to **main** and the folder to **/ (root)**, then click **Save**.
5. Wait a minute or two, then refresh the page. GitHub shows **Your site is live at https://lbetscc.github.io/hotdog-stack-mobile/**.

### Updating the game

Every push to `main` updates the live site within a minute or two. When you change any file, also bump the version in `sw.js` (for example `dogstack-v1` to `dogstack-v2`), so phones that installed the game pick up the new version. An installed game updates the next time it's opened with an internet connection, and sometimes needs to be closed and opened a second time.

## Run it on your computer

Any static web server works. With Python, which is already on Macs:

```bash
python3 -m http.server 8000
```

Then open http://localhost:8000. You can also double-click `index.html` to play, but installing and offline play only work when the game is served from a web address.

## Files

| File | What it does |
| --- | --- |
| `index.html` | The whole game: drawing, levels, controls and the fun facts |
| `manifest.webmanifest` | The app's name, icon and colors, for installing it on a home screen |
| `sw.js` | Saves the game on the phone so it works offline |
| `icon.svg`, `icons/` | The app icon at the sizes phones need |

To add or change fun facts, edit the `FACTS` list in `index.html`.
