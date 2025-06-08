# bibtex-tidy GitHub Action
GitHub Action to run [bibtex-tidy](https://github.com/FlamingTempura/bibtex-tidy), a BibTeX formatter.

## Usage
1. Create `.github/workflows/cd.yml`
2. Configure `cd.yml`
3. Commit and push `cd.yml`

### Examples
The following formats all `.bib` files in branch `main` on pushes, then pushes the changes.
`.github/workflows/cd.yml`
```yml
name: CD
on:
  push:
    branches: main

jobs:
  bibtex-tidy:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
    - name: Checkout
      uses: actions/checkout@main
      with:
        ref: ${{ github.head_ref }}
    - name: Run bibtex-tidy
      uses: grayespinoza/bibtex-tidy-action@main
    - name: Push
      uses: stefanzweifel/git-auto-commit-action@master
      with:
        commit_message: "style: format using bibtex-tidy"
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/bibtex-tidy-action/issues) to report bugs, crashes, and other issues.

## License
bibtex-tidy-action is under the [MIT License](https://github.com/grayespinoza/bibtex-tidy-action/blob/main/LICENSE).
