# Sistemas de Recomendación

Este es el repositorio de la materia de Sistemas de Recomendación.

## Sistemas de Recomendación - Instalación y Configuración
### Configuración del entorno
### Instalación de conda

Para este curso utilizaremos `conda` como gestor de paquetes y entornos de
trabajo en Python. Pueden instalar la versión que quieran de Anaconda o
Miniconda. Las instrucciones, de acuerdo a su sistema operativo, pueden
encontrarse en la [documentación oficial](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html#regular-installation).

### Crear un entorno virtual con las librerías de Anaconda
```sh
$ conda create --name rec-sys python=3.7 anaconda
```
Activar el entorno
```sh
$ conda activate rec-sys 
```

### Instalación de Surpr!se
La librería que vamos a utilizar para entrenar nuestos sistemas de recomendación
es [Surpr!se](http://surpriselib.com/) que tiene una implementación bastante
completa de varios algoritmos de recomendación y una API muy similar a la de
`scikit-learn`. Para instalarla, una vez activado el entorno, basta con el
siguiente comando:

```sh
 (rec-sys) $ pip install scikit-surprise
```

Para probar que se instaló correctamente, basta comprobarlo ejecutando la
siguiente celda:

```python
import surprise

print(f"Surpr!se version: {surprise.__version__}")
```

### Instalación de RISE

Si quieren visualizar las slides que estén en Jupyter Notebooks, tienen que
instalar [RISE](https://rise.readthedocs.io/en/stable/) con el siguiente
comando: ",

 ```
(rec-sys) $ pip install RISE
```

## Conjunto de datos

### MovieLens

El conjunto de datos de [MovieLens](https://grouplens.org/datasets/movielens/)
es uno de los más comunes para iniciarse en Sistemas de Recomendación, donde, en
este caso, se buscan recomendar películas a los distintos usuarios en base a su
review sobre películas vistas. Para descargarlo basta correr la celda siguiente
(sólo disponible en Linux, en caso de utilizar Windows es mejor hacer la
[descarga directa](http://files.grouplens.org/datasets/movielens/ml-latest-small.zip) y
descomprimir el archivo):

```sh
rm -rf data/ml-latest-small
mkdir -p data/
curl -LO http://files.grouplens.org/datasets/movielens/ml-latest-small.zip
unzip ml-latest-small.zip -d data/
rm -f ml-latest-small.zip
```

### LastFM

Para el práctico de la materia vamos a estar utilizando el conjunto de datos de
[LastFM](https://grouplens.org/datasets/hetrec-2011/), que tiene información
sobre usuarios y artistas que estos escuchan. Nuevamente, si no están utilizando
una terminal de Linux, recomiendo hacer el proceso de manera manual mediante la
[descarga directa](http://files.grouplens.org/datasets/hetrec2011/hetrec2011-lastfm-2k.zip).

```sh
rm -rf data/lastfm/
mkdir -p data/lastfm/
curl -LO http://files.grouplens.org/datasets/hetrec2011/hetrec2011-lastfm-2k.zip
unzip hetrec2011-lastfm-2k.zip -d data/lastfm/
rm -f hetrec2011-lastfm-2k.zip
```

## Algunos recursos extras 

* [Building and Testing Recommender Systems With Surprise, Step-By-Step](https://towardsdatascience.com/building-and-testing-recommender-systems-with-surprise-step-by-step-d4ba702ef80b)
* [Building a Recommender System from Scratch](https://github.com/topspinj/pydata-workshop/blob/master/tutorial.ipynb)
