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

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>