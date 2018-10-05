# Django Package Template

Cookiecutter template for Django packages

## Usage

### Installation

1.  Install Cookiecutter

    ```bash
    pip install -U cookiecutter
    ```
    
2.  [Install Hub][hub] the GitHub CLI tool.

3.  To create a public package you will need to install the
    [Travis Client][travis-cli].

[travis-cli]: https://github.com/travis-ci/travis.rb#readme

### Creating the package

In the terminal, navigate to where you want to create your repository and
call:

```bash
cookiecutter gh:Thermondo/django-package-template
```

You will be prompted, simply follow the given instructions.
    
The repository will be created for you automatically and the initial
boilerplate code will be committed and pushed.

For more information on how to use Cookiecutter, please visit their
documentation: https://cookiecutter.readthedocs.io/

[hub]: https://github.com/github/hub#installation

### Setting up the repository

1.  Go to the repository settings and disable Wikis, Projects and merge commits.
    
2.  Go to the repository contributor settings. In the team section add `Developers`
    with `write` access.
