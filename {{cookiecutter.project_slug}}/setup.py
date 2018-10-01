#!/usr/bin/env python
from setuptools import setup


setup(
    install_requires=['Django'],
    setup_requires=['pytest-runner'],
    tests_require=['pytest', 'pytest-django'],
)
