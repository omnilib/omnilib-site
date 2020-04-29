.. _projects:

Projects
========


.. _project-aiosqlite:

`aiosqlite <https://aiosqlite.omnilib.dev>`_
--------------------------------------------

.. raw:: html

    <a alt="aiosqlite on PyPI" href="https://pypi.org/project/aiosqlite">
    <img src="https://img.shields.io/pypi/v/aiosqlite.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/aiosqlite"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/aiosqlite on GitHub">Star</a>

Sqlite for AsyncIO: aiosqlite provides a friendly, async interface to sqlite
databases, replicating the standard API while adapting and adding features
to look and feel natural within modern, async codebases:

.. code-block:: python3

    async with aiosqlite.connect(...) as db:
        await db.execute("INSERT INTO some_table ...")
        await db.commit()

        async with db.execute("SELECT * FROM some_table") as cursor:
            async for row in cursor:
                ...


.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>