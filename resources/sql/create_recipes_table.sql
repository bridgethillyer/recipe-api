CREATE ROLE api LOGIN
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

CREATE SEQUENCE recipes_id_seq;

CREATE TABLE recipes
(
  id integer NOT NULL DEFAULT nextval('recipes_id_seq'::regclass),
  name text,
  url text,
  source text,
  "created-at" timestamp with time zone
);

ALTER TABLE recipes
  OWNER TO api;

