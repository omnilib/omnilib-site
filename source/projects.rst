.. _projects:

Projects
========


.. _project-aioitertools:

`aioitertools <https://aioitertools.omnilib.dev>`_
--------------------------------------------------

.. raw:: html

    <a alt="aioitertools on PyPI" href="https://pypi.org/project/aioitertools">
    <img src="https://img.shields.io/pypi/v/aioitertools.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/aioitertools"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/aioitertools on GitHub">Star</a>

itertools and more for AsyncIO: aioitertools shadows the standard library
whenever possible to provide asynchronous version of the modules and functions
you already know. It’s fully compatible with standard iterators and async
iterators alike, giving you one unified, familiar interface for interacting
with iterable objects:

.. code-block:: python3

    from aioitertools import iter, next, map, zip

    something = iter(...)
    first_item = await next(something)

    async for item in iter(something):
        ...


    async def fetch(url):
        response = await aiohttp.request(...)
        return response.json

    async for value in map(fetch, MANY_URLS):
        ...


.. _project-aiomultiprocess:

`aiomultiprocess <https://aiomultiprocess.omnilib.dev>`_
--------------------------------------------------------

.. raw:: html

    <a alt="aioitertools on PyPI" href="https://pypi.org/project/aiomultiprocess">
    <img src="https://img.shields.io/pypi/v/aiomultiprocess.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/aiomultiprocess"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/aiomultiprocess on GitHub">Star</a>

On their own, AsyncIO and multiprocessing are useful, but limited: AsyncIO
still can't exceed the speed of GIL, and multiprocessing only works on one task
at a time. But together, they can fully realize their true potential.

aiomultiprocess presents a simple interface, while running a full AsyncIO event
loop on each child process, enabling levels of concurrency never before seen in
a Python application. Each child process can execute multiple coroutines at
once, limited only by the workload and number of cores available.

Gathering tens of thousands of network requests in seconds is as easy as:

.. code-block:: python3

    async with Pool() as pool:
        results = await pool.map(<coroutine>, <items>)


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