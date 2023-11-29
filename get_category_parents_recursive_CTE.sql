WITH RECURSIVE category_path (id, title, slug, parent_id) AS (
    SELECT id, title, slug, parent_id
    FROM categories
    WHERE id = 741
    UNION
    SELECT c.id, c.title, c.slug, c.parent_id
    FROM categories c
    JOIN category_path cp ON c.id = cp.parent_id
)
SELECT title, slug
FROM category_path
ORDER BY id;
