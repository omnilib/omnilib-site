.. _project-ufmt:

`µfmt <https://ufmt.omnilib.dev>`_
----------------------------------

.. raw:: html

    <a alt="ufmt on PyPI" href="https://pypi.org/project/ufmt">
    <img src="https://img.shields.io/pypi/v/ufmt.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/ufmt"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/ufmt on GitHub">Star</a>

µfmt is a safe, atomic code formatter for Python built on top of
`black <https://black.rtfd.io>`_ and `µsort <https://usort.rtfd.io>`_.
µfmt formats files in-memory, first with µsort and then with black, before writing any
changes back to disk. This enables a combined, atomic step in CI/CD workflows for
checking or formatting files, without any chance of conflict or intermediate changes
between the import sorter and the code formatter.

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
