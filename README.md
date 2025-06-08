# bibtex-tidy GitHub Action
GitHub Action to run [bibtex-tidy](https://github.com/FlamingTempura/bibtex-tidy), a BibTeX formatter.

## Usage
1. Create `.github/workflows/bibtex-tidy.yml`
2. Configure `bibtex-tidy.yml` ([see examples](#examples))
3. Commit and push `bibtex-tidy.yml`

### Examples
The following formats all `.bib` files in the repository on pushes and pull requests, then pushes the changes.
```yml
name: bibtex-tidy
on: [push, pull_request]

jobs:
  format:
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
        commit_message: "Formatted using bibtex-tidy"
```

## Reporting Issues
Please use [GitHub Issues](https://github.com/grayespinoza/bibtex-tidy-action/issues) to report bugs, crashes, and other issues.

## License
bibtex-tidy-action is under the [MIT License](https://github.com/grayespinoza/bibtex-tidy-action/blob/main/LICENSE).
