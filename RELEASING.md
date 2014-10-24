# gratipay-badge release runbook
`gratipay-badge` is a complex beast due to the image coming directly from the repository. As a result, it is necessary to document the steps to make sure nothing is missed.

In the future, we hope to make the release a 1 step process:

https://github.com/gratipay/gratipay-badge/issues/6

## Dependencies
Currently, we require you have `git` and `node>=0.8.0` installed.

## Releasing

1. Update `README.md` to point to latest semver for all URLs. This has been automated with `update-semver.sh`
    ```sh
    ./update-semver.sh {{semver}}
    ```

2. Add update notes to `CHANGELOG.md`

3. Stage changes
    ```sh
    git add -p
    ```

4. Commit to `git`, tag `git`, push commit, push `tags` via `foundry`.
    ```sh
    # If we haven't installed `foundry` and our plugins, do so
    if test -x node_modules/.bin/foundry; then
        npm install
    fi

    # Release via foundry
    ./node_modules/.bin/foundry release {{semver}}
    ```

    1. In the background, `foundry` is performing the following steps

    2. Commit changes with message "Release {{semver}}"
        ```sh
        git commit -m "Release {{semver}}"
        ```

    3. `git tag` with version
        ```sh
        git tag {{semver}}
        ```

    4. Publish `master` branch
        ```sh
        git push origin master
        ```

    5. Publish tag
        ```sh
        git push --tags
        ```

9. Overwrite variable minor semver branch (e.g. `2.0.0` -> `2.x.x`)
    ```sh
    git checkout -B {{variable-minor-semver}}
    ```

10. Publish branch
    ```sh
    git push origin {{variable-minor-semver}} --force
    ```

11. Overwrite variable patch semver branch (e.g. `2.0.0` -> `2.0.x`)
    ```sh
    git checkout -B {{variable-patch-semver}}
    ```

12. Publish branch
    ```sh
    git push origin {{variable-patch-semver}} --force
    ```

[`twolfson/foundry`]: https://github.com/twolfson/foundry
