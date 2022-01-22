CREATE TABLE public.todos (
    todo_id serial PRIMARY KEY,
    todo_title text NOT NULL,
    todo_is_done BOOLEAN NOT NULL DEFAULT FALSE,
    todo_created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
alter publication supabase_realtime add table public.todos;
