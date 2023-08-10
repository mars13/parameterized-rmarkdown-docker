# parameterized-rmarkdown-docker

Template for parameterized reports with Rmarkdown

## Pull image

Docker image is available at <https://hub.docker.com/r/mreixachs/rmarkdown-docker>

```         
docker pull mreixachs/rmarkdown-docker:[VERSION]
```

## Docker run

```         
docker run -v ${PWD}:/wd rmarkdown-docker /wd/sample_data.tsv /wd/sample_data_report.html
```


- `-v ${PWD}:/wd`: This command establishes a connection between the present working directory and a designated location called /wd within the Docker container. This arrangement enables interaction and modification of files between the container and the host directory.

- `/wd/sample_data.tsv`: The first argument specifies the input file location, which should be under the same directory as output file.

- `/wd/sample_data_report.html`: The second argument [OPTIONAL] specifies the output file where the report will be generated. Defaults to input file basename with the extension `_report.html`.
