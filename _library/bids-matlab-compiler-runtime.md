---
layout: container
name:  "bids/matlab-compiler-runtime"
maintainer: "@vsoch"
github: "https://github.com/singularityhub/singularity-hpc/blob/main/registry/bids/matlab-compiler-runtime/container.yaml"
updated_at: "2021-04-18 20:45:29.658348"
container_url: ""

versions:
 - "R2016b"
description: "Base image with Matlab compiler runtime (https://github.com/BIDS-Apps/matlab-compiler-runtime)"
---

This module is a singularity container wrapper for bids/matlab-compiler-runtime.
Base image with Matlab compiler runtime (https://github.com/BIDS-Apps/matlab-compiler-runtime)
After [installing shpc](#install) you will want to install this container module:

```bash
$ shpc install bids/matlab-compiler-runtime
```

Or a specific version:

```bash
$ shpc install bids/matlab-compiler-runtime:R2016b
```

And then you can tell lmod about your modules folder:

```bash
$ module use ./modules
```

And load the module, and ask for help, or similar.

```bash
$ module load bids/matlab-compiler-runtime/R2016b
$ module help bids/matlab-compiler-runtime/R2016b
```

You can use tab for auto-completion of module names or commands that are provided.

<br>

### Commands

When you install this module, you'll be able to load it to make the following commands accessible:

#### bids-matlab-compiler-runtime-run:

```bash
$ singularity run <container>
```

#### bids-matlab-compiler-runtime-shell:

```bash
$ singularity shell -s /bin/bash <container>
```

#### bids-matlab-compiler-runtime-exec:

```bash
$ singularity exec -s /bin/bash <container> "$@"
```

#### bids-matlab-compiler-runtime-inspect-runscript:

```bash
$ singularity inspect -r <container>
```

#### bids-matlab-compiler-runtime-inspect-deffile:

```bash
$ singularity inspect -d <container>
```



#### bids-matlab-compiler-runtime

```bash
$ singularity run <container>
```


In the above, the `<container>` directive will reference an actual container provided
by the module, for the version you have chosen to load. Note that although a container
might provide custom commands, every container exposes unique exec, shell, run, and
inspect aliases. For each of the above, you can export:

 - SINGULARITY_OPTS: to define custom options for singularity (e.g., --debug)
 - SINGULARITY_COMMAND_OPTS: to define custom options for the command (e.g., -b)

<br>
  
### Install

You can install shpc locally (for yourself or your user base) as follows:

```bash
$ git clone https://github.com/singularityhub/singularity-hpc
$ cd singularity-hpc
$ pip install -e .
```

Have any questions, or want to request a new module or version? [ask for help!](https://github.com/singularityhub/singularity-hpc/issues)