# -*- coding: utf-8 -*-

"""
Set-up
-----------------
"""

from distutils.core import setup


setup(
    name='recsys',
    version='1.0',
    description='recommendation system',
    author='Sergio Sulca',
    install_requires=[
        'jupyterlab',
        'numpy',
        'lightgbm',
        'pandas',
        'seaborn',
        'scikit-learn',
        'scikit-surprise',
        'rise'
    ]
)
