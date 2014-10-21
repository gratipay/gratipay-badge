# gratipay-badge release runbook
`gratipay-badge` is a complex beast due to the image coming directly from the repository. As a result, it is necessary to document the steps to make sure nothing is missed.

In the future, we hope to leverage tools like `twolfson/foundry` to make the release a 1 step process.

1. Update `README.md` to point to latest semver for all URLs. This has been automated with `update-semver.sh`
    ```sh
    ./update-semver.sh {{semver}}
    ```

2. Add update notes to `CHANGELOG.md`
3. Stage changes
    ```sh
    git add -p
    ```

4. Commit changes with message "Release {{semver}}"
    ```sh
    git commit -m "Release {{semver}}"
    ```

5. `git tag` with version
    ```sh
    git tag {{semver}}
    ```

6. Publish `master` branch
    ```sh
    git push origin master
    ```

7. Publish tag
    ```sh
    git push --tags
    ```

8. @twolfson prefers to use [`twolfson/foundry`][] for these past 4 steps

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
