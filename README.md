# WebAssembly-SDL-Engine

The idea of this project is to make an Engine to render or make games with SDL 2 for `WebAssembly`.

## Project structure

```
Project_name
  |
  |---- CMakeLists.txt
  |
  |---- include
  |       |
  |       |---- Project_name
  |                 |
  |                 |---- public_header(s).h
  |
  |--- src
  |     |
  |     |---- private_header(s).h
  |     |
  |     |---- code(s).cpp
  |
  |
  |---- libs
  |       |
  |       |---- A
  |       |
  |       |---- B
  |
  |
  |---- tests
  |
  |
  |
  |
  |---- external
          |
          |---- external_repository
          |
          |---- external_repositoryB
   
```


# Contribute

There will be 2 main branches:

- `master`: will be the production branch, it means it will be the one who gonna be running into the Raspberry Pi.
- `dev`: this one will be the one who every `${task_id}` branch should merge to.
- `${task_id}`: This branch is special, because is not one, this refer to all the branches reffering to a certain task.

### How is the development flow?

- Make a branch from the `master`.
- Name the branch with the `id` of the task you are working with (e.g. `12`).
- When you finish all the changes `merge` it to the `dev` branch.
- The `dev` branch will be automatically tested.
- If everything goes well the project manager will read the code to ensure some sort of "quatily".
- The `dev` changes will be added to the `master` branch.
