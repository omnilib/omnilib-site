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

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
