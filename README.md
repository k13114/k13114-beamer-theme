# K13114 Unofficial LaTeX Beamer Theme

## Files

File [beamerthemek13114.sty](./beamerthemek13114.sty) acts like and index file which imports template files.

For writing presentation use file [tex.tsx](./tex.tex).

For editing inner template use [beamerinnerthemek13114.sty](./beamerinnerthemek13114.sty).

For editing outer template use [beamerouterthemek13114.sty](./beamerouterthemek13114.sty).

For editing colors use [beamercolorthemek13114.sty](./beamercolorthemek13114.sty).

## Run Compilation

Run the compilation with the recipe called `lualatex`. For images of a CTU logo to be displayed, run the Compilation twice...

Basic command for opening `Command palette` on macOS is with `CMD + Shift + P`. Search for `LaTeX Workshop: Build with recipe`. For the option to be displayed, you need to have extension [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) installed.

## Comments

<details>
<summary>Do the files of beamer template and font need to be in a parent folder? Why subfolders are not used.</summary>

Yes they need to be in a parent folder. I did not manage to run the compilation successfully, when the files are in subfolders. I have extensively searched the web, but did not find any solution. If you have any, please submit a Pull Request.

</details>

## Configuration

### Configuration for LaTeX (lualatex mainly) in VSCode

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

# Disclaimer

Use the template at your own risk.
