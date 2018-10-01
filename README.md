# Django Package Template

Cookiecutter template for Python packages

### Usage

1. Install cookiecutter on your machine:

```bash
pip install -U cookiecutter
```


2. In the terminal, navigate to where you want to create your repository and call:

```bash
cookiecutter gh:Thermondo/django-package-template
```

### Documentation

Cookiecutter documentation can be found here:
https://cookiecutter.readthedocs.io/

#### Releasing a package

##### Public PyPi

To release a new PyPi package you will need the [Travis Client][travis-cli].

Simply execute the following command and follow the instructions:

```bash
travis setup pypi --com
```

Confirm the default values. You will find the PyPi credentials in our
1Password team vault.

[travis-cli]: https://github.com/travis-ci/travis.rb#readme

##### Private packages

We install private packages directly via GitHub.

For pip simply add

```
-e git+https://GITHUB_TOKEN@github.com/Thermondo/REPO_NAME.git@VERSION_TAG#egg=PACKAGE_NAME
```

and for Pipenv use

```
PACKAGE_NAME = {git = "https://GITHUB_TOKEN@github.com/Thermondo/thermondo-salesforce.git", ref = "VERSION_TAG"}
```

You can find the GitHub access token in our 1Password vault.
