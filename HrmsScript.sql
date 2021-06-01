-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE public.employers
(
    company_name character varying(25) NOT NULL,
    phone_number character varying(10) NOT NULL,
    website character varying(25) NOT NULL,
    user_id integer NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.job_positions
(
    id integer NOT NULL,
    position_name character varying(255),
    PRIMARY KEY (id)
);

CREATE TABLE public.job_seekers
(
    birth_year character varying(255) NOT NULL,
    first_name character varying(25) NOT NULL,
    identity_number character varying(11) NOT NULL,
    last_name character varying(25) NOT NULL,
    user_id integer NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.system_personnels
(
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    user_id integer NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE public.users
(
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public.employers
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.job_seekers
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;


ALTER TABLE public.system_personnels
    ADD FOREIGN KEY (user_id)
    REFERENCES public.users (id)
    NOT VALID;

END;
