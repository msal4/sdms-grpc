-- name: AddUser :one
INSERT INTO users (
    role,
    name,
    image
) VALUES (
    $1, 
    $2,
    $3
)
RETURNING *;

-- name: DeleteUser :one
DELETE FROM users
WHERE id = $1
RETURNING *;
