create table if not exists estado(id text primary key, data jsonb);
alter table estado enable row level security;
drop policy if exists "leer estado" on estado;
drop policy if exists "crear estado" on estado;
drop policy if exists "editar estado" on estado;
create policy "leer estado" on estado for select to authenticated using (true);
create policy "crear estado" on estado for insert to authenticated with check (true);
create policy "editar estado" on estado for update to authenticated using (true) with check (true);
