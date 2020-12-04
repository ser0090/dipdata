# -*- coding: utf-8 -*-

"""
Set-up
-----------------
"""

from distutils.core import setup


setup(
    name='elasticsearch',
    version='1.0',
    description='elasticsearch',
    author='Sergio Sulca',
    install_requires=[
        'jupyterlab',
        'numpy',
        'matplotlib',
        'scikit-learn',
        'pandas',
        'nltk',
    ]
)
