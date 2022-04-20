.. _project-trailrunner:

`trailrunner <https://trailrunner.omnilib.dev>`_
------------------------------------------------

.. raw:: html

    <a alt="trailrunner on PyPI" href="https://pypi.org/project/trailrunner">
    <img src="https://img.shields.io/pypi/v/trailrunner.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/trailrunner"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/trailrunner on GitHub">Star</a>

trailrunner is a simple library for walking paths on the filesystem, and executing
functions for each file found. trailrunner obeys project level `.gitignore` files,
and runs functions on a process pool for increased performance. trailrunner is designed
for use by linting, formatting, and other developer tools that need to find and operate
on all files in project in a predictable fashion with a minimal API:

.. code-block:: pycon

    >>> from trailrunner import walk
    >>> sorted(walk(Path("trailrunner")))
    [
        PosixPath('trailrunner/__init__.py'),
        PosixPath('trailrunner/__version__.py'),
        PosixPath('trailrunner/core.py'),
        PosixPath('trailrunner/tests/__init__.py'),
        PosixPath('trailrunner/tests/__main__.py'),
        PosixPath('trailrunner/tests/core.py'),
    ]

    >>> from trailrunner import run
    >>> paths = [Path('trailrunner/core.py'), Path('trailrunner/tests/core.py')]
    >>> run(paths, str)
    {
        PosixPath('trailrunner/core.py'): 'trailrunner/core.py',
        PosixPath('trailrunner/tests/core.py'): 'trailrunner/tests/core.py',
    }

    >>> from trailrunner import walk_and_run
    >>> walk_and_run([Path('trailrunner/tests')], str)
    {
        PosixPath('trailrunner/tests/__init__.py'): 'trailrunner/tests/__init__.py',
        PosixPath('trailrunner/tests/__main__.py'): 'trailrunner/tests/__main__.py',
        PosixPath('trailrunner/tests/core.py'): 'trailrunner/tests/core.py',
    }

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
