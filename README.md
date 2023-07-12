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
