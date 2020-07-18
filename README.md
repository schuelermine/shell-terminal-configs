# Welcome to `schuelermine/shell-terminal-configs`!

This is a repository for shell or terminal config files, be they configs, functions, startup scripts, modules, prompts, syntax highlighting, color schemes, keymaps or autosuggestions - anything small(ish).

## Warning! This is currently in developement. If the code doesn't work for you right now, try browsing the repo's history. Sometimes, things are changed which some users might not want.

# Installation

### fish functions

Type the function in your prompt and then write `funcsave` and then the name of the function.

### PowerShell functions

Add the function to your profile file, the location of which you can find out by checking the `$PROFILE` automatic variable.

# faQ (possibly-**f**allaciously **a**nticipated **Q**uestions)

### Does `colorful-informative_prompt/powershell-7` work with Windows PowerShell?

No, because it uses the ternary operator (`condition ? value1 : value2`).
You need PowerShell 7 or later.

---

### What's with the mixed underscores and dashes?

Undescores delimit different kinds of information, dashes replace spaces.

---

### Why PowerShell and fish?

They're the shells I use.

---

### Why, in `colorful-informative_prompt/fish/fish_prompt.fish`, does the case statement match "toor"?

I don't know, but it was in the default fish prompt function, so I figured it might be necessary for something.

---

### Was `colorful-informative_prompt` inspired by something?

Yes, it was inspired by the "Informative" preset in the fish config.

---

### What about git support in the prompt?

Thinking about it. I'm not good at git, so I need to think about it.

---

### Why does `very-colorful_greeting/fish/fish_greeting.fish` check if the commands are available? Can't you just not use that greeting if you don't have them installed?

Because, when using `sudo fish`, the commands are no longer available, but it still uses the greeting and prompt of the user it was called from.
