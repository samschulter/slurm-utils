# SLURM utility functions


## Aliases in `slurmrc`

Put those into your `.bashrc` or `.zshrc` file

```bash
source $PATH_TO_SLURM_UTILS/slurmrc
```


## Scripts

Put this into your `PATH`, e.g., via your `.bashrc` or `.zshrc` file

```bash
export PATH="$PATH_TO_SLURM_UTILS/bin:$PATH"
```


## Other useful information

Show information of a node:
```bash
scontrol show node <server-name>
```

Show reservations:
```bash
scontrol show reservations
```
