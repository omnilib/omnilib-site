.. _project-stdlibs:

`stdlibs <https://stdlibs.omnilib.dev>`_
----------------------------------------

.. raw:: html

    <a alt="stdlibs on PyPI" href="https://pypi.org/project/stdlibs">
    <img src="https://img.shields.io/pypi/v/stdlibs.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/stdlibs"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/stdlibs on GitHub">Star</a>

stdlibs provides a static listing of all known modules in the Python standard
library, with separate lists available for each major release dating back to Python 2.3.
It also includes combined lists of all module names that were ever available in any
3.x release, any 2.x release, or both:

.. code-block:: pycon

    >>> from stdlibs import module_names
    >>> print("os" in module_names)
    True
    >>> print("peg_parser" in module_names)  # 3.9+
    True

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
