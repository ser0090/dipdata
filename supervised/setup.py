# -*- coding: utf-8 -*-

"""
Set-up
-----------------
"""

from distutils.core import setup


setup(
    name='introml',
    version='1.0',
    description='intreduccion a machine learning',
    author='Sergio Sulca',
    install_requires=[
        'jupyterlab',
        'numpy',
        'matplotlib',
        'scikit-learn',
        'pandas',
        'seaborn',
        'scipy',
        'tensorflow',
        'Keras',
    ]
)
