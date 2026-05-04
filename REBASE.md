# Limpieza de commits en Git - Repositorio Terraform

Para simular un historial desordenado, realicé varios commits con mensajes poco claros, como:

- `cambios`
- `arreglos`
- `cosas`

Estos mensajes no explicaban correctamente qué cambios se habían realizado en el repositorio.

## Proceso realizado

### 1. Creación de commits poco claros

Primero realicé varios cambios en el repositorio y los confirmé con mensajes poco descriptivos:

```bash
git add .
git commit -m "cambios"

git add .
git commit -m "arreglos"

git add .
git commit -m "cosas"
```

### 2. Revisión del historial

Después comprobé el historial de commits con:

```bash
git log --oneline
```

Esto permitió ver los commits recientes y confirmar que los mensajes no eran claros.

### 3. Inicio del rebase interactivo

Para modificar los últimos commits ejecuté:

```bash
git rebase -i HEAD~3
```

Este comando abrió un editor donde pude cambiar la forma en la que Git debía tratar cada commit.

### 4. Cambio y fusión de commits

En el editor del rebase utilicé:

```text
reword
squash
squash
```

Con `reword` cambié el mensaje principal del commit y con `squash` fusioné los commits innecesarios en uno solo.

### 5. Nuevo mensaje del commit

El mensaje final utilizado fue:

```text
Añadir notas de documentación del proyecto Terraform
```

Este mensaje es más claro y describe mejor el cambio realizado.

### 6. Comprobación del historial final

Después del rebase comprobé el historial con:

```bash
git log --oneline
```

El historial quedó con un commit limpio y descriptivo:

```text
dcaac7f Añadir notas de documentación del proyecto Terraform
```

### 7. Actualización del repositorio remoto

Como el historial fue reescrito, fue necesario actualizar GitHub usando:

```bash
git push --force
```

## Decisiones tomadas

Decidí fusionar los commits porque todos pertenecían a una misma modificación de prueba dentro del repositorio.  
Mantenerlos separados no aportaba valor y hacía que el historial fuera menos claro.

También cambié el mensaje final para que el historial remoto fuera más entendible y profesional.
