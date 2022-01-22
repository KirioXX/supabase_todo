CREATE TABLE public.todo_lists (
    todo_list_id serial PRIMARY KEY,
    todo_list_title text NOT NULL,
    todo_list_is_shared BOOLEAN not null DEFAULT FALSE,
    todo_list_created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id UUID REFERENCES auth.users
);
ALTER TABLE public.todo_lists ENABLE ROW LEVEL SECURITY;

CREATE POLICY "User can see shared todo lists." ON public.todo_lists FOR
SELECT USING (todo_list_is_shared = true);

CREATE POLICY "User can see his own todo lists." ON public.todo_lists FOR
SELECT USING (auth.uid() = user_id);

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
ALTER TABLE public.todos ENABLE ROW LEVEL SECURITY;

CREATE POLICY "User can see todos of shared todo lists." ON public.todos FOR
SELECT USING (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.todo_list_is_shared = true)
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

CREATE POLICY "User can create todos for shared todo lists." ON public.todos FOR
INSERT WITH CHECK (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.todo_list_is_shared = true)
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

CREATE POLICY "User can update todos for shared todo lists." ON public.todos FOR
UPDATE USING (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.todo_list_is_shared = true)
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  )
 WITH CHECK (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.todo_list_is_shared = true)
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

CREATE POLICY "User can see todos of his own todo lists." ON public.todos FOR
SELECT USING (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.user_id = auth.uid())
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

CREATE POLICY "User can create todos for his own todo lists." ON public.todos FOR
INSERT WITH CHECK (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.user_id = auth.uid())
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

CREATE POLICY "User can update todos for his own todo lists." ON public.todos FOR
UPDATE USING (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.user_id = auth.uid())
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  ) WITH CHECK (
    EXISTS (
      SELECT 1
      FROM todo_lists tl
      WHERE (
          (tl.user_id = auth.uid())
          AND (tl.todo_list_id = todos.todo_list_id)
        )
    )
  );

INSERT INTO todo_lists (todo_list_title, todo_list_is_shared)
VALUES ('Shopping', true),
('Home', FALSE),
('Work', FALSE);

INSERT INTO "public"."todos" ("todo_title", "todo_list_id") VALUES
('Eggs', 1),
('Milk', 1),
('Wash clothes', 2),
('Vacuum', 2),
('Bread', 1),
('Pasta', 1),
('Cheese', 1),
('Tomatos', 1),
('Juice', 1);
