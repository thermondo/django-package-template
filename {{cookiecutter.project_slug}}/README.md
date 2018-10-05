# {{ cookiecutter.project_slug }}

{{ cookiecutter.package_description }}

### Setup
{% if cookiecutter.visibility == 'public' %}
```bash
pip install {{ cookiecutter.project_slug }}
# or
pipenv install {{ cookiecutter.project_slug }}
```
{% else %}
We install private packages directly via GitHub.

```bash
pip install -e git+https://GITHUB_TOKEN@github.com/Thermondo/{{ cookiecutter.project_slug }}.git@VERSION_TAG#egg={{ cookiecutter.project_slug }}
# or
pipenv install -e git+https://GITHUB_TOKEN@github.com/Thermondo/{{ cookiecutter.project_slug }}.git@VERSION_TAG#egg={{ cookiecutter.project_slug }}
```

You can find the GitHub access token in our 1Password vault.
{% endif %}
### Usage
<!-- Put usage desciption here. -->
