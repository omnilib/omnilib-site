.. _project-aql:

`aql <https://aql.omnilib.dev>`_
--------------------------------

.. raw:: html

    <a alt="aql on PyPI" href="https://pypi.org/project/aql">
    <img src="https://img.shields.io/pypi/v/aql.svg"/></a>
    <a class="github-button" href="https://github.com/omnilib/aql"
    data-size="small" data-show-count="true"
    aria-label="Star omnilib/aql on GitHub">Star</a>

aql is a simple, modern, and composable query builder, with support for asynchronous
execution of queries against multiple database backends using a unified API.
aql uses modern, type annotated data structures for both table definitions and queries:

.. code-block:: python3

    from aql import table, MysqlEngine

    @table
    class Contact:
        id: int
        name: str
        email: str

    query = (
        Contact.select()
        .where(Contact.email.like("%@gmail.com"))
        .order_by(Contact.name)
        .limit(5)
    )

    sql, params = MysqlEngine.prepare(query)
    # select * from `Contact` where `email` like ? order by `name` asc limit 5

.. EOF

.. raw:: html

    <script async defer src="https://buttons.github.io/buttons.js"></script>
