# jueguito-cool-gdd

## METODOLOGÍA

### Resumen
El desarrollo se dividirá en tareas específicas para cada funcionalidad nueva, para cada tarea se deberá crear un `issue`, a partir de este issue se crea una `rama`, se realiza el desarrollo correspondiente y se crea una `pull request`. Al pasar la validación y tener al menos una aprobación, se podrá mergear en main

### Crear Issue
Para cada tarea, se debe crear un issue.
Para ello, en el menú de navegación del repositorio, seleccionar la pestaña `Issues` y después el botón `New issue`, seguido a esto agregarle un título descriptivo y una descripción más detallada en caso de ser necesario.

En caso de querer tomar esa tarea, asignársela a sí mismo, seleccionando el link `Asign yourself` en el menú de la derecha, en la sección `Asignees`. Esto con el fin de no tomar la misma tarea de otra persona

### Crear rama
Dentro del issue previamente creado o asignado, en el menú de la derecha, en la sección `Development`, seleccionar el link `Create a branch`. En la ventana que se abre, seleccionar el botón `Create branch`, eso mostrará un par de comandos de git, pegarlos en la terminal para crear la rama en local

### Crear pull request
Una vez terminado el desarrollo en local crear un commit descriptivo y pushear los cambios a la rama

```
git add .
git commit -m "add lobby menu"
git push
```
Luego, en Github, seleccionar la pestaña `Pull requests`.
Seleccionar el botón `New pull request`.
Seleccionar el botón `compare: main` y seleccionar la rama correspondiente.
Añadir un título descriptivo que inicie por `MAJOR`, `MINOR` o `PATCH` según corresponda y una descripción en caso de ser necesario.
Finalizar la creación de la pull request seleccionando el botón `Create pull request`

### Mergear pull request en main
Una vez la pull request esté lista, al menos una persona deberá revisarla y aprobarla, una vez esto ocurra se podrá hacer el merge seleccionando el botón `squash and merge` en la parte inferior de la página. Una vez hecho esto, se generará una nueva versión y se dará por terminada la tarea. En este caso es ideal traer a local los nuevos cambios a main y comenzar nuevamente desde ahí
```
git fetch
git checkout main
```

## PROJECT STRUCTURE

```
│
├── assets/                # Directorio para almacenar todos los recursos del juego
│   ├── sprites/
│       ├── player/
│       ├── enemies/
│       ├── ui/ 
│       └── ...
│   ├── audio/             # Archivos de sonido y música
│   ├── fonts/             # Fuentes utilizadas en el juego
│   ├── shaders/           # Shaders personalizados
│   └── ...
│
├── scenes/                # Directorio para almacenar todas las escenas del juego
│   ├── main/              # Escenas principales del juego
│   ├── levels/            # Escenas de niveles
│   ├── ui/                # Escenas de interfaz de usuario
│   ├── characters/        # Escenas de personajes y NPCs
│   └── ...
│
├── scripts/               # Directorio para almacenar todos los scripts del juego
│   ├── player/            # Scripts relacionados con el jugador
│   ├── enemies/           # Scripts de enemigos
│   ├── ui/                # Scripts de la interfaz de usuario
│   ├── utilities/         # Scripts de utilidad
│   └── ...
│
│
├── addons/                # Directorio para almacenar los addons (si se utilizan)
│
├── exports/               # Directorio donde se exportan los binarios del juego
│
└── .gitignore             # Archivo para especificar qué archivos y directorios ignorar en Git

```
