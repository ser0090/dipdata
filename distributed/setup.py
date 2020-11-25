# -*- coding: utf-8 -*-

"""
Set-up
-----------------
"""

from distutils.core import setup


setup(
    name='distributed',
    version='1.0',
    description='big data using pyspark',
    author='Sergio Sulca',
    install_requires=[
        'jupyterlab',
        'numpy',
        'pandas',
        'matplotlib',
        'seaborn',
        'plotly',
        'openjdk=8.0.152',
        'pyspark',
        'graphframes'
    ]
)
