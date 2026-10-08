alter table turnos add column if not exists fin bigint;
create policy "actualizar mi turno" on turnos for update to authenticated using (usuario = mi_usuario()) with check (usuario = mi_usuario());
