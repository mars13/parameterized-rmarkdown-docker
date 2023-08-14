# parameterized-rmarkdown-docker

Template for parameterized reports with Rmarkdown

## Pull image

Docker image is available at <https://hub.docker.com/r/mreixachs/rmarkdown-docker>

```         
docker pull mreixachs/rmarkdown-docker
```

For a specific version use `mreixachs/rmarkdown-docker:0.0.1`

## Docker run

```         
docker run -v ${PWD}:/wd mreixachs/rmarkdown-docker /wd/sample_data.tsv /wd/sample_data_report.html
```

-   `-v ${PWD}:/wd`: This command establishes a connection between the present working directory and a designated location called /wd within the Docker container. This arrangement enables interaction and modification of files between the container and the host directory.

-   `/wd/sample_data.tsv`: The first argument specifies the input file location, which should be under the same directory as output file.

-   `/wd/sample_data_report.html`: The second argument [OPTIONAL] specifies the output file where the report will be generated. Defaults to input file basename with the extension `_report.html`.

## Report

The parameterized report takes [sample_data.tsv](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/data/sample_data.tsv) which contains USArrest data from R datasets, and outputs a formatted table as in [sample_data_report.html](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/data/sample_data_report.html).

To adapt the report to different input files, change the contents of [parameterized_report.Rmd](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/parameterized_report.Rmd) and adapt [install_packages.R](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/install_packages.R), if needed.

### Styling

A custom `.css` is provided which can be found at [style.css](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/style.css).

To change the main theme color modify the `--theme-color` variable definition in:

```         
:root {
  --theme-color: #ee6c4d;
}
```

Footer contents from [footer.html](https://github.com/mars13/parameterized-rmarkdown-docker/blob/main/footer.html) can also be adjusted.

