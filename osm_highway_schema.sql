-- Table: public.planet_osm_line

-- DROP TABLE IF EXISTS public.planet_osm_line;

CREATE TABLE IF NOT EXISTS public.planet_osm_line
(
    osm_id bigint,
    access text COLLATE pg_catalog."default",
    "addr:housename" text COLLATE pg_catalog."default",
    "addr:housenumber" text COLLATE pg_catalog."default",
    "addr:interpolation" text COLLATE pg_catalog."default",
    admin_level text COLLATE pg_catalog."default",
    aerialway text COLLATE pg_catalog."default",
    aeroway text COLLATE pg_catalog."default",
    amenity text COLLATE pg_catalog."default",
    area text COLLATE pg_catalog."default",
    barrier text COLLATE pg_catalog."default",
    bicycle text COLLATE pg_catalog."default",
    brand text COLLATE pg_catalog."default",
    bridge text COLLATE pg_catalog."default",
    boundary text COLLATE pg_catalog."default",
    building text COLLATE pg_catalog."default",
    construction text COLLATE pg_catalog."default",
    covered text COLLATE pg_catalog."default",
    culvert text COLLATE pg_catalog."default",
    cutting text COLLATE pg_catalog."default",
    denomination text COLLATE pg_catalog."default",
    disused text COLLATE pg_catalog."default",
    embankment text COLLATE pg_catalog."default",
    foot text COLLATE pg_catalog."default",
    "generator:source" text COLLATE pg_catalog."default",
    harbour text COLLATE pg_catalog."default",
    highway text COLLATE pg_catalog."default",
    historic text COLLATE pg_catalog."default",
    horse text COLLATE pg_catalog."default",
    intermittent text COLLATE pg_catalog."default",
    junction text COLLATE pg_catalog."default",
    landuse text COLLATE pg_catalog."default",
    layer text COLLATE pg_catalog."default",
    leisure text COLLATE pg_catalog."default",
    lock text COLLATE pg_catalog."default",
    man_made text COLLATE pg_catalog."default",
    military text COLLATE pg_catalog."default",
    motorcar text COLLATE pg_catalog."default",
    name text COLLATE pg_catalog."default",
    "natural" text COLLATE pg_catalog."default",
    office text COLLATE pg_catalog."default",
    oneway text COLLATE pg_catalog."default",
    operator text COLLATE pg_catalog."default",
    place text COLLATE pg_catalog."default",
    population text COLLATE pg_catalog."default",
    power text COLLATE pg_catalog."default",
    power_source text COLLATE pg_catalog."default",
    public_transport text COLLATE pg_catalog."default",
    railway text COLLATE pg_catalog."default",
    ref text COLLATE pg_catalog."default",
    religion text COLLATE pg_catalog."default",
    route text COLLATE pg_catalog."default",
    service text COLLATE pg_catalog."default",
    shop text COLLATE pg_catalog."default",
    sport text COLLATE pg_catalog."default",
    surface text COLLATE pg_catalog."default",
    toll text COLLATE pg_catalog."default",
    tourism text COLLATE pg_catalog."default",
    "tower:type" text COLLATE pg_catalog."default",
    tracktype text COLLATE pg_catalog."default",
    tunnel text COLLATE pg_catalog."default",
    water text COLLATE pg_catalog."default",
    waterway text COLLATE pg_catalog."default",
    wetland text COLLATE pg_catalog."default",
    width text COLLATE pg_catalog."default",
    wood text COLLATE pg_catalog."default",
    z_order integer,
    way_area real,
    way geometry(LineString,3857)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.planet_osm_line
    OWNER to postgres;
-- Index: planet_osm_line_way_idx

-- DROP INDEX IF EXISTS public.planet_osm_line_way_idx;

CREATE INDEX IF NOT EXISTS planet_osm_line_way_idx
    ON public.planet_osm_line USING gist
    (way)
    WITH (fillfactor=100)
    TABLESPACE pg_default;