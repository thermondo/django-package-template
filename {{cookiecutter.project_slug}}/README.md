# {{ cookiecutter.project_slug }}

{{ cookiecutter.package_description }}

### Setup
{% if cookiecutter.visibility == 'public' %}
```bash
pip install {{ cookiecutter.project_slug }}
```
{% else %}
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
{% endif %}
### Usage
<!-- Put usage desciption here. -->
