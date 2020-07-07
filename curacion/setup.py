# -*- coding: utf-8 -*-

"""
Set-up
-----------------
"""

from distutils.core import setup


setup(
    name='curacion',
    version='1.0',
    description='Analisis y visualizacion de datos',
    author='Sergio Sulca',
    install_requires=[
        'numpy',
        'pandas',
        'matplotlib',
        'seaborn',
        'jupyterlab',
        'ftfy<5.6',
        'networkx',
        'scikit-learn'
    ]
)
