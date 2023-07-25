# K13114 Unofficial LaTeX Beamer Theme

## Visual Studio Code

### Configuration for LaTeX (lualatex mainly)

The Beamer presentation is compiled by lualatex.

Other tools, such as `biber` or `glossaries` were used in the text of author's Thesis. The recipe `lualatex × 2 ➞ biber ➞ makeglossaries ➞ lualatex × 2` was extensively used when writing the Thesis. Not only recipes but tool definitions are also important.

```json
{
	"latex-workshop.latex.recipes": [
		{
			"name": "lualatex × 2 ➞ biber ➞ makeglossaries ➞ lualatex × 2",
			"tools": [
				"lualatex",
				"lualatex",
				"biber",
				"makeglossaries",
				"lualatex",
				"lualatex"
			]
		},
		{
			"name": "lualatex (lualatex)",
			"tools": ["lualatex"]
		},

		{
			"name": "biber ",
			"tools": ["biber"]
		},
		{
			"name": "makeglossaries",
			"tools": ["makeglossaries"]
		}
	],
	"latex-workshop.latex.tools": [
		{
			"name": "makeglossaries",
			"command": "makeglossaries",
			"args": ["%DOCFILE%"]
		},
		{
			"name": "lualatex",
			"command": "lualatex",
			"args": [
				"-synctex=1",
				"-interaction=nonstopmode",
				"-file-line-error",
				"-pdf",
				"%DOC%.tex"
			]
		},
		{
			"name": "biber",
			"command": "biber",
			"args": ["%DOCFILE%.bcf"]
		}
	]
}
```

## Run Compilation

Run the compilation with the recipe called `lualatex`. For images of a CTU logo to be displayed, run the Compilation twice...

Basic command for opening `Command palette` on macOS is with `CMD + Shift + P`. Search for `LaTeX Workshop: Build with recipe`. For the option to be displayed, you need to have extension [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) installed.

## Comments

- Do the files of beamer template and font need to be in a parent folder? Why subfolders are not used.
  - Yes they need to be in a parent folder. I did not manage to run the compilation successfully, when the files are in subfolders. I have extensively searched the web, but did not find any solution. If you have any, please submit a Pull Request.

# Disclaimer

Use the template at your own risk.
