.. _project-attribution:

`attribution <https://attribution.omnilib.dev>`_
--------------------------------------------------

.. raw:: html

    <a alt="attribution on PyPI" href="https://pypi.org/project/attribution">
    <img src="https://img.shields.io/pypi/v/attribution.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/attribution"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/attribution on GitHub">Star</a>

attribution provides a simple tool for automating a basic release workflow for Python
projects. At its core, it generates Markdown-formatted changelogs based on the version
tags in your repository, and can both fit into existing workflows, or automate the
entire release preparation process with a single command:

.. code-block:: shell-session

    $ attribution tag -m "Final release" 1.0.0

    $ git tag
    v0.1.0
    v1.0rc1
    v1.0.0

    $ head CHANGELOG.md
    project name
    ============

    v1.0
    ----

    Final release

    ```
    $ git shortlog -s v0.2...v1.0
        3 Ash
        2 Brock
    ```

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
