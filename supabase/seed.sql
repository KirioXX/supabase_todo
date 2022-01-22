CREATE TABLE public.todo_lists (
    todo_list_id serial PRIMARY KEY,
    todo_list_title text NOT NULL,
    todo_list_created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE public.todos (
    todo_id serial PRIMARY KEY,
    todo_title text NOT NULL,
    todo_is_done BOOLEAN NOT NULL DEFAULT FALSE,
    todo_created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    todo_list_id int not null
    references todo_lists
      on update cascade
      on delete cascade
);
alter publication supabase_realtime add table public.todos;


INSERT INTO todo_lists (todo_list_title)
VALUES ('Shopping'),
('Home'),
('Work');

INSERT INTO "public"."todos" ("todo_title", "todo_list_id") VALUES
('Eggs', 1),
('Milk', 1),
('Wash clothes', 2),
('Vacuum', 2);
