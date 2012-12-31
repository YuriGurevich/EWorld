--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO emerald_city_user;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO emerald_city_user;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Name: articles; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying(255),
    image_content_type character varying(255),
    image_file_size integer,
    image_updated_at timestamp without time zone,
    rendered_content text
);


ALTER TABLE public.articles OWNER TO emerald_city_user;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO emerald_city_user;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('articles_id_seq', 980190984, true);


--
-- Name: change_logs; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE change_logs (
    id integer NOT NULL,
    version integer NOT NULL,
    record_id integer,
    table_name character varying(60),
    attribute_name character varying(60),
    "user" character varying(20),
    action character varying(6),
    old_value text,
    new_value text,
    field_type character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    model_name character varying(255)
);


ALTER TABLE public.change_logs OWNER TO emerald_city_user;

--
-- Name: change_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE change_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_logs_id_seq OWNER TO emerald_city_user;

--
-- Name: change_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE change_logs_id_seq OWNED BY change_logs.id;


--
-- Name: change_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('change_logs_id_seq', 531, true);


--
-- Name: cities_moderators; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE cities_moderators (
    moderator_id integer,
    city_id integer
);


ALTER TABLE public.cities_moderators OWNER TO emerald_city_user;

--
-- Name: cities_tickets; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE cities_tickets (
    ticket_id integer,
    city_id integer
);


ALTER TABLE public.cities_tickets OWNER TO emerald_city_user;

--
-- Name: contact_messages; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE contact_messages (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    subject character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.contact_messages OWNER TO emerald_city_user;

--
-- Name: contact_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE contact_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_messages_id_seq OWNER TO emerald_city_user;

--
-- Name: contact_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE contact_messages_id_seq OWNED BY contact_messages.id;


--
-- Name: contact_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('contact_messages_id_seq', 5, true);


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE delayed_jobs (
    id integer NOT NULL,
    priority integer DEFAULT 0,
    attempts integer DEFAULT 0,
    handler text,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying(255),
    queue character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.delayed_jobs OWNER TO emerald_city_user;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO emerald_city_user;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE delayed_jobs_id_seq OWNED BY delayed_jobs.id;


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('delayed_jobs_id_seq', 813, true);


--
-- Name: documents; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE documents (
    id integer NOT NULL,
    name character varying(255),
    attach_file_name character varying(255),
    attach_content_type character varying(255),
    attach_file_size integer,
    attach_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description text,
    "position" integer
);


ALTER TABLE public.documents OWNER TO emerald_city_user;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documents_id_seq OWNER TO emerald_city_user;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE documents_id_seq OWNED BY documents.id;


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('documents_id_seq', 11, true);


--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE email_templates (
    id integer NOT NULL,
    name character varying(255),
    subject character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.email_templates OWNER TO emerald_city_user;

--
-- Name: email_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE email_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_templates_id_seq OWNER TO emerald_city_user;

--
-- Name: email_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE email_templates_id_seq OWNED BY email_templates.id;


--
-- Name: email_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('email_templates_id_seq', 6, true);


--
-- Name: hotel_bank_attributes; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_bank_attributes (
    id integer NOT NULL,
    hotel_id integer,
    name character varying(255),
    bik character varying(255),
    corr_account character varying(255),
    current_account character varying(255)
);


ALTER TABLE public.hotel_bank_attributes OWNER TO emerald_city_user;

--
-- Name: hotel_bank_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_bank_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_bank_attributes_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_bank_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_bank_attributes_id_seq OWNED BY hotel_bank_attributes.id;


--
-- Name: hotel_bank_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_bank_attributes_id_seq', 83, true);


--
-- Name: hotel_bookings; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_bookings (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_bookings OWNER TO emerald_city_user;

--
-- Name: hotel_bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_bookings_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_bookings_id_seq OWNED BY hotel_bookings.id;


--
-- Name: hotel_bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_bookings_id_seq', 2, true);


--
-- Name: hotel_cities; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_cities (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer
);


ALTER TABLE public.hotel_cities OWNER TO emerald_city_user;

--
-- Name: hotel_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_cities_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_cities_id_seq OWNED BY hotel_cities.id;


--
-- Name: hotel_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_cities_id_seq', 40, true);


--
-- Name: hotel_filter_items; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_filter_items (
    id integer NOT NULL,
    filter_id integer,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_filter_items OWNER TO emerald_city_user;

--
-- Name: hotel_filter_items_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_filter_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_filter_items_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_filter_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_filter_items_id_seq OWNED BY hotel_filter_items.id;


--
-- Name: hotel_filter_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_filter_items_id_seq', 22, true);


--
-- Name: hotel_filter_values; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_filter_values (
    id integer NOT NULL,
    filter_id integer,
    hotel_id integer,
    item_id integer
);


ALTER TABLE public.hotel_filter_values OWNER TO emerald_city_user;

--
-- Name: hotel_filter_values_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_filter_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_filter_values_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_filter_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_filter_values_id_seq OWNED BY hotel_filter_values.id;


--
-- Name: hotel_filter_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_filter_values_id_seq', 2461, true);


--
-- Name: hotel_filters; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_filters (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer,
    show_in_search boolean,
    include_to_print boolean DEFAULT false
);


ALTER TABLE public.hotel_filters OWNER TO emerald_city_user;

--
-- Name: hotel_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_filters_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_filters_id_seq OWNED BY hotel_filters.id;


--
-- Name: hotel_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_filters_id_seq', 4, true);


--
-- Name: hotel_images; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_images (
    id integer NOT NULL,
    hotel_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    description character varying(255),
    attach_file_name character varying(255),
    attach_content_type character varying(255),
    attach_file_size integer,
    attach_updated_at timestamp without time zone
);


ALTER TABLE public.hotel_images OWNER TO emerald_city_user;

--
-- Name: hotel_images_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_images_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_images_id_seq OWNED BY hotel_images.id;


--
-- Name: hotel_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_images_id_seq', 658, true);


--
-- Name: hotel_reviews; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_reviews (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    ip character varying(255),
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    published boolean DEFAULT false,
    hotel_id integer,
    character_id integer
);


ALTER TABLE public.hotel_reviews OWNER TO emerald_city_user;

--
-- Name: hotel_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_reviews_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_reviews_id_seq OWNED BY hotel_reviews.id;


--
-- Name: hotel_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_reviews_id_seq', 1018350834, true);


--
-- Name: hotel_room_field_values; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_field_values (
    id integer NOT NULL,
    field_id integer,
    room_id integer,
    value character varying(255)
);


ALTER TABLE public.hotel_room_field_values OWNER TO emerald_city_user;

--
-- Name: hotel_room_field_values_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_field_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_field_values_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_field_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_field_values_id_seq OWNED BY hotel_room_field_values.id;


--
-- Name: hotel_room_field_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_field_values_id_seq', 5501, true);


--
-- Name: hotel_room_fields; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_fields (
    id integer NOT NULL,
    name character varying(255),
    default_value character varying(255),
    only_signed boolean,
    multiline boolean,
    include_to_print boolean,
    "position" integer
);


ALTER TABLE public.hotel_room_fields OWNER TO emerald_city_user;

--
-- Name: hotel_room_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_fields_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_fields_id_seq OWNED BY hotel_room_fields.id;


--
-- Name: hotel_room_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_fields_id_seq', 15, true);


--
-- Name: hotel_room_list_items; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_list_items (
    id integer NOT NULL,
    list_id integer,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_room_list_items OWNER TO emerald_city_user;

--
-- Name: hotel_room_list_items_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_list_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_list_items_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_list_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_list_items_id_seq OWNED BY hotel_room_list_items.id;


--
-- Name: hotel_room_list_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_list_items_id_seq', 8, true);


--
-- Name: hotel_room_list_values; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_list_values (
    id integer NOT NULL,
    room_id integer,
    list_id integer,
    item_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_room_list_values OWNER TO emerald_city_user;

--
-- Name: hotel_room_list_values_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_list_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_list_values_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_list_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_list_values_id_seq OWNED BY hotel_room_list_values.id;


--
-- Name: hotel_room_list_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_list_values_id_seq', 62, true);


--
-- Name: hotel_room_lists; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_lists (
    id integer NOT NULL,
    name character varying(255),
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_room_lists OWNER TO emerald_city_user;

--
-- Name: hotel_room_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_lists_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_lists_id_seq OWNED BY hotel_room_lists.id;


--
-- Name: hotel_room_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_lists_id_seq', 2, true);


--
-- Name: hotel_room_photos; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_photos (
    id integer NOT NULL,
    room_id integer,
    attach_file_name character varying(255),
    attach_content_type character varying(255),
    attach_file_size integer,
    attach_updated_at timestamp without time zone,
    description character varying(255)
);


ALTER TABLE public.hotel_room_photos OWNER TO emerald_city_user;

--
-- Name: hotel_room_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_photos_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_photos_id_seq OWNED BY hotel_room_photos.id;


--
-- Name: hotel_room_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_photos_id_seq', 1128, true);


--
-- Name: hotel_room_types; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_room_types (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.hotel_room_types OWNER TO emerald_city_user;

--
-- Name: hotel_room_types_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_room_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_room_types_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_room_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_room_types_id_seq OWNED BY hotel_room_types.id;


--
-- Name: hotel_room_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_room_types_id_seq', 4, true);


--
-- Name: hotel_rooms; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_rooms (
    id integer NOT NULL,
    hotel_id integer,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    all_count integer,
    area character varying(255),
    price_summer_from integer,
    price_summer_to integer,
    price_high_season_from integer,
    price_high_season_to integer,
    price_winter_from integer,
    price_winter_to integer,
    type_id integer,
    places_count integer,
    additional_places_count integer
);


ALTER TABLE public.hotel_rooms OWNER TO emerald_city_user;

--
-- Name: hotel_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_rooms_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_rooms_id_seq OWNED BY hotel_rooms.id;


--
-- Name: hotel_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_rooms_id_seq', 980191419, true);


--
-- Name: hotel_service_values; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_service_values (
    id integer NOT NULL,
    service_id integer,
    hotel_id integer,
    value character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.hotel_service_values OWNER TO emerald_city_user;

--
-- Name: hotel_service_values_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_service_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_service_values_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_service_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_service_values_id_seq OWNED BY hotel_service_values.id;


--
-- Name: hotel_service_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_service_values_id_seq', 4860, true);


--
-- Name: hotel_services; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_services (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "default" boolean,
    default_value character varying(255),
    only_signed boolean,
    multiline boolean,
    "position" integer,
    include_to_print boolean,
    filter_item_id integer
);


ALTER TABLE public.hotel_services OWNER TO emerald_city_user;

--
-- Name: hotel_services_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_services_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_services_id_seq OWNED BY hotel_services.id;


--
-- Name: hotel_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_services_id_seq', 13, true);


--
-- Name: hotel_special_offers; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_special_offers (
    id integer NOT NULL,
    hotel_id integer,
    "from" date,
    "to" date,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title character varying(255)
);


ALTER TABLE public.hotel_special_offers OWNER TO emerald_city_user;

--
-- Name: hotel_special_offers_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_special_offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_special_offers_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_special_offers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_special_offers_id_seq OWNED BY hotel_special_offers.id;


--
-- Name: hotel_special_offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_special_offers_id_seq', 50, true);


--
-- Name: hotel_streets; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_streets (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.hotel_streets OWNER TO emerald_city_user;

--
-- Name: hotel_streets_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_streets_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_streets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_streets_id_seq OWNED BY hotel_streets.id;


--
-- Name: hotel_streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_streets_id_seq', 146, true);


--
-- Name: hotel_types; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotel_types (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.hotel_types OWNER TO emerald_city_user;

--
-- Name: hotel_types_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotel_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_types_id_seq OWNER TO emerald_city_user;

--
-- Name: hotel_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotel_types_id_seq OWNED BY hotel_types.id;


--
-- Name: hotel_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotel_types_id_seq', 1, false);


--
-- Name: hotels; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotels (
    id integer NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    reviews_count integer DEFAULT 0,
    city_id integer,
    phone character varying(255),
    email character varying(255),
    site character varying(255),
    route_description text,
    iin character varying(255),
    kpp character varying(255),
    ogrn character varying(255),
    legal_address character varying(255),
    post_address character varying(255),
    street_number character varying(255),
    way_file_name character varying(255),
    way_content_type character varying(255),
    way_file_size integer,
    way_updated_at timestamp without time zone,
    booking_id integer,
    booking_description character varying(255),
    published boolean,
    street_id integer,
    min_age_children integer DEFAULT 0,
    adjacent_territory text,
    min_price_winter integer DEFAULT 0,
    min_price_summer integer DEFAULT 0,
    checkout_time character varying(255),
    documents character varying(255),
    agency_commission integer DEFAULT 0,
    rooms_count integer DEFAULT 0,
    images_count integer DEFAULT 0,
    all_rooms_count integer DEFAULT 0,
    special_offers_count integer DEFAULT 0,
    map_latitude double precision,
    map_longitude double precision,
    street character varying(255)
);


ALTER TABLE public.hotels OWNER TO emerald_city_user;

--
-- Name: hotels_bank_attributes; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE hotels_bank_attributes (
    id integer NOT NULL,
    hotel_id integer,
    name character varying(255),
    bik character varying(255),
    corr_account character varying(255),
    current_account character varying(255)
);


ALTER TABLE public.hotels_bank_attributes OWNER TO emerald_city_user;

--
-- Name: hotels_bank_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotels_bank_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotels_bank_attributes_id_seq OWNER TO emerald_city_user;

--
-- Name: hotels_bank_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotels_bank_attributes_id_seq OWNED BY hotels_bank_attributes.id;


--
-- Name: hotels_bank_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotels_bank_attributes_id_seq', 1, false);


--
-- Name: hotels_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotels_id_seq OWNER TO emerald_city_user;

--
-- Name: hotels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE hotels_id_seq OWNED BY hotels.id;


--
-- Name: hotels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('hotels_id_seq', 1228, true);


--
-- Name: mercury_images; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE mercury_images (
    id integer NOT NULL,
    image_file_name character varying(255),
    image_content_type character varying(255),
    image_file_size integer,
    image_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.mercury_images OWNER TO emerald_city_user;

--
-- Name: mercury_images_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE mercury_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mercury_images_id_seq OWNER TO emerald_city_user;

--
-- Name: mercury_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE mercury_images_id_seq OWNED BY mercury_images.id;


--
-- Name: mercury_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('mercury_images_id_seq', 11, true);


--
-- Name: messages; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE messages (
    id integer NOT NULL,
    user_id integer,
    ticket_id integer,
    text text,
    edited boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO emerald_city_user;

--
-- Name: messages_have_read_users; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE messages_have_read_users (
    message_id integer,
    user_id integer
);


ALTER TABLE public.messages_have_read_users OWNER TO emerald_city_user;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO emerald_city_user;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('messages_id_seq', 309, true);


--
-- Name: messages_users; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE messages_users (
    id integer NOT NULL,
    user_id integer,
    message_id integer
);


ALTER TABLE public.messages_users OWNER TO emerald_city_user;

--
-- Name: messages_users_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE messages_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_users_id_seq OWNER TO emerald_city_user;

--
-- Name: messages_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE messages_users_id_seq OWNED BY messages_users.id;


--
-- Name: messages_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('messages_users_id_seq', 1, false);


--
-- Name: pages; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE pages (
    id integer NOT NULL,
    title character varying(255),
    alias character varying(255),
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_file_name character varying(255),
    image_content_type character varying(255),
    image_file_size integer,
    image_updated_at timestamp without time zone
);


ALTER TABLE public.pages OWNER TO emerald_city_user;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO emerald_city_user;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE pages_id_seq OWNED BY pages.id;


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('pages_id_seq', 980190963, false);


--
-- Name: profile_notes; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE profile_notes (
    id integer NOT NULL,
    profile_id integer,
    user_id integer,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.profile_notes OWNER TO emerald_city_user;

--
-- Name: profile_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE profile_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_notes_id_seq OWNER TO emerald_city_user;

--
-- Name: profile_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE profile_notes_id_seq OWNED BY profile_notes.id;


--
-- Name: profile_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('profile_notes_id_seq', 1, false);


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE profiles (
    id integer NOT NULL,
    name character varying(255),
    phones character varying(255),
    skype character varying(255),
    icq character varying(255),
    company_name character varying(255),
    address character varying(255),
    agreement character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    description text,
    logo_file_name character varying(255),
    logo_content_type character varying(255),
    logo_file_size integer,
    logo_updated_at timestamp without time zone,
    notified boolean DEFAULT true,
    city character varying(255)
);


ALTER TABLE public.profiles OWNER TO emerald_city_user;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO emerald_city_user;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE profiles_id_seq OWNED BY profiles.id;


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('profiles_id_seq', 58, true);


--
-- Name: rooms_tickets; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE rooms_tickets (
    ticket_id integer,
    room_id integer
);


ALTER TABLE public.rooms_tickets OWNER TO emerald_city_user;

--
-- Name: rooms_users; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE rooms_users (
    user_id integer,
    room_id integer
);


ALTER TABLE public.rooms_users OWNER TO emerald_city_user;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO emerald_city_user;

--
-- Name: simple_captcha_data; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE simple_captcha_data (
    id integer NOT NULL,
    key character varying(40),
    value character varying(6),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.simple_captcha_data OWNER TO emerald_city_user;

--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE simple_captcha_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.simple_captcha_data_id_seq OWNER TO emerald_city_user;

--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE simple_captcha_data_id_seq OWNED BY simple_captcha_data.id;


--
-- Name: simple_captcha_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('simple_captcha_data_id_seq', 647, true);


--
-- Name: tickets; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE tickets (
    id integer NOT NULL,
    agency_id integer,
    moderator_id integer,
    message_id integer,
    closed boolean,
    messages_count integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin_new_messages_count integer DEFAULT 0,
    agency_new_messages_count integer DEFAULT 0,
    last_message_created_at timestamp without time zone,
    company_name character varying(255),
    closer_id integer
);


ALTER TABLE public.tickets OWNER TO emerald_city_user;

--
-- Name: tickets_hotel_cities; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE tickets_hotel_cities (
    ticket_id integer,
    city_id integer
);


ALTER TABLE public.tickets_hotel_cities OWNER TO emerald_city_user;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO emerald_city_user;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE tickets_id_seq OWNED BY tickets.id;


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('tickets_id_seq', 162, true);


--
-- Name: user_admin_profiles; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE user_admin_profiles (
    id integer NOT NULL,
    name character varying(255),
    phone character varying(255),
    fax character varying(255),
    skype character varying(255),
    contract_number character varying(255),
    admin_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_admin_profiles OWNER TO emerald_city_user;

--
-- Name: user_admin_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE user_admin_profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_admin_profiles_id_seq OWNER TO emerald_city_user;

--
-- Name: user_admin_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE user_admin_profiles_id_seq OWNED BY user_admin_profiles.id;


--
-- Name: user_admin_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('user_admin_profiles_id_seq', 1, false);


--
-- Name: users; Type: TABLE; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    password_salt character varying(255),
    failed_attempts integer DEFAULT 0,
    unlock_token character varying(255),
    locked_at timestamp without time zone,
    role character varying(255),
    type character varying(255),
    is_partner boolean,
    new_messages_count integer,
    save_hotel_search_query boolean DEFAULT true,
    hotel_search_query text DEFAULT ''::text
);


ALTER TABLE public.users OWNER TO emerald_city_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: emerald_city_user
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO emerald_city_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emerald_city_user
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emerald_city_user
--

SELECT pg_catalog.setval('users_id_seq', 52, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY change_logs ALTER COLUMN id SET DEFAULT nextval('change_logs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY contact_messages ALTER COLUMN id SET DEFAULT nextval('contact_messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY delayed_jobs ALTER COLUMN id SET DEFAULT nextval('delayed_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY documents ALTER COLUMN id SET DEFAULT nextval('documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY email_templates ALTER COLUMN id SET DEFAULT nextval('email_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_bank_attributes ALTER COLUMN id SET DEFAULT nextval('hotel_bank_attributes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_bookings ALTER COLUMN id SET DEFAULT nextval('hotel_bookings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_cities ALTER COLUMN id SET DEFAULT nextval('hotel_cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_filter_items ALTER COLUMN id SET DEFAULT nextval('hotel_filter_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_filter_values ALTER COLUMN id SET DEFAULT nextval('hotel_filter_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_filters ALTER COLUMN id SET DEFAULT nextval('hotel_filters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_images ALTER COLUMN id SET DEFAULT nextval('hotel_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_reviews ALTER COLUMN id SET DEFAULT nextval('hotel_reviews_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_field_values ALTER COLUMN id SET DEFAULT nextval('hotel_room_field_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_fields ALTER COLUMN id SET DEFAULT nextval('hotel_room_fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_list_items ALTER COLUMN id SET DEFAULT nextval('hotel_room_list_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_list_values ALTER COLUMN id SET DEFAULT nextval('hotel_room_list_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_lists ALTER COLUMN id SET DEFAULT nextval('hotel_room_lists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_photos ALTER COLUMN id SET DEFAULT nextval('hotel_room_photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_room_types ALTER COLUMN id SET DEFAULT nextval('hotel_room_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_rooms ALTER COLUMN id SET DEFAULT nextval('hotel_rooms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_service_values ALTER COLUMN id SET DEFAULT nextval('hotel_service_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_services ALTER COLUMN id SET DEFAULT nextval('hotel_services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_special_offers ALTER COLUMN id SET DEFAULT nextval('hotel_special_offers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_streets ALTER COLUMN id SET DEFAULT nextval('hotel_streets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotel_types ALTER COLUMN id SET DEFAULT nextval('hotel_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotels ALTER COLUMN id SET DEFAULT nextval('hotels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY hotels_bank_attributes ALTER COLUMN id SET DEFAULT nextval('hotels_bank_attributes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY mercury_images ALTER COLUMN id SET DEFAULT nextval('mercury_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY messages_users ALTER COLUMN id SET DEFAULT nextval('messages_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY pages ALTER COLUMN id SET DEFAULT nextval('pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY profile_notes ALTER COLUMN id SET DEFAULT nextval('profile_notes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY profiles ALTER COLUMN id SET DEFAULT nextval('profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY simple_captcha_data ALTER COLUMN id SET DEFAULT nextval('simple_captcha_data_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY tickets ALTER COLUMN id SET DEFAULT nextval('tickets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY user_admin_profiles ALTER COLUMN id SET DEFAULT nextval('user_admin_profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: emerald_city_user
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY articles (id, title, description, content, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at, rendered_content) FROM stdin;
980190982	Начало!!!!!	Запущен в опытную экслуатацию электронный каталог туристического оператора "Изумрудный город"	<p>В настоящее время каталог содержит более сотни объектов различного уровня комфорта.</p>	2012-09-08 08:15:16.927255	2012-09-08 08:15:16.927255	1B7W9227.jpg	image/jpeg	29517	2012-09-08 08:15:16.341541	\N
980190983	Итоги сезона 2012	Закончилось лето, вместе с ним завершился первый сезон нашей деятельности.	<p>Чуть позже мы опубликуем статистические данные, а пока можно расслабиться и продолжить формирование гостиничной базы.</p>\r\n<p>Сейчас мы работаем лишь в Анапском районе Краснодарского края, но в ближайшее время дополним список отелями Геленджика, Дивноморска и Кабардинки.&nbsp;</p>	2012-10-27 12:19:48.578737	2012-10-27 12:19:48.578737	бухта1.JPG	image/jpeg	278162	2012-10-27 12:19:47.854762	\N
980190984	Работа продолжается...	За осенние месяцы значительно расширилось предложение.	<p>Осенью в базе появилось более двадцати новых объектов. В основном это гостиницы и пансионаты в г.Анапа</p>	2012-12-18 08:53:57.684439	2012-12-18 08:53:57.684439	\N	\N	\N	\N	\N
\.


--
-- Data for Name: change_logs; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY change_logs (id, version, record_id, table_name, attribute_name, "user", action, old_value, new_value, field_type, created_at, updated_at, model_name) FROM stdin;
1	1	1	users	id	\N	INSERT	\N	1	integer	2012-05-16 16:08:57.278022	2012-05-16 16:08:57.279597	User
2	1	1	users	email	\N	INSERT	\N	super@example.com	character varying(255)	2012-05-16 16:08:57.285473	2012-05-16 16:08:57.285869	User
3	1	1	users	encrypted_password	\N	INSERT	\N	89d0fc5c76aaf7bbc50783543b88ff7676304668e75fe311b4100fe9d39e3580a715081d4454b610a35fa740e2f0a477892cb62cd7825ccb2a2af0e7396a698e	character varying(255)	2012-05-16 16:08:57.288716	2012-05-16 16:08:57.288904	User
4	1	1	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.292125	2012-05-16 16:08:57.292352	User
5	1	1	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.296009	2012-05-16 16:08:57.296261	User
6	1	1	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.299089	2012-05-16 16:08:57.2993	User
7	1	1	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.302951	2012-05-16 16:08:57.303175	User
8	1	1	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.306495	2012-05-16 16:08:57.306739	User
9	1	1	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.31069	2012-05-16 16:08:57.311055	User
10	1	1	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.315552	2012-05-16 16:08:57.315807	User
11	1	1	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.319018	2012-05-16 16:08:57.319182	User
12	1	1	users	password_salt	\N	INSERT	\N	pmh65YkRJ1rM85Pngs7M	character varying(255)	2012-05-16 16:08:57.322097	2012-05-16 16:08:57.322304	User
13	1	1	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.325624	2012-05-16 16:08:57.325848	User
14	1	1	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.328993	2012-05-16 16:08:57.329156	User
15	1	1	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.331803	2012-05-16 16:08:57.331993	User
16	1	1	users	created_at	\N	INSERT	\N	2012-05-16 16:08:57.181375	timestamp without time zone	2012-05-16 16:08:57.334598	2012-05-16 16:08:57.334762	User
17	1	1	users	updated_at	\N	INSERT	\N	2012-05-16 16:08:57.181375	timestamp without time zone	2012-05-16 16:08:57.337575	2012-05-16 16:08:57.337745	User
18	1	1	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.340728	2012-05-16 16:08:57.340957	User
19	1	1	users	type	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.34455	2012-05-16 16:08:57.344795	User
20	1	1	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-16 16:08:57.348358	2012-05-16 16:08:57.348618	User
21	1	1	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-16 16:08:57.352093	2012-05-16 16:08:57.352328	User
22	1	2	users	id	\N	INSERT	\N	2	integer	2012-05-16 16:08:57.428748	2012-05-16 16:08:57.429125	User::Moderator
23	1	2	users	email	\N	INSERT	\N	admin@example.com	character varying(255)	2012-05-16 16:08:57.43252	2012-05-16 16:08:57.432745	User::Moderator
24	1	2	users	encrypted_password	\N	INSERT	\N	0d84a0c0a88f3d9edd4c395bab268886c2b8da87df94e85684dd5032308facced2b97ebd83812a9e292e9ed839aa7b81a204bafd8dc186cb09090a18ccddc806	character varying(255)	2012-05-16 16:08:57.436249	2012-05-16 16:08:57.436629	User::Moderator
25	1	2	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.440776	2012-05-16 16:08:57.441023	User::Moderator
26	1	2	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.444713	2012-05-16 16:08:57.444933	User::Moderator
27	1	2	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.448162	2012-05-16 16:08:57.448386	User::Moderator
28	1	2	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.451491	2012-05-16 16:08:57.451712	User::Moderator
29	1	2	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.45508	2012-05-16 16:08:57.455344	User::Moderator
30	1	2	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.458909	2012-05-16 16:08:57.459131	User::Moderator
31	1	2	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.46249	2012-05-16 16:08:57.462711	User::Moderator
32	1	2	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.46647	2012-05-16 16:08:57.4667	User::Moderator
33	1	2	users	password_salt	\N	INSERT	\N	RQYEdqkxtYPQsjirDmxC	character varying(255)	2012-05-16 16:08:57.470131	2012-05-16 16:08:57.47049	User::Moderator
34	1	2	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.473851	2012-05-16 16:08:57.474091	User::Moderator
35	1	2	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.477517	2012-05-16 16:08:57.477736	User::Moderator
36	1	2	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.481087	2012-05-16 16:08:57.481305	User::Moderator
37	1	2	users	created_at	\N	INSERT	\N	2012-05-16 16:08:57.420233	timestamp without time zone	2012-05-16 16:08:57.484341	2012-05-16 16:08:57.484558	User::Moderator
38	1	2	users	updated_at	\N	INSERT	\N	2012-05-16 16:08:57.420233	timestamp without time zone	2012-05-16 16:08:57.488369	2012-05-16 16:08:57.488601	User::Moderator
39	1	2	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.491949	2012-05-16 16:08:57.492176	User::Moderator
40	1	2	users	type	\N	INSERT	\N	User::Moderator	character varying(255)	2012-05-16 16:08:57.495811	2012-05-16 16:08:57.49605	User::Moderator
41	1	2	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-16 16:08:57.499306	2012-05-16 16:08:57.499729	User::Moderator
42	1	2	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-16 16:08:57.503131	2012-05-16 16:08:57.503438	User::Moderator
43	1	3	users	id	\N	INSERT	\N	3	integer	2012-05-16 16:08:57.575083	2012-05-16 16:08:57.575409	User::Agency
44	1	3	users	email	\N	INSERT	\N	agency@example.com	character varying(255)	2012-05-16 16:08:57.578695	2012-05-16 16:08:57.578914	User::Agency
45	1	3	users	encrypted_password	\N	INSERT	\N	1898755604c8572281265e3fffd135feca2fcfc1802ea35f0c2664ea3f11ea42d323c88ff89242201c0e23c5d2b554e1f0fde77bc751dca19b7a3be39c6ad5c1	character varying(255)	2012-05-16 16:08:57.582153	2012-05-16 16:08:57.582378	User::Agency
46	1	3	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.585881	2012-05-16 16:08:57.586122	User::Agency
47	1	3	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.589738	2012-05-16 16:08:57.589965	User::Agency
48	1	3	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.593419	2012-05-16 16:08:57.593656	User::Agency
49	1	3	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.596841	2012-05-16 16:08:57.597063	User::Agency
50	1	3	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.600383	2012-05-16 16:08:57.600598	User::Agency
51	1	3	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.603756	2012-05-16 16:08:57.603972	User::Agency
52	1	3	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.6071	2012-05-16 16:08:57.607325	User::Agency
53	1	3	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.610678	2012-05-16 16:08:57.610901	User::Agency
54	1	3	users	password_salt	\N	INSERT	\N	2Kx9PGxFTBnyez14WZ9p	character varying(255)	2012-05-16 16:08:57.614292	2012-05-16 16:08:57.61451	User::Agency
55	1	3	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-16 16:08:57.617834	2012-05-16 16:08:57.618071	User::Agency
56	1	3	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.621449	2012-05-16 16:08:57.621664	User::Agency
57	1	3	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-16 16:08:57.625283	2012-05-16 16:08:57.625498	User::Agency
58	1	3	users	created_at	\N	INSERT	\N	2012-05-16 16:08:57.567695	timestamp without time zone	2012-05-16 16:08:57.628738	2012-05-16 16:08:57.628962	User::Agency
59	1	3	users	updated_at	\N	INSERT	\N	2012-05-16 16:08:57.567695	timestamp without time zone	2012-05-16 16:08:57.632683	2012-05-16 16:08:57.6329	User::Agency
60	1	3	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-16 16:08:57.63661	2012-05-16 16:08:57.636828	User::Agency
61	1	3	users	type	\N	INSERT	\N	User::Agency	character varying(255)	2012-05-16 16:08:57.640296	2012-05-16 16:08:57.640513	User::Agency
62	1	3	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-16 16:08:57.644057	2012-05-16 16:08:57.644287	User::Agency
63	1	3	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-16 16:08:57.647581	2012-05-16 16:08:57.647822	User::Agency
64	2	1	users	last_sign_in_at	\N	UPDATE	\N	2012-05-16 16:18:21.757410	timestamp without time zone	2012-05-16 16:18:21.7939	2012-05-16 16:18:21.795524	User
65	3	1	users	current_sign_in_at	\N	UPDATE	\N	2012-05-16 16:18:21.757410	timestamp without time zone	2012-05-16 16:18:21.80106	2012-05-16 16:18:21.801324	User
66	4	1	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-16 16:18:21.805129	2012-05-16 16:18:21.805378	User
67	5	1	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-16 16:18:21.809832	2012-05-16 16:18:21.810174	User
68	6	1	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-16 16:18:21.815215	2012-05-16 16:18:21.815491	User
69	7	1	users	current_sign_in_at	\N	UPDATE	2012-05-16 16:18:21.757410	2012-05-16 18:32:02.613718	timestamp without time zone	2012-05-16 18:32:02.618954	2012-05-16 18:32:02.619324	User
70	8	1	users	sign_in_count	\N	UPDATE	1	2	integer	2012-05-16 18:32:02.624258	2012-05-16 18:32:02.624482	User
71	2	2	users	last_sign_in_at	\N	UPDATE	\N	2012-05-16 19:11:12.930870	timestamp without time zone	2012-05-16 19:11:12.936979	2012-05-16 19:11:12.937303	User::Moderator
72	3	2	users	current_sign_in_at	\N	UPDATE	\N	2012-05-16 19:11:12.930870	timestamp without time zone	2012-05-16 19:11:12.942391	2012-05-16 19:11:12.942654	User::Moderator
73	4	2	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-16 19:11:12.94733	2012-05-16 19:11:12.947562	User::Moderator
74	5	2	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-16 19:11:12.952327	2012-05-16 19:11:12.952547	User::Moderator
75	6	2	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-16 19:11:12.957313	2012-05-16 19:11:12.957539	User::Moderator
76	9	1	users	failed_attempts	\N	UPDATE	0	1	integer	2012-05-16 19:11:50.462283	2012-05-16 19:11:50.46265	User
77	10	1	users	failed_attempts	\N	UPDATE	1	2	integer	2012-05-16 19:11:54.057124	2012-05-16 19:11:54.057477	User
78	11	1	users	failed_attempts	\N	UPDATE	2	0	integer	2012-05-16 19:11:58.609061	2012-05-16 19:11:58.609411	User
79	12	1	users	last_sign_in_at	\N	UPDATE	2012-05-16 16:18:21.757410	2012-05-16 18:32:02.613718	timestamp without time zone	2012-05-16 19:11:58.619368	2012-05-16 19:11:58.619635	User
80	13	1	users	current_sign_in_at	\N	UPDATE	2012-05-16 18:32:02.613718	2012-05-16 19:11:58.615149	timestamp without time zone	2012-05-16 19:11:58.624568	2012-05-16 19:11:58.624798	User
81	14	1	users	sign_in_count	\N	UPDATE	2	3	integer	2012-05-16 19:11:58.629397	2012-05-16 19:11:58.629664	User
82	15	1	users	last_sign_in_at	\N	UPDATE	2012-05-16 18:32:02.613718	2012-05-16 19:11:58.615149	timestamp without time zone	2012-05-17 13:07:10.648126	2012-05-17 13:07:10.648613	User
83	16	1	users	current_sign_in_at	\N	UPDATE	2012-05-16 19:11:58.615149	2012-05-17 13:07:10.638543	timestamp without time zone	2012-05-17 13:07:10.655124	2012-05-17 13:07:10.655464	User
84	17	1	users	sign_in_count	\N	UPDATE	3	4	integer	2012-05-17 13:07:10.660825	2012-05-17 13:07:10.661137	User
85	18	1	users	last_sign_in_at	\N	UPDATE	2012-05-16 19:11:58.615149	2012-05-17 13:07:10.638543	timestamp without time zone	2012-05-17 17:21:42.984411	2012-05-17 17:21:42.984743	User
86	19	1	users	current_sign_in_at	\N	UPDATE	2012-05-17 13:07:10.638543	2012-05-17 17:21:42.979099	timestamp without time zone	2012-05-17 17:21:42.990662	2012-05-17 17:21:42.991032	User
87	20	1	users	sign_in_count	\N	UPDATE	4	5	integer	2012-05-17 17:21:42.996253	2012-05-17 17:21:42.996537	User
88	7	2	users	current_sign_in_at	1	UPDATE	2012-05-16 19:11:12.930870	2012-05-17 17:26:56.304905	timestamp without time zone	2012-05-17 17:26:56.311007	2012-05-17 17:26:56.311447	User::Moderator
89	8	2	users	sign_in_count	1	UPDATE	1	2	integer	2012-05-17 17:26:56.317176	2012-05-17 17:26:56.317461	User::Moderator
90	2	3	users	last_sign_in_at	\N	UPDATE	\N	2012-05-17 17:27:31.535625	timestamp without time zone	2012-05-17 17:27:31.539596	2012-05-17 17:27:31.539833	User::Agency
91	3	3	users	current_sign_in_at	\N	UPDATE	\N	2012-05-17 17:27:31.535625	timestamp without time zone	2012-05-17 17:27:31.54353	2012-05-17 17:27:31.543696	User::Agency
92	4	3	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-17 17:27:31.546994	2012-05-17 17:27:31.547173	User::Agency
93	5	3	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-17 17:27:31.552203	2012-05-17 17:27:31.552393	User::Agency
94	6	3	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-17 17:27:31.555983	2012-05-17 17:27:31.556165	User::Agency
95	21	1	users	remember_created_at	\N	UPDATE	\N	2012-05-17 18:27:34.530151	timestamp without time zone	2012-05-17 18:27:34.53401	2012-05-17 18:27:34.534404	User
96	22	1	users	last_sign_in_at	\N	UPDATE	2012-05-17 13:07:10.638543	2012-05-17 17:21:42.979099	timestamp without time zone	2012-05-17 18:27:34.544543	2012-05-17 18:27:34.544742	User
97	23	1	users	current_sign_in_at	\N	UPDATE	2012-05-17 17:21:42.979099	2012-05-17 18:27:34.540699	timestamp without time zone	2012-05-17 18:27:34.548186	2012-05-17 18:27:34.548355	User
98	24	1	users	sign_in_count	\N	UPDATE	5	6	integer	2012-05-17 18:27:34.553101	2012-05-17 18:27:34.553324	User
99	25	1	users	last_sign_in_at	\N	UPDATE	2012-05-17 17:21:42.979099	2012-05-17 18:27:34.540699	timestamp without time zone	2012-05-17 18:39:12.140114	2012-05-17 18:39:12.140348	User
100	26	1	users	current_sign_in_at	\N	UPDATE	2012-05-17 18:27:34.540699	2012-05-17 18:39:12.135531	timestamp without time zone	2012-05-17 18:39:12.144353	2012-05-17 18:39:12.144569	User
101	27	1	users	sign_in_count	\N	UPDATE	6	7	integer	2012-05-17 18:39:12.148858	2012-05-17 18:39:12.149044	User
102	28	1	users	last_sign_in_at	1	UPDATE	2012-05-17 18:27:34.540699	2012-05-17 18:39:12.135531	timestamp without time zone	2012-05-17 18:49:44.344019	2012-05-17 18:49:44.344274	User
103	29	1	users	current_sign_in_at	1	UPDATE	2012-05-17 18:39:12.135531	2012-05-17 18:49:44.339424	timestamp without time zone	2012-05-17 18:49:44.348895	2012-05-17 18:49:44.349182	User
104	30	1	users	sign_in_count	1	UPDATE	7	8	integer	2012-05-17 18:49:44.35315	2012-05-17 18:49:44.353332	User
105	31	1	users	last_sign_in_at	\N	UPDATE	2012-05-17 18:39:12.135531	2012-05-17 18:49:44.339424	timestamp without time zone	2012-05-18 04:32:09.397268	2012-05-18 04:32:09.397673	User
106	32	1	users	current_sign_in_at	\N	UPDATE	2012-05-17 18:49:44.339424	2012-05-18 04:32:09.390817	timestamp without time zone	2012-05-18 04:32:09.403252	2012-05-18 04:32:09.4035	User
107	33	1	users	sign_in_count	\N	UPDATE	8	9	integer	2012-05-18 04:32:09.407891	2012-05-18 04:32:09.408074	User
108	1	4	users	id	1	INSERT	\N	4	integer	2012-05-18 04:49:08.21844	2012-05-18 04:49:08.218782	User::Agency
109	1	4	users	email	1	INSERT	\N	karina@emerald-world.ru	character varying(255)	2012-05-18 04:49:08.223316	2012-05-18 04:49:08.223679	User::Agency
110	1	4	users	encrypted_password	1	INSERT	\N	e131ccf15bdaed5a686ea49ceecfa3e0bc855a5bed1643e14a33dc88cf3b113b45084aaa678dc21376fdd4706e93895133f89c19c524e9c9001a76d9b59dbd11	character varying(255)	2012-05-18 04:49:08.228178	2012-05-18 04:49:08.228407	User::Agency
111	1	4	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:49:08.232174	2012-05-18 04:49:08.232434	User::Agency
112	1	4	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:49:08.23629	2012-05-18 04:49:08.236486	User::Agency
113	1	4	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:49:08.239392	2012-05-18 04:49:08.239551	User::Agency
114	1	4	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-18 04:49:08.242716	2012-05-18 04:49:08.242936	User::Agency
115	1	4	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:49:08.246349	2012-05-18 04:49:08.246585	User::Agency
116	1	4	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:49:08.249831	2012-05-18 04:49:08.250049	User::Agency
117	1	4	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:49:08.254188	2012-05-18 04:49:08.254499	User::Agency
118	1	4	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:49:08.259013	2012-05-18 04:49:08.259234	User::Agency
119	1	4	users	password_salt	1	INSERT	\N	PE6vxtkL1MkwNLkyNLhT	character varying(255)	2012-05-18 04:49:08.262724	2012-05-18 04:49:08.262955	User::Agency
120	1	4	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-18 04:49:08.266655	2012-05-18 04:49:08.266877	User::Agency
121	1	4	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:49:08.270506	2012-05-18 04:49:08.270725	User::Agency
122	1	4	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:49:08.274026	2012-05-18 04:49:08.274195	User::Agency
123	1	4	users	created_at	1	INSERT	\N	2012-05-18 04:49:08.208542	timestamp without time zone	2012-05-18 04:49:08.276683	2012-05-18 04:49:08.276874	User::Agency
124	1	4	users	updated_at	1	INSERT	\N	2012-05-18 04:49:08.208542	timestamp without time zone	2012-05-18 04:49:08.279615	2012-05-18 04:49:08.279846	User::Agency
125	1	4	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:49:08.283817	2012-05-18 04:49:08.284051	User::Agency
126	1	4	users	type	1	INSERT	\N	User::Agency	character varying(255)	2012-05-18 04:49:08.288743	2012-05-18 04:49:08.289156	User::Agency
127	1	4	users	is_partner	1	INSERT	\N	t	boolean	2012-05-18 04:49:08.376717	2012-05-18 04:49:08.377158	User::Agency
128	1	4	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-18 04:49:08.381171	2012-05-18 04:49:08.381409	User::Agency
129	1	5	users	id	1	INSERT	\N	5	integer	2012-05-18 04:50:03.846947	2012-05-18 04:50:03.847349	User::Agency
130	1	5	users	email	1	INSERT	\N	karina122@emerald-world.ru	character varying(255)	2012-05-18 04:50:03.85102	2012-05-18 04:50:03.851194	User::Agency
131	1	5	users	encrypted_password	1	INSERT	\N	944706db7d4b6a22beefc57d2953960e6a8f51dd7e4be5cb3f33ba938fe40cc56c7379ec93b1160b0d86c2d242f94947a03c91dd3e52a77faa968732cb3c8db6	character varying(255)	2012-05-18 04:50:03.853774	2012-05-18 04:50:03.853938	User::Agency
132	1	5	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:50:03.856451	2012-05-18 04:50:03.856612	User::Agency
133	1	5	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:50:03.859182	2012-05-18 04:50:03.859344	User::Agency
134	1	5	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:50:03.861852	2012-05-18 04:50:03.862013	User::Agency
135	1	5	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-18 04:50:03.865117	2012-05-18 04:50:03.865293	User::Agency
136	1	5	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:50:03.868216	2012-05-18 04:50:03.868389	User::Agency
137	1	5	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:50:03.87097	2012-05-18 04:50:03.87113	User::Agency
138	1	5	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:50:03.873626	2012-05-18 04:50:03.873842	User::Agency
139	1	5	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:50:03.876617	2012-05-18 04:50:03.876793	User::Agency
140	1	5	users	password_salt	1	INSERT	\N	zB8rLmDzxJpZeSmiCktP	character varying(255)	2012-05-18 04:50:03.87928	2012-05-18 04:50:03.879442	User::Agency
141	1	5	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-18 04:50:03.881922	2012-05-18 04:50:03.882097	User::Agency
142	1	5	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:50:03.884498	2012-05-18 04:50:03.884655	User::Agency
143	1	5	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 04:50:03.887039	2012-05-18 04:50:03.887197	User::Agency
144	1	5	users	created_at	1	INSERT	\N	2012-05-18 04:50:03.839495	timestamp without time zone	2012-05-18 04:50:03.890454	2012-05-18 04:50:03.890659	User::Agency
145	1	5	users	updated_at	1	INSERT	\N	2012-05-18 04:50:03.839495	timestamp without time zone	2012-05-18 04:50:03.893485	2012-05-18 04:50:03.893646	User::Agency
146	1	5	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-18 04:50:03.89679	2012-05-18 04:50:03.896951	User::Agency
147	1	5	users	type	1	INSERT	\N	User::Agency	character varying(255)	2012-05-18 04:50:03.899918	2012-05-18 04:50:03.900169	User::Agency
148	1	5	users	is_partner	1	INSERT	\N	t	boolean	2012-05-18 04:50:03.903966	2012-05-18 04:50:03.904186	User::Agency
149	1	5	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-18 04:50:03.907451	2012-05-18 04:50:03.907674	User::Agency
150	2	4	users	\N	1	DELETE	\N	\N	\N	2012-05-18 04:54:56.353872	2012-05-18 04:54:56.354175	\N
151	1	6	users	id	1	INSERT	\N	6	integer	2012-05-18 05:00:43.356376	2012-05-18 05:00:43.35677	User::Agency
152	1	6	users	email	1	INSERT	\N	yama@example.com	character varying(255)	2012-05-18 05:00:43.360988	2012-05-18 05:00:43.361215	User::Agency
153	1	6	users	encrypted_password	1	INSERT	\N	c534e5d72f650a31f11421ce6dafc4430e700e3e809aa424d8ebff20bb73ae3e0511ada83173e900230978044e869bdbf9d9351a497f439a481d881eea80804d	character varying(255)	2012-05-18 05:00:43.364644	2012-05-18 05:00:43.3649	User::Agency
154	1	6	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 05:00:43.368278	2012-05-18 05:00:43.368494	User::Agency
155	1	6	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 05:00:43.372679	2012-05-18 05:00:43.3729	User::Agency
156	1	6	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 05:00:43.376542	2012-05-18 05:00:43.376794	User::Agency
157	1	6	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-18 05:00:43.381331	2012-05-18 05:00:43.381662	User::Agency
158	1	6	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 05:00:43.385183	2012-05-18 05:00:43.385408	User::Agency
159	1	6	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 05:00:43.389012	2012-05-18 05:00:43.389235	User::Agency
160	1	6	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 05:00:43.392672	2012-05-18 05:00:43.392891	User::Agency
161	1	6	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-18 05:00:43.396262	2012-05-18 05:00:43.39648	User::Agency
162	1	6	users	password_salt	1	INSERT	\N	LpgVMvs8snJci38Roj3E	character varying(255)	2012-05-18 05:00:43.400198	2012-05-18 05:00:43.400415	User::Agency
163	1	6	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-18 05:00:43.403872	2012-05-18 05:00:43.404092	User::Agency
164	1	6	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-18 05:00:43.407693	2012-05-18 05:00:43.408103	User::Agency
165	1	6	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-18 05:00:43.41148	2012-05-18 05:00:43.411698	User::Agency
166	1	6	users	created_at	1	INSERT	\N	2012-05-18 05:00:43.349187	timestamp without time zone	2012-05-18 05:00:43.415672	2012-05-18 05:00:43.415904	User::Agency
167	1	6	users	updated_at	1	INSERT	\N	2012-05-18 05:00:43.349187	timestamp without time zone	2012-05-18 05:00:43.41951	2012-05-18 05:00:43.419735	User::Agency
168	1	6	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-18 05:00:43.423669	2012-05-18 05:00:43.42389	User::Agency
169	1	6	users	type	1	INSERT	\N	User::Agency	character varying(255)	2012-05-18 05:00:43.427611	2012-05-18 05:00:43.427871	User::Agency
170	1	6	users	is_partner	1	INSERT	\N	t	boolean	2012-05-18 05:00:43.431519	2012-05-18 05:00:43.431813	User::Agency
171	1	6	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-18 05:00:43.435266	2012-05-18 05:00:43.435496	User::Agency
172	9	2	users	last_sign_in_at	\N	UPDATE	2012-05-16 19:11:12.930870	2012-05-17 17:26:56.304905	timestamp without time zone	2012-05-18 05:12:10.128927	2012-05-18 05:12:10.129333	User::Moderator
173	10	2	users	current_sign_in_at	\N	UPDATE	2012-05-17 17:26:56.304905	2012-05-18 05:12:10.122187	timestamp without time zone	2012-05-18 05:12:10.135956	2012-05-18 05:12:10.136232	User::Moderator
174	11	2	users	sign_in_count	\N	UPDATE	2	3	integer	2012-05-18 05:12:10.140845	2012-05-18 05:12:10.14113	User::Moderator
175	7	3	users	current_sign_in_at	\N	UPDATE	2012-05-17 17:27:31.535625	2012-05-18 05:23:13.064819	timestamp without time zone	2012-05-18 05:23:13.074271	2012-05-18 05:23:13.074688	User::Agency
176	8	3	users	sign_in_count	\N	UPDATE	1	2	integer	2012-05-18 05:23:13.0808	2012-05-18 05:23:13.08111	User::Agency
177	34	1	users	last_sign_in_at	3	UPDATE	2012-05-17 18:49:44.339424	2012-05-18 04:32:09.390817	timestamp without time zone	2012-05-18 05:23:23.863534	2012-05-18 05:23:23.863974	User
178	35	1	users	current_sign_in_at	3	UPDATE	2012-05-18 04:32:09.390817	2012-05-18 05:23:23.856648	timestamp without time zone	2012-05-18 05:23:23.871959	2012-05-18 05:23:23.872388	User
179	36	1	users	sign_in_count	3	UPDATE	9	10	integer	2012-05-18 05:23:23.880088	2012-05-18 05:23:23.880553	User
180	37	1	users	remember_created_at	1	UPDATE	2012-05-17 18:27:34.530151	\N	timestamp without time zone	2012-05-18 05:23:53.76163	2012-05-18 05:23:53.761975	User
181	38	1	users	last_sign_in_at	\N	UPDATE	2012-05-18 04:32:09.390817	2012-05-18 05:23:23.856648	timestamp without time zone	2012-05-18 05:24:16.163497	2012-05-18 05:24:16.163818	User
182	39	1	users	current_sign_in_at	\N	UPDATE	2012-05-18 05:23:23.856648	2012-05-18 05:24:16.158577	timestamp without time zone	2012-05-18 05:24:16.169694	2012-05-18 05:24:16.170139	User
183	40	1	users	sign_in_count	\N	UPDATE	10	11	integer	2012-05-18 05:24:16.175877	2012-05-18 05:24:16.176132	User
184	41	1	users	remember_created_at	1	UPDATE	\N	2012-05-18 05:26:58.278451	timestamp without time zone	2012-05-18 05:26:58.283688	2012-05-18 05:26:58.284024	User
185	42	1	users	last_sign_in_at	1	UPDATE	2012-05-18 05:23:23.856648	2012-05-18 05:24:16.158577	timestamp without time zone	2012-05-18 05:26:58.312563	2012-05-18 05:26:58.312838	User
186	43	1	users	current_sign_in_at	1	UPDATE	2012-05-18 05:24:16.158577	2012-05-18 05:26:58.307668	timestamp without time zone	2012-05-18 05:26:58.318505	2012-05-18 05:26:58.318732	User
187	44	1	users	sign_in_count	1	UPDATE	11	12	integer	2012-05-18 05:26:58.323808	2012-05-18 05:26:58.324027	User
188	12	2	users	last_sign_in_at	\N	UPDATE	2012-05-17 17:26:56.304905	2012-05-18 05:12:10.122187	timestamp without time zone	2012-05-18 06:21:50.509839	2012-05-18 06:21:50.510222	User::Moderator
189	13	2	users	current_sign_in_at	\N	UPDATE	2012-05-18 05:12:10.122187	2012-05-18 06:21:50.501708	timestamp without time zone	2012-05-18 06:21:50.515423	2012-05-18 06:21:50.515712	User::Moderator
190	14	2	users	sign_in_count	\N	UPDATE	3	4	integer	2012-05-18 06:21:50.520538	2012-05-18 06:21:50.520775	User::Moderator
191	1	1	users	id	\N	INSERT	\N	1	integer	2012-05-18 07:23:13.837513	2012-05-18 07:23:13.83916	User
192	1	1	users	email	\N	INSERT	\N	super@example.com	character varying(255)	2012-05-18 07:23:13.843954	2012-05-18 07:23:13.844215	User
193	1	1	users	encrypted_password	\N	INSERT	\N	1871053da1798788047074342da3a5462e442e74a6f097a3f72219649d4aff3248c4378bc89042075e355ad028b58e8c3cf9c81c34ecf721f084e3db05562c92	character varying(255)	2012-05-18 07:23:13.847013	2012-05-18 07:23:13.847198	User
194	1	1	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.850014	2012-05-18 07:23:13.850187	User
195	1	1	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:13.852723	2012-05-18 07:23:13.852957	User
196	1	1	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:13.856463	2012-05-18 07:23:13.856749	User
197	1	1	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-18 07:23:13.86143	2012-05-18 07:23:13.861657	User
198	1	1	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:13.865373	2012-05-18 07:23:13.865723	User
199	1	1	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:13.869061	2012-05-18 07:23:13.869304	User
200	1	1	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.872304	2012-05-18 07:23:13.872498	User
201	1	1	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.875519	2012-05-18 07:23:13.875721	User
202	1	1	users	password_salt	\N	INSERT	\N	EzN1ETzNrXZy4cbRZx34	character varying(255)	2012-05-18 07:23:13.879091	2012-05-18 07:23:13.879328	User
203	1	1	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-18 07:23:13.883334	2012-05-18 07:23:13.883568	User
204	1	1	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.887115	2012-05-18 07:23:13.887367	User
205	1	1	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:13.891147	2012-05-18 07:23:13.891396	User
206	1	1	users	created_at	\N	INSERT	\N	2012-05-18 07:23:13.788360	timestamp without time zone	2012-05-18 07:23:13.895257	2012-05-18 07:23:13.895514	User
207	1	1	users	updated_at	\N	INSERT	\N	2012-05-18 07:23:13.788360	timestamp without time zone	2012-05-18 07:23:13.899084	2012-05-18 07:23:13.89933	User
208	1	1	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.903425	2012-05-18 07:23:13.903658	User
209	1	1	users	type	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:13.907528	2012-05-18 07:23:13.907886	User
210	1	1	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-18 07:23:13.912279	2012-05-18 07:23:13.912519	User
211	1	1	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-18 07:23:13.915915	2012-05-18 07:23:13.916233	User
212	1	2	users	id	\N	INSERT	\N	2	integer	2012-05-18 07:23:14.027798	2012-05-18 07:23:14.028074	User::Moderator
213	1	2	users	email	\N	INSERT	\N	admin@example.com	character varying(255)	2012-05-18 07:23:14.03108	2012-05-18 07:23:14.031254	User::Moderator
214	1	2	users	encrypted_password	\N	INSERT	\N	70e094c2b8b6a9b58c5a642e7c94098a69854392e74abbf785c350a26afe301c02550d61e64ff10b96fcd612dca0dd5beb2ec12f454aee2cc1297a34acaffe01	character varying(255)	2012-05-18 07:23:14.034359	2012-05-18 07:23:14.034567	User::Moderator
215	1	2	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.037235	2012-05-18 07:23:14.03742	User::Moderator
216	1	2	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.040412	2012-05-18 07:23:14.040612	User::Moderator
217	1	2	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.043735	2012-05-18 07:23:14.043937	User::Moderator
218	1	2	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-18 07:23:14.047338	2012-05-18 07:23:14.047615	User::Moderator
219	1	2	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.052123	2012-05-18 07:23:14.052568	User::Moderator
220	1	2	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.056371	2012-05-18 07:23:14.056614	User::Moderator
221	1	2	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.059747	2012-05-18 07:23:14.059937	User::Moderator
222	1	2	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.062541	2012-05-18 07:23:14.062783	User::Moderator
223	1	2	users	password_salt	\N	INSERT	\N	x48iqp4YyavG2qQBVJUx	character varying(255)	2012-05-18 07:23:14.065759	2012-05-18 07:23:14.065953	User::Moderator
224	1	2	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-18 07:23:14.06908	2012-05-18 07:23:14.069286	User::Moderator
225	1	2	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.071974	2012-05-18 07:23:14.072162	User::Moderator
226	1	2	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.074707	2012-05-18 07:23:14.074911	User::Moderator
227	1	2	users	created_at	\N	INSERT	\N	2012-05-18 07:23:14.020515	timestamp without time zone	2012-05-18 07:23:14.077615	2012-05-18 07:23:14.077803	User::Moderator
228	1	2	users	updated_at	\N	INSERT	\N	2012-05-18 07:23:14.020515	timestamp without time zone	2012-05-18 07:23:14.080766	2012-05-18 07:23:14.080943	User::Moderator
229	1	2	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.083707	2012-05-18 07:23:14.083897	User::Moderator
230	1	2	users	type	\N	INSERT	\N	User::Moderator	character varying(255)	2012-05-18 07:23:14.086535	2012-05-18 07:23:14.086745	User::Moderator
231	1	2	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-18 07:23:14.089428	2012-05-18 07:23:14.089622	User::Moderator
232	1	2	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-18 07:23:14.092554	2012-05-18 07:23:14.092735	User::Moderator
233	1	3	users	id	\N	INSERT	\N	3	integer	2012-05-18 07:23:14.218757	2012-05-18 07:23:14.219062	User::Agency
234	1	3	users	email	\N	INSERT	\N	agency@example.com	character varying(255)	2012-05-18 07:23:14.222655	2012-05-18 07:23:14.222919	User::Agency
235	1	3	users	encrypted_password	\N	INSERT	\N	c93f5c364d33df4b34bb62cdd22a830fd8caed2fd6a6d6bcda03929bd2973f884b33fe61aade1cb9849445cd1399f57ddb628f7769f6354ef87303a19c05e0bc	character varying(255)	2012-05-18 07:23:14.226571	2012-05-18 07:23:14.226791	User::Agency
236	1	3	users	reset_password_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.230195	2012-05-18 07:23:14.230388	User::Agency
237	1	3	users	reset_password_sent_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.234208	2012-05-18 07:23:14.234452	User::Agency
238	1	3	users	remember_created_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.237248	2012-05-18 07:23:14.237439	User::Agency
239	1	3	users	sign_in_count	\N	INSERT	\N	0	integer	2012-05-18 07:23:14.24079	2012-05-18 07:23:14.241032	User::Agency
240	1	3	users	current_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.243759	2012-05-18 07:23:14.243941	User::Agency
241	1	3	users	last_sign_in_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.2467	2012-05-18 07:23:14.246885	User::Agency
242	1	3	users	current_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.249793	2012-05-18 07:23:14.250034	User::Agency
243	1	3	users	last_sign_in_ip	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.253368	2012-05-18 07:23:14.253566	User::Agency
244	1	3	users	password_salt	\N	INSERT	\N	Cd8y9yBfyMP54kpkYvyk	character varying(255)	2012-05-18 07:23:14.256403	2012-05-18 07:23:14.256706	User::Agency
245	1	3	users	failed_attempts	\N	INSERT	\N	0	integer	2012-05-18 07:23:14.260698	2012-05-18 07:23:14.261021	User::Agency
246	1	3	users	unlock_token	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.264246	2012-05-18 07:23:14.264518	User::Agency
247	1	3	users	locked_at	\N	INSERT	\N	\N	timestamp without time zone	2012-05-18 07:23:14.267825	2012-05-18 07:23:14.268107	User::Agency
248	1	3	users	created_at	\N	INSERT	\N	2012-05-18 07:23:14.211731	timestamp without time zone	2012-05-18 07:23:14.271905	2012-05-18 07:23:14.272298	User::Agency
249	1	3	users	updated_at	\N	INSERT	\N	2012-05-18 07:23:14.211731	timestamp without time zone	2012-05-18 07:23:14.276592	2012-05-18 07:23:14.276886	User::Agency
250	1	3	users	role	\N	INSERT	\N	\N	character varying(255)	2012-05-18 07:23:14.281	2012-05-18 07:23:14.281307	User::Agency
251	1	3	users	type	\N	INSERT	\N	User::Agency	character varying(255)	2012-05-18 07:23:14.285301	2012-05-18 07:23:14.285523	User::Agency
252	1	3	users	is_partner	\N	INSERT	\N	\N	boolean	2012-05-18 07:23:14.288867	2012-05-18 07:23:14.289089	User::Agency
253	1	3	users	new_messages_count	\N	INSERT	\N	\N	integer	2012-05-18 07:23:14.292726	2012-05-18 07:23:14.293031	User::Agency
254	15	2	users	last_sign_in_at	\N	UPDATE	\N	2012-05-18 07:23:57.719128	timestamp without time zone	2012-05-18 07:23:57.726913	2012-05-18 07:23:57.7272	User::Moderator
255	16	2	users	current_sign_in_at	\N	UPDATE	\N	2012-05-18 07:23:57.719128	timestamp without time zone	2012-05-18 07:23:57.732472	2012-05-18 07:23:57.732735	User::Moderator
256	17	2	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-18 07:23:57.73722	2012-05-18 07:23:57.737485	User::Moderator
257	18	2	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-18 07:23:57.742519	2012-05-18 07:23:57.742796	User::Moderator
258	19	2	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-18 07:23:57.747834	2012-05-18 07:23:57.748111	User::Moderator
259	45	1	users	last_sign_in_at	\N	UPDATE	\N	2012-05-18 07:24:11.199369	timestamp without time zone	2012-05-18 07:24:11.204066	2012-05-18 07:24:11.204347	User
260	46	1	users	current_sign_in_at	\N	UPDATE	\N	2012-05-18 07:24:11.199369	timestamp without time zone	2012-05-18 07:24:11.209268	2012-05-18 07:24:11.209502	User
261	47	1	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-18 07:24:11.214036	2012-05-18 07:24:11.214218	User
262	48	1	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-18 07:24:11.218928	2012-05-18 07:24:11.219186	User
263	49	1	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-18 07:24:11.224639	2012-05-18 07:24:11.22499	User
264	50	1	users	current_sign_in_at	\N	UPDATE	2012-05-18 07:24:11.199369	2012-05-18 07:37:00.772357	timestamp without time zone	2012-05-18 07:37:00.776987	2012-05-18 07:37:00.777317	User
265	51	1	users	sign_in_count	\N	UPDATE	1	2	integer	2012-05-18 07:37:00.78208	2012-05-18 07:37:00.782265	User
266	52	1	users	remember_created_at	\N	UPDATE	\N	2012-05-18 18:01:59.071483	timestamp without time zone	2012-05-18 18:01:59.076336	2012-05-18 18:01:59.07666	User
267	53	1	users	last_sign_in_at	\N	UPDATE	2012-05-18 07:24:11.199369	2012-05-18 07:37:00.772357	timestamp without time zone	2012-05-18 18:01:59.092173	2012-05-18 18:01:59.092454	User
268	54	1	users	current_sign_in_at	\N	UPDATE	2012-05-18 07:37:00.772357	2012-05-18 18:01:59.087586	timestamp without time zone	2012-05-18 18:01:59.097775	2012-05-18 18:01:59.098383	User
269	55	1	users	sign_in_count	\N	UPDATE	2	3	integer	2012-05-18 18:01:59.104377	2012-05-18 18:01:59.104621	User
270	56	1	users	remember_created_at	1	UPDATE	2012-05-18 18:01:59.071483	\N	timestamp without time zone	2012-05-18 19:11:25.340787	2012-05-18 19:11:25.341114	User
271	20	2	users	remember_created_at	\N	UPDATE	\N	2012-05-18 19:12:12.991328	timestamp without time zone	2012-05-18 19:12:12.996112	2012-05-18 19:12:12.996447	User::Moderator
272	21	2	users	current_sign_in_at	\N	UPDATE	2012-05-18 07:23:57.719128	2012-05-18 19:12:13.029644	timestamp without time zone	2012-05-18 19:12:13.035527	2012-05-18 19:12:13.035836	User::Moderator
273	22	2	users	sign_in_count	\N	UPDATE	1	2	integer	2012-05-18 19:12:13.040816	2012-05-18 19:12:13.041068	User::Moderator
274	23	2	users	last_sign_in_at	\N	UPDATE	2012-05-18 07:23:57.719128	2012-05-18 19:12:13.029644	timestamp without time zone	2012-05-19 03:35:58.084921	2012-05-19 03:35:58.085418	User::Moderator
275	24	2	users	current_sign_in_at	\N	UPDATE	2012-05-18 19:12:13.029644	2012-05-19 03:35:58.079200	timestamp without time zone	2012-05-19 03:35:58.091401	2012-05-19 03:35:58.091653	User::Moderator
276	25	2	users	sign_in_count	\N	UPDATE	2	3	integer	2012-05-19 03:35:58.097069	2012-05-19 03:35:58.09732	User::Moderator
277	26	2	users	remember_created_at	2	UPDATE	2012-05-18 19:12:12.991328	\N	timestamp without time zone	2012-05-19 03:50:17.88764	2012-05-19 03:50:17.887974	User::Moderator
278	57	1	users	remember_created_at	\N	UPDATE	\N	2012-05-19 03:50:48.457736	timestamp without time zone	2012-05-19 03:50:48.463366	2012-05-19 03:50:48.463698	User
279	58	1	users	last_sign_in_at	\N	UPDATE	2012-05-18 07:37:00.772357	2012-05-18 18:01:59.087586	timestamp without time zone	2012-05-19 03:50:48.473495	2012-05-19 03:50:48.473754	User
280	59	1	users	current_sign_in_at	\N	UPDATE	2012-05-18 18:01:59.087586	2012-05-19 03:50:48.469261	timestamp without time zone	2012-05-19 03:50:48.478429	2012-05-19 03:50:48.478652	User
281	60	1	users	sign_in_count	\N	UPDATE	3	4	integer	2012-05-19 03:50:48.483443	2012-05-19 03:50:48.483697	User
282	61	1	users	remember_created_at	1	UPDATE	2012-05-19 03:50:48.457736	\N	timestamp without time zone	2012-05-19 04:10:58.653929	2012-05-19 04:10:58.654318	User
283	9	3	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:15:26.987904	timestamp without time zone	2012-05-19 04:15:26.992744	2012-05-19 04:15:26.993128	User::Agency
284	10	3	users	last_sign_in_at	\N	UPDATE	\N	2012-05-19 04:15:27.000151	timestamp without time zone	2012-05-19 04:15:27.003921	2012-05-19 04:15:27.004207	User::Agency
285	11	3	users	current_sign_in_at	\N	UPDATE	\N	2012-05-19 04:15:27.000151	timestamp without time zone	2012-05-19 04:15:27.008554	2012-05-19 04:15:27.008787	User::Agency
286	12	3	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-19 04:15:27.01276	2012-05-19 04:15:27.013069	User::Agency
287	13	3	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-19 04:15:27.019113	2012-05-19 04:15:27.019417	User::Agency
288	14	3	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-19 04:15:27.024868	2012-05-19 04:15:27.025096	User::Agency
289	15	3	users	remember_created_at	3	UPDATE	2012-05-19 04:15:26.987904	\N	timestamp without time zone	2012-05-19 04:15:56.14963	2012-05-19 04:15:56.150031	User::Agency
290	27	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:16:26.284627	timestamp without time zone	2012-05-19 04:16:26.290123	2012-05-19 04:16:26.29046	User::Moderator
291	28	2	users	last_sign_in_at	\N	UPDATE	2012-05-18 19:12:13.029644	2012-05-19 03:35:58.079200	timestamp without time zone	2012-05-19 04:16:26.302221	2012-05-19 04:16:26.30256	User::Moderator
292	29	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 03:35:58.079200	2012-05-19 04:16:26.297398	timestamp without time zone	2012-05-19 04:16:26.3078	2012-05-19 04:16:26.308075	User::Moderator
293	30	2	users	sign_in_count	\N	UPDATE	3	4	integer	2012-05-19 04:16:26.312897	2012-05-19 04:16:26.313067	User::Moderator
294	31	2	users	remember_created_at	2	UPDATE	2012-05-19 04:16:26.284627	\N	timestamp without time zone	2012-05-19 04:32:01.469403	2012-05-19 04:32:01.47	User::Moderator
295	16	3	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:32:36.813292	timestamp without time zone	2012-05-19 04:32:36.818082	2012-05-19 04:32:36.818421	User::Agency
296	17	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:15:27.000151	2012-05-19 04:32:36.824717	timestamp without time zone	2012-05-19 04:32:36.919193	2012-05-19 04:32:36.919676	User::Agency
297	18	3	users	sign_in_count	\N	UPDATE	1	2	integer	2012-05-19 04:32:36.925807	2012-05-19 04:32:36.92607	User::Agency
298	19	3	users	remember_created_at	3	UPDATE	2012-05-19 04:32:36.813292	\N	timestamp without time zone	2012-05-19 04:36:27.781381	2012-05-19 04:36:27.781737	User::Agency
299	32	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:37:02.091338	timestamp without time zone	2012-05-19 04:37:02.095528	2012-05-19 04:37:02.095828	User::Moderator
300	33	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 03:35:58.079200	2012-05-19 04:16:26.297398	timestamp without time zone	2012-05-19 04:37:02.1605	2012-05-19 04:37:02.160784	User::Moderator
301	34	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:16:26.297398	2012-05-19 04:37:02.155405	timestamp without time zone	2012-05-19 04:37:02.166083	2012-05-19 04:37:02.166404	User::Moderator
302	35	2	users	sign_in_count	\N	UPDATE	4	5	integer	2012-05-19 04:37:02.171869	2012-05-19 04:37:02.172172	User::Moderator
303	36	2	users	remember_created_at	2	UPDATE	2012-05-19 04:37:02.091338	\N	timestamp without time zone	2012-05-19 04:39:14.837028	2012-05-19 04:39:14.837275	User::Moderator
304	20	3	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:39:54.549514	timestamp without time zone	2012-05-19 04:39:54.553202	2012-05-19 04:39:54.55345	User::Agency
305	21	3	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:15:27.000151	2012-05-19 04:32:36.824717	timestamp without time zone	2012-05-19 04:39:54.565917	2012-05-19 04:39:54.566129	User::Agency
306	22	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:32:36.824717	2012-05-19 04:39:54.562301	timestamp without time zone	2012-05-19 04:39:54.569876	2012-05-19 04:39:54.570041	User::Agency
307	23	3	users	sign_in_count	\N	UPDATE	2	3	integer	2012-05-19 04:39:54.574531	2012-05-19 04:39:54.574724	User::Agency
308	24	3	users	remember_created_at	3	UPDATE	2012-05-19 04:39:54.549514	\N	timestamp without time zone	2012-05-19 04:46:26.109037	2012-05-19 04:46:26.109348	User::Agency
309	37	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:47:18.334371	timestamp without time zone	2012-05-19 04:47:18.339416	2012-05-19 04:47:18.339726	User::Moderator
310	38	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:16:26.297398	2012-05-19 04:37:02.155405	timestamp without time zone	2012-05-19 04:47:18.349898	2012-05-19 04:47:18.350347	User::Moderator
311	39	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:37:02.155405	2012-05-19 04:47:18.345135	timestamp without time zone	2012-05-19 04:47:18.355629	2012-05-19 04:47:18.355862	User::Moderator
312	40	2	users	sign_in_count	\N	UPDATE	5	6	integer	2012-05-19 04:47:18.360841	2012-05-19 04:47:18.361082	User::Moderator
313	41	2	users	remember_created_at	2	UPDATE	2012-05-19 04:47:18.334371	\N	timestamp without time zone	2012-05-19 04:51:33.409932	2012-05-19 04:51:33.410316	User::Moderator
314	25	3	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:52:01.972295	timestamp without time zone	2012-05-19 04:52:01.976683	2012-05-19 04:52:01.97713	User::Agency
315	26	3	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:32:36.824717	2012-05-19 04:39:54.562301	timestamp without time zone	2012-05-19 04:52:02.20459	2012-05-19 04:52:02.205023	User::Agency
316	27	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:39:54.562301	2012-05-19 04:52:02.199822	timestamp without time zone	2012-05-19 04:52:02.211218	2012-05-19 04:52:02.211518	User::Agency
317	28	3	users	sign_in_count	\N	UPDATE	3	4	integer	2012-05-19 04:52:02.217416	2012-05-19 04:52:02.21777	User::Agency
318	29	3	users	remember_created_at	3	UPDATE	2012-05-19 04:52:01.972295	\N	timestamp without time zone	2012-05-19 04:52:45.12075	2012-05-19 04:52:45.12107	User::Agency
319	42	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:54:01.133450	timestamp without time zone	2012-05-19 04:54:01.138583	2012-05-19 04:54:01.13896	User::Moderator
320	43	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:37:02.155405	2012-05-19 04:47:18.345135	timestamp without time zone	2012-05-19 04:54:01.153324	2012-05-19 04:54:01.153635	User::Moderator
321	44	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:47:18.345135	2012-05-19 04:54:01.148740	timestamp without time zone	2012-05-19 04:54:01.158593	2012-05-19 04:54:01.158827	User::Moderator
322	45	2	users	sign_in_count	\N	UPDATE	6	7	integer	2012-05-19 04:54:01.163526	2012-05-19 04:54:01.163745	User::Moderator
323	46	2	users	remember_created_at	2	UPDATE	2012-05-19 04:54:01.133450	\N	timestamp without time zone	2012-05-19 04:56:33.135624	2012-05-19 04:56:33.136047	User::Moderator
324	62	1	users	remember_created_at	\N	UPDATE	\N	2012-05-19 04:57:44.878283	timestamp without time zone	2012-05-19 04:57:44.883103	2012-05-19 04:57:44.883456	User
325	63	1	users	last_sign_in_at	\N	UPDATE	2012-05-18 18:01:59.087586	2012-05-19 03:50:48.469261	timestamp without time zone	2012-05-19 04:57:44.895206	2012-05-19 04:57:44.895609	User
326	64	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 03:50:48.469261	2012-05-19 04:57:44.890523	timestamp without time zone	2012-05-19 04:57:44.900626	2012-05-19 04:57:44.900967	User
327	65	1	users	sign_in_count	\N	UPDATE	4	5	integer	2012-05-19 04:57:44.907389	2012-05-19 04:57:44.907635	User
328	66	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 03:50:48.469261	2012-05-19 04:57:44.890523	timestamp without time zone	2012-05-19 05:01:01.79116	2012-05-19 05:01:01.791677	User
329	67	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:57:44.890523	2012-05-19 05:01:01.780790	timestamp without time zone	2012-05-19 05:01:01.809868	2012-05-19 05:01:01.81027	User
330	68	1	users	sign_in_count	\N	UPDATE	5	6	integer	2012-05-19 05:01:01.829666	2012-05-19 05:01:01.830027	User
331	47	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:47:18.345135	2012-05-19 04:54:01.148740	timestamp without time zone	2012-05-19 05:03:00.045124	2012-05-19 05:03:00.04548	User::Moderator
332	48	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:54:01.148740	2012-05-19 05:03:00.039351	timestamp without time zone	2012-05-19 05:03:00.052109	2012-05-19 05:03:00.052438	User::Moderator
333	49	2	users	sign_in_count	\N	UPDATE	7	8	integer	2012-05-19 05:03:00.057666	2012-05-19 05:03:00.057897	User::Moderator
334	69	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:57:44.890523	2012-05-19 05:01:01.780790	timestamp without time zone	2012-05-19 05:04:14.841696	2012-05-19 05:04:14.842031	User
335	70	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:01:01.780790	2012-05-19 05:04:14.835939	timestamp without time zone	2012-05-19 05:04:14.846782	2012-05-19 05:04:14.847044	User
336	71	1	users	sign_in_count	\N	UPDATE	6	7	integer	2012-05-19 05:04:14.851932	2012-05-19 05:04:14.852106	User
337	72	1	users	remember_created_at	1	UPDATE	2012-05-19 04:57:44.878283	\N	timestamp without time zone	2012-05-19 05:05:14.335064	2012-05-19 05:05:14.335493	User
338	50	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:54:01.148740	2012-05-19 05:03:00.039351	timestamp without time zone	2012-05-19 05:06:15.278713	2012-05-19 05:06:15.2791	User::Moderator
339	51	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:03:00.039351	2012-05-19 05:06:15.274614	timestamp without time zone	2012-05-19 05:06:15.283911	2012-05-19 05:06:15.28423	User::Moderator
340	52	2	users	sign_in_count	\N	UPDATE	8	9	integer	2012-05-19 05:06:15.288316	2012-05-19 05:06:15.288538	User::Moderator
341	30	3	users	last_sign_in_at	\N	UPDATE	2012-05-19 04:39:54.562301	2012-05-19 04:52:02.199822	timestamp without time zone	2012-05-19 05:06:55.747908	2012-05-19 05:06:55.748228	User::Agency
342	31	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 04:52:02.199822	2012-05-19 05:06:55.742662	timestamp without time zone	2012-05-19 05:06:55.754824	2012-05-19 05:06:55.755177	User::Agency
343	32	3	users	sign_in_count	\N	UPDATE	4	5	integer	2012-05-19 05:06:55.760228	2012-05-19 05:06:55.760451	User::Agency
344	73	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:01:01.780790	2012-05-19 05:04:14.835939	timestamp without time zone	2012-05-19 05:14:44.141866	2012-05-19 05:14:44.142113	User
345	74	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:04:14.835939	2012-05-19 05:14:44.138044	timestamp without time zone	2012-05-19 05:14:44.146176	2012-05-19 05:14:44.146421	User
346	75	1	users	sign_in_count	\N	UPDATE	7	8	integer	2012-05-19 05:14:44.151608	2012-05-19 05:14:44.151866	User
347	33	3	users	remember_created_at	1	UPDATE	\N	2012-05-19 05:14:59.222801	timestamp without time zone	2012-05-19 05:14:59.227891	2012-05-19 05:14:59.228218	User::Agency
348	34	3	users	last_sign_in_at	1	UPDATE	2012-05-19 04:52:02.199822	2012-05-19 05:06:55.742662	timestamp without time zone	2012-05-19 05:14:59.239757	2012-05-19 05:14:59.240033	User::Agency
349	35	3	users	current_sign_in_at	1	UPDATE	2012-05-19 05:06:55.742662	2012-05-19 05:14:59.234846	timestamp without time zone	2012-05-19 05:14:59.245022	2012-05-19 05:14:59.245266	User::Agency
350	36	3	users	sign_in_count	1	UPDATE	5	6	integer	2012-05-19 05:14:59.250954	2012-05-19 05:14:59.251189	User::Agency
351	37	3	users	remember_created_at	3	UPDATE	2012-05-19 05:14:59.222801	\N	timestamp without time zone	2012-05-19 05:15:16.982378	2012-05-19 05:15:16.982694	User::Agency
352	53	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 05:17:47.166300	timestamp without time zone	2012-05-19 05:17:47.171116	2012-05-19 05:17:47.17181	User::Moderator
353	54	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:03:00.039351	2012-05-19 05:06:15.274614	timestamp without time zone	2012-05-19 05:17:47.187503	2012-05-19 05:17:47.187785	User::Moderator
354	55	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:06:15.274614	2012-05-19 05:17:47.182291	timestamp without time zone	2012-05-19 05:17:47.1934	2012-05-19 05:17:47.193636	User::Moderator
355	56	2	users	sign_in_count	\N	UPDATE	9	10	integer	2012-05-19 05:17:47.198048	2012-05-19 05:17:47.198285	User::Moderator
356	57	2	users	remember_created_at	2	UPDATE	2012-05-19 05:17:47.166300	\N	timestamp without time zone	2012-05-19 05:18:47.151685	2012-05-19 05:18:47.151958	User::Moderator
357	76	1	users	remember_created_at	\N	UPDATE	\N	2012-05-19 05:19:17.377083	timestamp without time zone	2012-05-19 05:19:17.382175	2012-05-19 05:19:17.382577	User
358	77	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:04:14.835939	2012-05-19 05:14:44.138044	timestamp without time zone	2012-05-19 05:19:17.399841	2012-05-19 05:19:17.400129	User
359	78	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:14:44.138044	2012-05-19 05:19:17.396002	timestamp without time zone	2012-05-19 05:19:17.404585	2012-05-19 05:19:17.40478	User
360	79	1	users	sign_in_count	\N	UPDATE	8	9	integer	2012-05-19 05:19:17.408687	2012-05-19 05:19:17.408924	User
361	1	4	users	id	1	INSERT	\N	4	integer	2012-05-19 05:26:51.062539	2012-05-19 05:26:51.062918	User::Moderator
362	1	4	users	email	1	INSERT	\N	ad1@example.com	character varying(255)	2012-05-19 05:26:51.067115	2012-05-19 05:26:51.067432	User::Moderator
363	1	4	users	encrypted_password	1	INSERT	\N	737e033bc57414c641b476a47a694017bbfe03b7016c308284cabd1c59b1cfc8832af7eb2b2ba4bce04806c81db865c67e8cfa078ac4907cbbcaf256b006aa83	character varying(255)	2012-05-19 05:26:51.070754	2012-05-19 05:26:51.070919	User::Moderator
364	1	4	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-19 05:26:51.073941	2012-05-19 05:26:51.074124	User::Moderator
365	1	4	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-19 05:26:51.077105	2012-05-19 05:26:51.077273	User::Moderator
366	1	4	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-19 05:26:51.080592	2012-05-19 05:26:51.080927	User::Moderator
367	1	4	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-19 05:26:51.085013	2012-05-19 05:26:51.08536	User::Moderator
368	1	4	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-19 05:26:51.089791	2012-05-19 05:26:51.090013	User::Moderator
369	1	4	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-19 05:26:51.09297	2012-05-19 05:26:51.093132	User::Moderator
370	1	4	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-19 05:26:51.096945	2012-05-19 05:26:51.097277	User::Moderator
371	1	4	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-19 05:26:51.102565	2012-05-19 05:26:51.102846	User::Moderator
372	1	4	users	password_salt	1	INSERT	\N	iwe2yD1P5mmqysC6PhwF	character varying(255)	2012-05-19 05:26:51.107357	2012-05-19 05:26:51.107727	User::Moderator
373	1	4	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-19 05:26:51.112964	2012-05-19 05:26:51.113299	User::Moderator
374	1	4	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-19 05:26:51.117194	2012-05-19 05:26:51.117425	User::Moderator
375	1	4	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-19 05:26:51.121116	2012-05-19 05:26:51.121342	User::Moderator
376	1	4	users	created_at	1	INSERT	\N	2012-05-19 05:26:51.053275	timestamp without time zone	2012-05-19 05:26:51.12505	2012-05-19 05:26:51.125294	User::Moderator
377	1	4	users	updated_at	1	INSERT	\N	2012-05-19 05:26:51.053275	timestamp without time zone	2012-05-19 05:26:51.129601	2012-05-19 05:26:51.129833	User::Moderator
378	1	4	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-19 05:26:51.133726	2012-05-19 05:26:51.133958	User::Moderator
379	1	4	users	type	1	INSERT	\N	User::Moderator	character varying(255)	2012-05-19 05:26:51.137974	2012-05-19 05:26:51.138336	User::Moderator
380	1	4	users	is_partner	1	INSERT	\N	\N	boolean	2012-05-19 05:26:51.142422	2012-05-19 05:26:51.142701	User::Moderator
381	1	4	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-19 05:26:51.14634	2012-05-19 05:26:51.146563	User::Moderator
382	80	1	users	remember_created_at	1	UPDATE	2012-05-19 05:19:17.377083	\N	timestamp without time zone	2012-05-19 05:28:55.784132	2012-05-19 05:28:55.784618	User
383	3	4	users	remember_created_at	\N	UPDATE	\N	2012-05-19 05:29:19.768692	timestamp without time zone	2012-05-19 05:29:19.773636	2012-05-19 05:29:19.773953	User::Moderator
384	4	4	users	last_sign_in_at	\N	UPDATE	\N	2012-05-19 05:29:19.780665	timestamp without time zone	2012-05-19 05:29:19.785913	2012-05-19 05:29:19.786225	User::Moderator
385	5	4	users	current_sign_in_at	\N	UPDATE	\N	2012-05-19 05:29:19.780665	timestamp without time zone	2012-05-19 05:29:19.791312	2012-05-19 05:29:19.791539	User::Moderator
386	6	4	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-19 05:29:19.795997	2012-05-19 05:29:19.796222	User::Moderator
387	7	4	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-19 05:29:19.800886	2012-05-19 05:29:19.801107	User::Moderator
388	8	4	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-19 05:29:19.805658	2012-05-19 05:29:19.805877	User::Moderator
389	9	4	users	remember_created_at	4	UPDATE	2012-05-19 05:29:19.768692	\N	timestamp without time zone	2012-05-19 05:29:44.819915	2012-05-19 05:29:44.820178	User::Moderator
390	58	2	users	remember_created_at	\N	UPDATE	\N	2012-05-19 05:30:11.653599	timestamp without time zone	2012-05-19 05:30:11.659653	2012-05-19 05:30:11.659995	User::Moderator
391	59	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:06:15.274614	2012-05-19 05:17:47.182291	timestamp without time zone	2012-05-19 05:30:11.675449	2012-05-19 05:30:11.675725	User::Moderator
392	60	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:17:47.182291	2012-05-19 05:30:11.670683	timestamp without time zone	2012-05-19 05:30:11.680698	2012-05-19 05:30:11.68092	User::Moderator
393	61	2	users	sign_in_count	\N	UPDATE	10	11	integer	2012-05-19 05:30:11.685529	2012-05-19 05:30:11.685774	User::Moderator
394	81	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:14:44.138044	2012-05-19 05:19:17.396002	timestamp without time zone	2012-05-19 05:54:03.833086	2012-05-19 05:54:03.833591	User
395	82	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:19:17.396002	2012-05-19 05:54:03.825687	timestamp without time zone	2012-05-19 05:54:03.83912	2012-05-19 05:54:03.839356	User
396	83	1	users	sign_in_count	\N	UPDATE	9	10	integer	2012-05-19 05:54:03.844095	2012-05-19 05:54:03.844316	User
397	38	3	users	is_partner	1	UPDATE	f	t	boolean	2012-05-19 05:58:13.03998	2012-05-19 05:58:13.040376	User::Agency
398	62	2	users	last_sign_in_at	1	UPDATE	2012-05-19 05:17:47.182291	2012-05-19 05:30:11.670683	timestamp without time zone	2012-05-19 06:03:19.298587	2012-05-19 06:03:19.298947	User::Moderator
399	63	2	users	current_sign_in_at	1	UPDATE	2012-05-19 05:30:11.670683	2012-05-19 06:03:19.293271	timestamp without time zone	2012-05-19 06:03:19.304932	2012-05-19 06:03:19.30518	User::Moderator
400	64	2	users	sign_in_count	1	UPDATE	11	12	integer	2012-05-19 06:03:19.309981	2012-05-19 06:03:19.310161	User::Moderator
401	65	2	users	remember_created_at	2	UPDATE	2012-05-19 05:30:11.653599	\N	timestamp without time zone	2012-05-19 06:03:24.867944	2012-05-19 06:03:24.868313	User::Moderator
402	84	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:19:17.396002	2012-05-19 05:54:03.825687	timestamp without time zone	2012-05-19 06:03:45.960096	2012-05-19 06:03:45.960434	User
403	85	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:54:03.825687	2012-05-19 06:03:45.954548	timestamp without time zone	2012-05-19 06:03:45.965748	2012-05-19 06:03:45.966023	User
404	86	1	users	sign_in_count	\N	UPDATE	10	11	integer	2012-05-19 06:03:45.970864	2012-05-19 06:03:45.9711	User
405	87	1	users	last_sign_in_at	1	UPDATE	2012-05-19 05:54:03.825687	2012-05-19 06:03:45.954548	timestamp without time zone	2012-05-19 06:03:50.073394	2012-05-19 06:03:50.073727	User
406	88	1	users	current_sign_in_at	1	UPDATE	2012-05-19 06:03:45.954548	2012-05-19 06:03:50.068703	timestamp without time zone	2012-05-19 06:03:50.079695	2012-05-19 06:03:50.079918	User
407	89	1	users	sign_in_count	1	UPDATE	11	12	integer	2012-05-19 06:03:50.084595	2012-05-19 06:03:50.084824	User
408	90	1	users	remember_created_at	\N	UPDATE	\N	2012-05-19 06:36:18.481332	timestamp without time zone	2012-05-19 06:36:18.487265	2012-05-19 06:36:18.487623	User
409	91	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 06:03:45.954548	2012-05-19 06:03:50.068703	timestamp without time zone	2012-05-19 06:36:18.526424	2012-05-19 06:36:18.526892	User
410	92	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 06:03:50.068703	2012-05-19 06:36:18.520558	timestamp without time zone	2012-05-19 06:36:18.533372	2012-05-19 06:36:18.533739	User
411	93	1	users	sign_in_count	\N	UPDATE	12	13	integer	2012-05-19 06:36:18.539084	2012-05-19 06:36:18.53936	User
412	39	3	users	remember_created_at	\N	UPDATE	\N	2012-05-19 11:20:09.825263	timestamp without time zone	2012-05-19 11:20:09.828925	2012-05-19 11:20:09.829169	User::Agency
413	40	3	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:06:55.742662	2012-05-19 05:14:59.234846	timestamp without time zone	2012-05-19 11:20:10.0759	2012-05-19 11:20:10.076206	User::Agency
414	41	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 05:14:59.234846	2012-05-19 11:20:10.070545	timestamp without time zone	2012-05-19 11:20:10.081065	2012-05-19 11:20:10.081316	User::Agency
415	42	3	users	sign_in_count	\N	UPDATE	6	7	integer	2012-05-19 11:20:10.086532	2012-05-19 11:20:10.086771	User::Agency
416	94	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 06:03:50.068703	2012-05-19 06:36:18.520557	timestamp without time zone	2012-05-20 03:42:04.911027	2012-05-20 03:42:04.911261	User
417	95	1	users	current_sign_in_at	\N	UPDATE	2012-05-19 06:36:18.520557	2012-05-20 03:42:04.906809	timestamp without time zone	2012-05-20 03:42:04.91547	2012-05-20 03:42:04.915644	User
418	96	1	users	sign_in_count	\N	UPDATE	13	14	integer	2012-05-20 03:42:04.919981	2012-05-20 03:42:04.920168	User
419	97	1	users	last_sign_in_at	\N	UPDATE	2012-05-19 06:36:18.520557	2012-05-20 03:42:04.906809	timestamp without time zone	2012-05-22 04:39:05.645417	2012-05-22 04:39:05.646986	User
420	98	1	users	current_sign_in_at	\N	UPDATE	2012-05-20 03:42:04.906809	2012-05-22 04:39:05.602846	timestamp without time zone	2012-05-22 04:39:05.654899	2012-05-22 04:39:05.655259	User
421	99	1	users	sign_in_count	\N	UPDATE	14	15	integer	2012-05-22 04:39:05.660143	2012-05-22 04:39:05.660327	User
422	100	1	users	last_sign_in_at	\N	UPDATE	2012-05-20 03:42:04.906809	2012-05-22 04:39:05.602846	timestamp without time zone	2012-05-22 08:33:28.715828	2012-05-22 08:33:28.71605	User
423	101	1	users	current_sign_in_at	\N	UPDATE	2012-05-22 04:39:05.602846	2012-05-22 08:33:28.711732	timestamp without time zone	2012-05-22 08:33:28.720064	2012-05-22 08:33:28.720242	User
424	102	1	users	sign_in_count	\N	UPDATE	15	16	integer	2012-05-22 08:33:28.723932	2012-05-22 08:33:28.724097	User
425	103	1	users	last_sign_in_at	\N	UPDATE	2012-05-22 04:39:05.602846	2012-05-22 08:33:28.711732	timestamp without time zone	2012-05-22 12:59:38.819627	2012-05-22 12:59:38.820018	User
426	104	1	users	current_sign_in_at	\N	UPDATE	2012-05-22 08:33:28.711732	2012-05-22 12:59:38.815584	timestamp without time zone	2012-05-22 12:59:38.824604	2012-05-22 12:59:38.824871	User
427	105	1	users	sign_in_count	\N	UPDATE	16	17	integer	2012-05-22 12:59:38.83119	2012-05-22 12:59:38.83168	User
428	66	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:30:11.670683	2012-05-19 06:03:19.293271	timestamp without time zone	2012-05-23 09:19:18.463989	2012-05-23 09:19:18.465213	User::Moderator
429	67	2	users	current_sign_in_at	\N	UPDATE	2012-05-19 06:03:19.293271	2012-05-23 09:19:18.428985	timestamp without time zone	2012-05-23 09:19:18.471402	2012-05-23 09:19:18.471727	User::Moderator
430	68	2	users	sign_in_count	\N	UPDATE	12	13	integer	2012-05-23 09:19:18.476583	2012-05-23 09:19:18.47683	User::Moderator
431	106	1	users	last_sign_in_at	2	UPDATE	2012-05-22 08:33:28.711732	2012-05-22 12:59:38.815584	timestamp without time zone	2012-05-23 09:20:52.725119	2012-05-23 09:20:52.725528	User
432	107	1	users	current_sign_in_at	2	UPDATE	2012-05-22 12:59:38.815584	2012-05-23 09:20:52.718740	timestamp without time zone	2012-05-23 09:20:52.731261	2012-05-23 09:20:52.731471	User
433	108	1	users	sign_in_count	2	UPDATE	17	18	integer	2012-05-23 09:20:52.735877	2012-05-23 09:20:52.736129	User
434	109	1	users	last_sign_in_at	1	UPDATE	2012-05-22 12:59:38.815584	2012-05-23 09:20:52.718740	timestamp without time zone	2012-05-23 09:21:04.626243	2012-05-23 09:21:04.626623	User
435	110	1	users	current_sign_in_at	1	UPDATE	2012-05-23 09:20:52.718740	2012-05-23 09:21:04.620396	timestamp without time zone	2012-05-23 09:21:04.633486	2012-05-23 09:21:04.633831	User
436	111	1	users	sign_in_count	1	UPDATE	18	19	integer	2012-05-23 09:21:04.639676	2012-05-23 09:21:04.639965	User
437	1	5	users	id	1	INSERT	\N	5	integer	2012-05-23 09:27:26.065166	2012-05-23 09:27:26.065502	User::Agency
438	1	5	users	email	1	INSERT	\N	asdsad@sadfsdf.ru	character varying(255)	2012-05-23 09:27:26.069402	2012-05-23 09:27:26.069744	User::Agency
439	1	5	users	encrypted_password	1	INSERT	\N	559e4a54bba2df43a6112726d45a14ee15e571a186144002933ac9f4968aa1eb65153a4ef6bfa7e3d29975da84528638fa41510715d6b6f8fe9581cf2fc88cfd	character varying(255)	2012-05-23 09:27:26.072919	2012-05-23 09:27:26.073134	User::Agency
440	1	5	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-23 09:27:26.076179	2012-05-23 09:27:26.076405	User::Agency
441	1	5	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-23 09:27:26.079997	2012-05-23 09:27:26.080299	User::Agency
442	1	5	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-23 09:27:26.084524	2012-05-23 09:27:26.08476	User::Agency
443	1	5	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-23 09:27:26.088578	2012-05-23 09:27:26.088855	User::Agency
444	1	5	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-23 09:27:26.092341	2012-05-23 09:27:26.092686	User::Agency
445	1	5	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-23 09:27:26.096072	2012-05-23 09:27:26.096398	User::Agency
446	1	5	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-23 09:27:26.100503	2012-05-23 09:27:26.100879	User::Agency
447	1	5	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-23 09:27:26.104479	2012-05-23 09:27:26.104709	User::Agency
448	1	5	users	password_salt	1	INSERT	\N	Vr2ViqiPgQs5q9KLnLqU	character varying(255)	2012-05-23 09:27:26.107774	2012-05-23 09:27:26.107986	User::Agency
449	1	5	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-23 09:27:26.111411	2012-05-23 09:27:26.111631	User::Agency
450	1	5	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-23 09:27:26.115125	2012-05-23 09:27:26.115355	User::Agency
451	1	5	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-23 09:27:26.118381	2012-05-23 09:27:26.118589	User::Agency
452	1	5	users	created_at	1	INSERT	\N	2012-05-23 09:27:26.053468	timestamp without time zone	2012-05-23 09:27:26.121767	2012-05-23 09:27:26.121989	User::Agency
453	1	5	users	updated_at	1	INSERT	\N	2012-05-23 09:27:26.053468	timestamp without time zone	2012-05-23 09:27:26.126012	2012-05-23 09:27:26.126338	User::Agency
454	1	5	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-23 09:27:26.130126	2012-05-23 09:27:26.130494	User::Agency
455	1	5	users	type	1	INSERT	\N	User::Agency	character varying(255)	2012-05-23 09:27:26.134587	2012-05-23 09:27:26.13482	User::Agency
456	1	5	users	is_partner	1	INSERT	\N	t	boolean	2012-05-23 09:27:26.138712	2012-05-23 09:27:26.139007	User::Agency
457	1	5	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-23 09:27:26.142324	2012-05-23 09:27:26.142576	User::Agency
458	112	1	users	last_sign_in_at	\N	UPDATE	2012-05-23 09:20:52.718740	2012-05-23 09:21:04.620396	timestamp without time zone	2012-05-24 08:37:30.283951	2012-05-24 08:37:30.284315	User
459	113	1	users	current_sign_in_at	\N	UPDATE	2012-05-23 09:21:04.620396	2012-05-24 08:37:30.275156	timestamp without time zone	2012-05-24 08:37:30.289753	2012-05-24 08:37:30.289999	User
460	114	1	users	sign_in_count	\N	UPDATE	19	20	integer	2012-05-24 08:37:30.294627	2012-05-24 08:37:30.294882	User
461	69	2	users	last_sign_in_at	\N	UPDATE	2012-05-19 06:03:19.293271	2012-05-23 09:19:18.428985	timestamp without time zone	2012-05-24 09:14:00.461038	2012-05-24 09:14:00.46131	User::Moderator
462	70	2	users	current_sign_in_at	\N	UPDATE	2012-05-23 09:19:18.428985	2012-05-24 09:14:00.453720	timestamp without time zone	2012-05-24 09:14:00.466093	2012-05-24 09:14:00.46632	User::Moderator
463	71	2	users	sign_in_count	\N	UPDATE	13	14	integer	2012-05-24 09:14:00.47003	2012-05-24 09:14:00.470352	User::Moderator
464	115	1	users	last_sign_in_at	\N	UPDATE	2012-05-23 09:21:04.620396	2012-05-24 08:37:30.275156	timestamp without time zone	2012-05-24 09:14:14.944964	2012-05-24 09:14:14.945347	User
465	116	1	users	current_sign_in_at	\N	UPDATE	2012-05-24 08:37:30.275156	2012-05-24 09:14:14.939600	timestamp without time zone	2012-05-24 09:14:14.950162	2012-05-24 09:14:14.950355	User
466	117	1	users	sign_in_count	\N	UPDATE	20	21	integer	2012-05-24 09:14:14.954888	2012-05-24 09:14:14.955148	User
467	118	1	users	remember_created_at	1	UPDATE	2012-05-19 06:36:18.481332	\N	timestamp without time zone	2012-05-24 09:43:08.15504	2012-05-24 09:43:08.155468	User
468	119	1	users	last_sign_in_at	\N	UPDATE	2012-05-24 08:37:30.275156	2012-05-24 09:14:14.939600	timestamp without time zone	2012-05-24 09:43:18.922252	2012-05-24 09:43:18.922631	User
469	120	1	users	current_sign_in_at	\N	UPDATE	2012-05-24 09:14:14.939600	2012-05-24 09:43:18.917973	timestamp without time zone	2012-05-24 09:43:18.927202	2012-05-24 09:43:18.927392	User
470	121	1	users	sign_in_count	\N	UPDATE	21	22	integer	2012-05-24 09:43:18.930807	2012-05-24 09:43:18.93098	User
471	1	6	users	id	1	INSERT	\N	6	integer	2012-05-24 09:53:00.592687	2012-05-24 09:53:00.593098	User::Moderator
472	1	6	users	email	1	INSERT	\N	info@sr.com	character varying(255)	2012-05-24 09:53:00.597376	2012-05-24 09:53:00.597631	User::Moderator
473	1	6	users	encrypted_password	1	INSERT	\N	8bfa4e4c244f8b9848c041f05c71c379499e40644a8b65638ce6f294e15e8bdae608507c8c92adbd94c9a779e8d425a8552d200c534f8cb092c6d29ede1d56eb	character varying(255)	2012-05-24 09:53:00.600481	2012-05-24 09:53:00.600658	User::Moderator
474	1	6	users	reset_password_token	1	INSERT	\N	\N	character varying(255)	2012-05-24 09:53:00.60338	2012-05-24 09:53:00.603553	User::Moderator
475	1	6	users	reset_password_sent_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-24 09:53:00.606635	2012-05-24 09:53:00.606864	User::Moderator
476	1	6	users	remember_created_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-24 09:53:00.609744	2012-05-24 09:53:00.609968	User::Moderator
477	1	6	users	sign_in_count	1	INSERT	\N	0	integer	2012-05-24 09:53:00.612944	2012-05-24 09:53:00.613116	User::Moderator
478	1	6	users	current_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-24 09:53:00.616066	2012-05-24 09:53:00.616243	User::Moderator
479	1	6	users	last_sign_in_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-24 09:53:00.67181	2012-05-24 09:53:00.672055	User::Moderator
480	1	6	users	current_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-24 09:53:00.676159	2012-05-24 09:53:00.676479	User::Moderator
481	1	6	users	last_sign_in_ip	1	INSERT	\N	\N	character varying(255)	2012-05-24 09:53:00.68016	2012-05-24 09:53:00.680464	User::Moderator
482	1	6	users	password_salt	1	INSERT	\N	bypuXadqpUGzadBgEnwF	character varying(255)	2012-05-24 09:53:00.683721	2012-05-24 09:53:00.683921	User::Moderator
483	1	6	users	failed_attempts	1	INSERT	\N	0	integer	2012-05-24 09:53:00.68724	2012-05-24 09:53:00.687424	User::Moderator
484	1	6	users	unlock_token	1	INSERT	\N	\N	character varying(255)	2012-05-24 09:53:00.690154	2012-05-24 09:53:00.690325	User::Moderator
485	1	6	users	locked_at	1	INSERT	\N	\N	timestamp without time zone	2012-05-24 09:53:00.693024	2012-05-24 09:53:00.69319	User::Moderator
486	1	6	users	created_at	1	INSERT	\N	2012-05-24 09:53:00.583779	timestamp without time zone	2012-05-24 09:53:00.696058	2012-05-24 09:53:00.696278	User::Moderator
487	1	6	users	updated_at	1	INSERT	\N	2012-05-24 09:53:00.583779	timestamp without time zone	2012-05-24 09:53:00.700308	2012-05-24 09:53:00.700571	User::Moderator
488	1	6	users	role	1	INSERT	\N	\N	character varying(255)	2012-05-24 09:53:00.704242	2012-05-24 09:53:00.704474	User::Moderator
489	1	6	users	type	1	INSERT	\N	User::Moderator	character varying(255)	2012-05-24 09:53:00.707489	2012-05-24 09:53:00.707676	User::Moderator
490	1	6	users	is_partner	1	INSERT	\N	\N	boolean	2012-05-24 09:53:00.711466	2012-05-24 09:53:00.711703	User::Moderator
491	1	6	users	new_messages_count	1	INSERT	\N	\N	integer	2012-05-24 09:53:00.715654	2012-05-24 09:53:00.715895	User::Moderator
492	2	5	users	failed_attempts	\N	UPDATE	0	1	integer	2012-05-24 10:11:03.704623	2012-05-24 10:11:03.704884	User::Agency
493	3	5	users	failed_attempts	\N	UPDATE	1	2	integer	2012-05-24 10:11:08.302016	2012-05-24 10:11:08.302337	User::Agency
494	4	5	users	failed_attempts	\N	UPDATE	2	3	integer	2012-05-24 10:11:21.432105	2012-05-24 10:11:21.432464	User::Agency
495	5	5	users	failed_attempts	1	UPDATE	3	4	integer	2012-05-24 10:11:50.189444	2012-05-24 10:11:50.18975	User::Agency
496	6	5	users	failed_attempts	\N	UPDATE	4	5	integer	2012-05-24 10:11:57.384798	2012-05-24 10:11:57.385079	User::Agency
497	7	5	users	failed_attempts	1	UPDATE	5	6	integer	2012-05-24 10:12:31.768263	2012-05-24 10:12:31.768781	User::Agency
498	8	5	users	failed_attempts	\N	UPDATE	6	7	integer	2012-05-24 10:12:41.722631	2012-05-24 10:12:41.722888	User::Agency
499	122	1	users	last_sign_in_at	\N	UPDATE	2012-05-24 09:14:14.939600	2012-05-24 09:43:18.917973	timestamp without time zone	2012-05-24 10:27:24.323793	2012-05-24 10:27:24.324137	User
500	123	1	users	current_sign_in_at	\N	UPDATE	2012-05-24 09:43:18.917973	2012-05-24 10:27:24.318654	timestamp without time zone	2012-05-24 10:27:24.329973	2012-05-24 10:27:24.330285	User
501	124	1	users	sign_in_count	\N	UPDATE	22	23	integer	2012-05-24 10:27:24.335553	2012-05-24 10:27:24.335897	User
502	9	5	users	failed_attempts	\N	UPDATE	7	0	integer	2012-05-24 10:27:37.104175	2012-05-24 10:27:37.104458	User::Agency
503	10	5	users	last_sign_in_at	\N	UPDATE	\N	2012-05-24 10:27:37.120336	timestamp without time zone	2012-05-24 10:27:37.124658	2012-05-24 10:27:37.124899	User::Agency
504	11	5	users	current_sign_in_at	\N	UPDATE	\N	2012-05-24 10:27:37.120336	timestamp without time zone	2012-05-24 10:27:37.128837	2012-05-24 10:27:37.129035	User::Agency
505	12	5	users	last_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-24 10:27:37.132877	2012-05-24 10:27:37.133081	User::Agency
506	13	5	users	current_sign_in_ip	\N	UPDATE	\N	127.0.0.1	character varying(255)	2012-05-24 10:27:37.137259	2012-05-24 10:27:37.137507	User::Agency
507	14	5	users	sign_in_count	\N	UPDATE	0	1	integer	2012-05-24 10:27:37.141772	2012-05-24 10:27:37.142022	User::Agency
508	15	5	users	failed_attempts	1	UPDATE	0	1	integer	2012-05-24 10:38:31.353312	2012-05-24 10:38:31.353638	User::Agency
509	16	5	users	failed_attempts	1	UPDATE	1	2	integer	2012-05-24 10:38:52.049183	2012-05-24 10:38:52.049567	User::Agency
510	17	5	users	failed_attempts	1	UPDATE	2	3	integer	2012-05-24 10:39:37.583186	2012-05-24 10:39:37.58346	User::Agency
511	18	5	users	email	1	UPDATE	asdsad@sadfsdf.ru	11@11.ru	character varying(255)	2012-05-24 10:40:18.694885	2012-05-24 10:40:18.695319	User::Agency
512	19	5	users	password_salt	1	UPDATE	Vr2ViqiPgQs5q9KLnLqU	Gy7qgvCJ4GUdm8sYtq54	character varying(255)	2012-05-24 10:40:18.700862	2012-05-24 10:40:18.701142	User::Agency
513	20	5	users	encrypted_password	1	UPDATE	559e4a54bba2df43a6112726d45a14ee15e571a186144002933ac9f4968aa1eb65153a4ef6bfa7e3d29975da84528638fa41510715d6b6f8fe9581cf2fc88cfd	2ea93b2e77ca0edc99dea74de0654f3796d38428bdc8d6e62e9524b132c066d4b9b317c02a5daa37d599cc14e5671152b31ad0f30221d5943f3ce724e95bf5d4	character varying(255)	2012-05-24 10:40:18.705696	2012-05-24 10:40:18.705969	User::Agency
514	21	5	users	failed_attempts	1	UPDATE	3	0	integer	2012-05-24 10:40:34.90743	2012-05-24 10:40:34.907702	User::Agency
515	22	5	users	current_sign_in_at	1	UPDATE	2012-05-24 10:27:37.120336	2012-05-24 10:40:34.924961	timestamp without time zone	2012-05-24 10:40:34.929999	2012-05-24 10:40:34.930335	User::Agency
516	23	5	users	sign_in_count	1	UPDATE	1	2	integer	2012-05-24 10:40:34.93629	2012-05-24 10:40:34.936621	User::Agency
517	43	3	users	last_sign_in_at	\N	UPDATE	2012-05-19 05:14:59.234846	2012-05-19 11:20:10.070545	timestamp without time zone	2012-05-24 10:41:37.0073	2012-05-24 10:41:37.007588	User::Agency
518	44	3	users	current_sign_in_at	\N	UPDATE	2012-05-19 11:20:10.070545	2012-05-24 10:41:37.002575	timestamp without time zone	2012-05-24 10:41:37.012306	2012-05-24 10:41:37.01255	User::Agency
519	45	3	users	sign_in_count	\N	UPDATE	7	8	integer	2012-05-24 10:41:37.01669	2012-05-24 10:41:37.016944	User::Agency
520	125	1	users	last_sign_in_at	\N	UPDATE	2012-05-24 09:43:18.917973	2012-05-24 10:27:24.318654	timestamp without time zone	2012-05-24 10:50:39.296803	2012-05-24 10:50:39.297162	User
521	126	1	users	current_sign_in_at	\N	UPDATE	2012-05-24 10:27:24.318654	2012-05-24 10:50:39.291930	timestamp without time zone	2012-05-24 10:50:39.301696	2012-05-24 10:50:39.301894	User
522	127	1	users	sign_in_count	\N	UPDATE	23	24	integer	2012-05-24 10:50:39.305968	2012-05-24 10:50:39.306228	User
523	1	281110143	hotel_reviews	published	1	UPDATE	f	t	boolean	2012-05-27 07:51:25.641656	2012-05-27 07:51:25.642252	Hotel::Review
524	1	298486374	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:51:49.336392	2012-05-27 07:51:49.336783	Hotel::Review
525	1	980190962	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:52:24.403965	2012-05-27 07:52:24.404219	Hotel::Review
526	1	113629430	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:52:25.444211	2012-05-27 07:52:25.444563	Hotel::Review
527	1	1018350795	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:52:26.283189	2012-05-27 07:52:26.283561	Hotel::Review
528	2	281110143	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:52:43.398549	2012-05-27 07:52:43.398915	Hotel::Review
529	1	51848956	hotel_reviews	published	1	UPDATE	t	f	boolean	2012-05-27 07:52:44.588089	2012-05-27 07:52:44.588434	Hotel::Review
530	2	113629430	hotel_reviews	published	1	UPDATE	f	t	boolean	2012-05-27 07:52:56.42156	2012-05-27 07:52:56.421821	Hotel::Review
531	2	1018350795	hotel_reviews	published	1	UPDATE	f	t	boolean	2012-05-27 07:52:57.582306	2012-05-27 07:52:57.58264	Hotel::Review
\.


--
-- Data for Name: cities_moderators; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY cities_moderators (moderator_id, city_id) FROM stdin;
40	2
40	3
40	5
40	6
40	7
40	8
40	9
46	2
46	3
46	5
46	6
46	7
46	8
46	9
46	10
40	10
22	4
28	2
28	3
28	5
28	6
28	7
28	8
28	9
49	2
49	3
49	5
49	6
49	7
49	8
49	9
49	10
50	3
50	5
50	6
50	7
50	8
50	9
2	25
2	26
2	27
2	28
2	29
2	30
2	31
2	32
2	33
2	34
2	35
2	36
2	37
2	38
52	25
52	26
52	27
52	28
52	29
52	30
52	31
52	32
52	33
52	34
52	35
52	36
52	37
52	38
52	39
\.


--
-- Data for Name: cities_tickets; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY cities_tickets (ticket_id, city_id) FROM stdin;
2	2
3	2
4	3
5	3
6	2
7	3
8	2
9	2
10	2
16	2
16	3
17	3
17	6
18	3
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
25	3
25	6
26	2
27	2
28	1
29	1
30	1
31	1
32	6
33	1
34	3
35	3
36	3
37	1
38	1
39	1
40	1
41	1
42	1
43	1
43	3
44	1
44	3
51	1
57	1
57	3
57	6
58	1
59	3
59	6
60	3
60	1
63	1
65	1
65	3
65	6
66	6
66	3
66	1
66	9
69	1
70	1
71	1
72	3
73	6
77	10
77	3
77	6
77	9
79	10
81	2
81	3
82	9
83	3
85	10
86	10
87	10
88	10
89	10
89	3
90	9
91	6
93	10
93	3
94	6
95	6
96	10
96	6
97	6
98	6
99	10
100	10
101	9
102	3
103	10
104	3
105	3
107	3
107	10
107	6
107	9
107	2
107	7
108	10
109	3
109	10
109	6
109	9
109	2
109	7
110	3
111	10
112	3
113	3
113	9
114	3
115	3
116	3
117	6
118	3
118	10
119	3
120	3
121	6
122	6
123	2
124	2
125	9
126	3
127	3
128	3
129	3
130	3
131	3
132	3
133	3
134	3
135	3
135	2
136	3
137	3
138	6
138	3
139	2
139	3
140	2
141	2
142	2
143	2
144	3
145	2
145	3
145	6
145	7
146	3
146	2
147	5
147	3
148	6
149	3
150	3
151	3
152	3
153	3
154	5
155	3
156	3
157	3
158	3
159	3
160	3
162	25
\.


--
-- Data for Name: contact_messages; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY contact_messages (id, name, email, subject, body, created_at, updated_at) FROM stdin;
1	Андрей	info@artmodel.ru	Ntvf gbcmvf	Спасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщенСпасибо за Ваше сообщен	2012-08-16 05:09:47.318782	2012-08-16 05:09:47.318782
2	Куприев Андрей	info@artmodel.ru	тема	ыфвавыф ыфва ыфва ыфва ыфв	2012-08-16 07:38:16.440132	2012-08-16 07:38:16.440132
3	Юрий Семенович	biggur@yandex.ru	Проверка	Проверка, проверка	2012-08-18 07:45:28.159806	2012-08-18 07:45:28.159806
4	Юрий Гуревич	biggur@mail.ru	Отвечай!	олр оллор олрдлждрдр джр длр рдлр дж	2012-08-19 04:38:00.170489	2012-08-19 04:38:00.170489
5	Юрий Гуревич	biggur@mail.ru	Проверка	полп лдо дол полд лпод лдо плдо полд плдо плд	2012-08-26 04:20:39.023213	2012-08-26 04:20:39.023213
\.


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY documents (id, name, attach_file_name, attach_content_type, attach_file_size, attach_updated_at, created_at, updated_at, description, "position") FROM stdin;
4	Заявка на бронирование (образец)	Заявка_на_бронирования_для_гостиницы.doc	application/msword	52736	2012-05-18 00:42:12	2012-05-18 00:42:12	2012-08-07 05:09:58.108352	\N	4
3	Паспорт туристической услуги (описание номера)	Паспорт_услуги_описание_номера_к_договору_с_гостиницей.xls	application/vnd.ms-excel	56320	2012-05-17 15:01:12	2012-05-17 15:01:12	2012-08-07 05:10:00.160876	Содержит описание номера, заполняется для каждого типа номера отдельно	3
2	Паспорт туристической услуги (общая часть)	Паспорт_туруслуги_общая_часть_к_договору_с_гостиницей.xls	application/vnd.ms-excel	53248	2012-05-17 14:59:49	2012-05-17 14:59:49	2012-08-18 07:50:34.609431	Содержит формальное описание гостиницы.	2
1	Агентский договор с гостиницей	Агентский_договор_с_гостиницей_окончательная_редакция!!!!!.doc	application/msword	104448	2012-05-17 14:58:08	2012-05-17 14:58:08	2012-08-18 07:50:34.61169	\N	1
7	Агентский договор с турагентством	Агентский_договор_туроператора_окончательная_редакция_!!!!.doc	application/msword	172032	2012-10-27 11:54:03.682933	2012-10-27 11:54:03.713926	2012-10-27 11:54:03.713926	договор между туристическим оператором и туристическим агентством	5
8	Заявка на бронирование	Заявка_на_бронирование_тура.doc	application/msword	34816	2012-10-27 11:56:27.680248	2012-10-27 11:56:27.685361	2012-10-27 11:56:27.685361	форма заявки (Приложение к договору с турагентством)	6
9	Приложение № 2 к договору с турагентством	Приложение_№_2_к_агентскому_договору.doc	application/msword	61952	2012-10-27 11:59:35.794806	2012-10-27 11:59:35.79983	2012-10-27 11:59:35.79983	отчет агента	7
10	Паспорт туристической услуги	Паспорт_туруслуги_к_договору_с_агентством.xls	application/octet-stream	55808	2012-10-27 12:03:44.667436	2012-10-27 12:03:44.672059	2012-10-27 12:03:44.672059	приложение к агентскому договору с турагентством (форма документа)	8
11	Туристический ваучер	ТУРИСТИЧЕСКИЙ_ВАУЧЕР.doc	application/msword	53248	2012-10-27 12:05:32.041126	2012-10-27 12:05:32.049136	2012-10-27 12:05:32.049136	приложение к договору с турагентством (форма)	9
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY email_templates (id, name, subject, body, created_at, updated_at) FROM stdin;
2	create_agency	Создание нового агентства	Емайл: {{user.email}}<br />\r\nИмя: {{user.profile.name}}<br />\r\nКомпания: {{user.profile.company_name}}<br />	2012-06-03 13:16:41	2012-07-06 00:51:35
3	contact	Запрос из контактов	Тема: {{message.subject}}<br />\r\nОтправитель: {{message.email}}<br /><br />\r\n\r\nТекст:<br />\r\n{{message.body}}	2012-07-04 08:28:00	2012-07-06 00:57:46
4	create_ticket	Новый запрос #{{ticket.id}}	<h2>Создан запрос #{{ticket.id}}</h2>\r\nПользователь <b>{{current_user.profile.name}}</b> из компании <b>{{current_user.profile.company_name}}</b>.<br />\r\n<br />\r\n\r\nСообщение:<br />\r\n<b>{{ticket.message.text}}</b><br />\r\n<br />\r\n\r\nЗапрос по номерам:<br />\r\n{% for room in ticket.rooms %}\r\n<b>{{forloop.index}}. {{room.name}}</b> из гостиницы {{room.hotel.name}} ({{room.hotel.city.name}})<br />\r\n{% endfor %}	2012-06-09 00:05:03	2012-07-11 02:30:44
5	close_ticket	Закрыт запрос #{{ticket.id}}	<h2>Закрыт запрос #{{ticket.id}}</h2>\r\n\r\n{% if ticket.closer.super_admin? %}Закрыл администратор{% endif %}\r\n{% if ticket.closer.moderator? %}Закрыл модератор {{ticket.closer.profile.name}} ({{ticket.closer.email}}){% endif %}\r\n{% if ticket.closer.agency? %}Закрыло агенство {{ticket.closer.profile.company_name}} ({{ticket.closer.email}}){% endif %}\r\n<br /><br />\r\n\r\nТекст переписки:<br />\r\n{% for message in ticket.messages %}\r\n<p><b>{{message.user.profile.name}}</b>: {{message.text}}</p>\r\n{% endfor %}	2012-07-17 06:52:01	2012-07-17 07:53:48
6	contact	Суперновое сообщения	Ты думаешь-как бы выжить\r\nВ этом мире хреновом,\r\nА я забирался выше-\r\nЯ думал построить новый.	2012-07-20 03:57:58	2012-07-20 03:57:58
1	create_message	Новое сообщение	<h2>Новое сообщение в запросе #{{message.ticket.id}}</h2>\r\nОтправил: {{current_user.profile.name}}<br />\r\n<br />\r\nСообщение:<br />\r\n{{message.text}}<br /><br />\r\n\r\nСсылка на запрос:<br />\r\n<a href="http://development.emerald-world.ru/tickets/{{message.ticket.id}}">http://development.emerald-world.ru/tickets/{{message.ticket.id}}</a>	2012-06-08 02:33:47	2012-07-24 10:33:42.461516
\.


--
-- Data for Name: hotel_bank_attributes; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_bank_attributes (id, hotel_id, name, bik, corr_account, current_account) FROM stdin;
26	983	Анапское ОСБ №1804 Юго-западного банка Сбербанка РФ г.Ростов-на-Дону	046015602	30101810600000000602	40802810230040100656
27	1196	Анапское ОСБ №1804/18040 Юго-западного банка СБ РФ	046015602	30101810600000000602	40817810930044615306
28	1023	филиал ЗАО Банк Зенит Сочи в г.Анапа	040304513	30101810900000000513	40802810400010000687
29	1197	филиал №8 ОАО КБ "Центр-инвест" в г.Краснодаре	040349550	30101810100000000550	40802810507300000101
30	1022	ОАО "ЮГ-Инвестбанк" г.Краснодар	040349066	30101810600000000966	40802810500880005639
31	544	Анапское ОСБ № 1804 Юго-западного банка Сбербанка РФ г.Ростов-на-Дону	046015602	30101810600000000602	40802810130040100439
32	1198	Юго-западный банк СБ РФ, г.Ростов-на-Дону	046015602	30101810600000000602	л/сч 40817810430044612207, п/к 639002309002792081 ср.действия 05/14
33	454	Юго-западный банк СБ РФ, г.Ростов-на-Дону, Анапское отделение № 1804 СБ РФ, ОАО	046015602	30101810600000000602	40802810630040000990
34	540	Юго-западный банк СБ РФ, г.Ростов-на-Дону, Анапское отделение №1804 Сбербанка России ОАО	046015602	30101810600000000602	40802810630040000990
35	450	Юго-западный банк СБ РФ, г.Ростов-на-Дону, Анапское отделение № 1804 СБ РФ, ОАО	046015602	30101810600000000602	40802810630040000990
36	1008	Акционерный банк "Первомайский" (ЗАО)	040349715	30101810000000000715	40802810900140000141
37	437	Филиал ОАО "Уралсиб" г.Новороссийск Дополнительный офис в г. Анапа	040395726	30101810300000000726	40802810161180004010
38	523	в ф-ле ЗАО "Банк Зенит Сочи" г. Анапа	\N	\N	40702810500010000661
39	1006	ЗАО "Банк Зенит Сочи" г.Сочи	040396717	\N	30101810400000000717
40	1094	Филиал ЗАО "Банк Зенит Сочи" в г.Анапа	040304513	30101810900000000513	40702810000010001474
41	602	ОАО Банк ЗЕНИТ Сочи в г. Сочи	040396717	30101810400000000717	40802810040010000313
42	1065	\N	\N	\N	\N
43	555	Филиал ОАО "Уралсиб" г.Новороссийск Дополнительный офис в г. Анапа	040395726	30101810300000000726	40802810861180005461
44	1035	Филиал ОАО "Урасиб" в г.Новороссийске	040395726	30101810300000000726	40802810861180005461
45	603	Филиал ОАО "Уралсиб" г.Новороссийск	040395726	30101810300000000726	40802810861180005461
46	633	\N	\N	\N	\N
47	990	Банк "Первомайский" (ЗАО)	040349715	301018100000000715	40802810800740000131
48	853	Краснодарский краевой инвестиционный банк, ГРКЦ ГУ Банка России по Краснодарскому краю	040349516	30101810500000000516	40817810100070864256
49	645	Анапское ОСБ №1804 Сбербанк России	\N	\N	л/с 42306810430043982874
50	1046	филиал ОАО "Уралсиб" в г.Новороссийске	040395726	30101810300000000726	40702810261180003626
51	1200	\N	\N	\N	\N
52	1069	Филиал ОАО "Банк"Уралсиб" в г. Новороссийске	040395726	30101810300000000726	40802810951020005800
53	1201	\N	\N	\N	\N
54	1202	Юго-западный банк СБ РФ, г.Ростов-на-Дону	046015602	30101810600000000602	40802810630040000974
55	1203	\N	\N	\N	\N
56	1102	операционный офис в г.Анапа, п.Витязево, ОАО "Крайинвестбанк" в г.Краснодар	040349516	30101810500000000516	40802810800070000707
57	1204	\N	\N	\N	\N
58	1205	Сочинский филиал КБ "РЭБ" (ЗАО)	040396554	30201810100000000554	40802810900060000334
59	671	Анапское ОСБ № 1804 Юго-западного банка Сбербанка России	046015602	30101810600000000602	л/с 40817810530043981994
60	644	ГРКЦ Банка России по Краснодарскому краю г. Краснодар	040349713	30101810400000000713	40817810000180000018
61	612	Филиал "Южный" ЗАО "Райффайзенбанк" в г. Краснодар	040349556	30101810900000000556	40802810526100623635
62	1207	ОАО "КРАЙИНВЕСТБАНК" г. Краснодар	0403495516	30101810500000000516	40817810900070604674
63	1206	Банк "Первомайский" ЗАО г. Краснодар	040349715	30101810000000000715	40802810200140000090
64	776	Южный филиал ЗАО "Райффайзенбанк"  г. Краснодар	040349556	30101810900000000556	40817810926000088282
65	759	ОАО "УРАЛСИБ"	044525787	30101810100000000787	40802810800282001419
66	1209	Анапское ОСБ №1804/014  Юго- Западный Банк Сбербанка	046015602	30101810600000000602	42307810530043983235
67	1210	Южный филиал ЗАО "Райффайзенбанк" г. Краснодар	040349556	30101810900000000556	40702810626100426670
68	620	Анапское ОСБ № 1804/014 Юго-Западного банка СБ РФ	046015602	30101810600000000602	40817810930043981390
69	709	Анапское ОСБ 1804/014 Сбербанка России	046015602	30101810600000000602	42307.810.8.3004.3982606
70	1211	Филиал ОАО «УРАЛСИБ» в г. Новороссийск	040395726	30101810300000000726	40802810761180005639
71	1212	филиал ЗАО Банк ЗЕНИТ Сочи в г. Анапа	040304513	\N	40802810800010001163
72	755	ОАО Альфабанк Москва	044525593	\N	40817810304800049860
73	1214	ОАО "Крайинвестбанк"	040349516	30101810500000000516	40802810700590000044
74	1215	Анапское ОСБ №1804  Юго-Западный банк СБ РФ г.Ростов-на-Дону	046015602	30101810600000000602	42307810730044637160
75	1216	Aнапское ОСБ 1804 п.Витязево	\N	\N	42307.810.1.3004.3981970
76	1217	Aнапское ОСБ 1804  поселок Витязево	\N	\N	42307.810.1.3004.3981970
77	1218	Анапское отделение ОАО "ЮГ-Инвестбанк" г. Краснодар	040349966	30101810600000000966	40802810000880004392
78	1219	Юго-Западный Банк Сбербанка РФ г. Ростов-на-Дону	046015602	30101810600000000602	40802810730040100266
79	733	Анапское ОСБ №1804 Юго-Западный Банк Сбербанка России г. Ростов-на-Дону	046015602	30101810600000000602	42307810530044624771
80	424	Филиал ЗАО Банк Зенит Сочи в г. Анапа	040396717	30101810400000000717	40802810100010000217
81	987	ОАО «УРАЛСИБ» г. Новороссийск	040395726	30101810300000000726	40802810761180004368
82	475	ОАО «Крайинвестбанк» в ГРКЦ ГУ Банка России по Краснодарскому кр	040349516	30101810500000000516	40702810900070000846
83	1004	ОАО "Крайинвест банк"	040349516	30101810500000000516	40802810200070000459
\.


--
-- Data for Name: hotel_bookings; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_bookings (id, name, created_at, updated_at) FROM stdin;
1	возможно	2012-05-18 07:23:14.749993	2012-05-18 07:23:14.749993
2	приостановлено	2012-05-18 07:23:14.762987	2012-05-18 07:23:14.762987
\.


--
-- Data for Name: hotel_cities; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_cities (id, name, created_at, updated_at, "position") FROM stdin;
25	Анапа	2012-08-31 13:16:31.149655	2012-08-31 13:16:31.149655	1
26	Анапа, п.  Витязево	2012-08-31 13:16:34.281697	2012-08-31 13:16:34.281697	2
27	Анапа, п. Витязево	2012-08-31 13:16:34.295921	2012-08-31 13:16:34.295921	3
28	Анапа, п. Джемете	2012-08-31 13:16:36.301773	2012-08-31 13:16:36.301773	4
29	Анапа, п. Су-Псех	2012-08-31 13:16:37.205888	2012-08-31 13:16:37.205888	5
30	Анапа, п. Сукко	2012-08-31 13:16:37.22252	2012-08-31 13:16:37.22252	6
31	Анапа, ст. Благовещенская	2012-08-31 13:16:37.723549	2012-08-31 13:16:37.723549	7
32	Геленджик	2012-08-31 13:16:38.908118	2012-08-31 13:16:38.908118	8
33	Геленджик, с. Кабардинка	2012-08-31 13:16:40.480168	2012-08-31 13:16:40.480168	9
34	Геленджик, с. Архипо-Осиповка	2012-08-31 13:16:40.871987	2012-08-31 13:16:40.871987	10
35	Геленджик, с. Дивноморское	2012-08-31 13:16:41.356861	2012-08-31 13:16:41.356861	11
36	Геленджик, с. Прасковеевка	2012-08-31 13:16:41.735512	2012-08-31 13:16:41.735512	12
37	Геленджик, с.Криница	2012-08-31 13:16:41.749422	2012-08-31 13:16:41.749422	13
38	Геленджик, х. Джанхот	2012-08-31 13:16:41.856419	2012-08-31 13:16:41.856419	14
39	Геленджик, х. Бетта	2012-08-31 13:16:41.88732	2012-08-31 13:16:41.88732	15
40	Новороссийск, п.Дюрсо	2012-12-18 08:48:24.592168	2012-12-18 08:48:24.592168	16
\.


--
-- Data for Name: hotel_filter_items; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_filter_items (id, filter_id, name, created_at, updated_at) FROM stdin;
1	1	Гостиница	2012-05-18 07:23:14.620338	2012-05-18 07:23:14.620338
2	1	Минигостиница	2012-05-18 07:23:14.622784	2012-05-18 07:23:14.622784
3	1	Гостевой дом	2012-05-18 07:23:14.623928	2012-05-18 07:23:14.623928
4	1	Пансионат	2012-05-18 07:23:14.625188	2012-05-18 07:23:14.625188
5	1	Санаторий	2012-05-18 07:23:14.626511	2012-05-18 07:23:14.626511
6	2	Экономичный	2012-05-18 07:23:14.638576	2012-05-18 07:23:14.638576
7	2	Экономичный +	2012-05-18 07:23:14.640435	2012-05-18 07:23:14.640435
8	2	Экономичный ++	2012-05-18 07:23:14.642096	2012-05-18 07:23:14.642096
9	2	Экономичный +++	2012-05-18 07:23:14.643715	2012-05-18 07:23:14.643715
10	2	Комфорт	2012-05-18 07:23:14.645413	2012-05-18 07:23:14.645413
11	2	Комфорт +	2012-05-18 07:23:14.646991	2012-05-18 07:23:14.646991
12	2	Комфорт ++	2012-05-18 07:23:14.648642	2012-05-18 07:23:14.648642
13	2	Комфорт +++	2012-05-18 07:23:14.650141	2012-05-18 07:23:14.650141
14	2	Премиум	2012-05-18 07:23:14.651692	2012-05-18 07:23:14.651692
15	2	Премиум +	2012-05-18 07:23:14.653375	2012-05-18 07:23:14.653375
16	2	Премиум ++	2012-05-18 07:23:14.655471	2012-05-18 07:23:14.655471
17	2	Премиум +++	2012-05-18 07:23:14.657092	2012-05-18 07:23:14.657092
\.


--
-- Data for Name: hotel_filter_values; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_filter_values (id, filter_id, hotel_id, item_id) FROM stdin;
882	1	461	2
838	1	417	4
1394	1	974	1
839	1	418	3
858	1	437	3
840	1	419	1
1395	1	975	1
841	1	420	3
976	1	555	1
842	1	421	4
1396	1	976	1
843	1	422	3
977	1	556	3
844	1	423	3
1397	1	977	1
845	1	424	1
846	1	425	1
1398	1	978	1
847	1	426	3
848	1	427	3
1399	1	979	1
849	1	428	3
850	1	429	1
1400	1	980	1
851	1	430	3
852	1	431	1
1401	1	981	1
853	1	432	3
854	1	433	5
1402	1	982	1
855	1	434	3
856	1	435	1
1403	1	983	1
857	1	436	3
1404	1	984	1
859	1	438	3
860	1	439	3
1405	1	985	1
861	1	440	3
862	1	441	3
1406	1	986	1
863	1	442	3
864	1	443	1
1407	1	987	1
865	1	444	3
866	1	445	3
1408	1	988	1
867	1	446	3
868	1	447	3
1409	1	989	1
869	1	448	3
870	1	449	3
1410	1	990	1
871	1	450	3
872	1	451	3
1411	1	991	1
873	1	452	3
874	1	453	3
1412	1	992	1
875	1	454	3
876	1	455	3
1413	1	993	1
877	1	456	3
878	1	457	3
1414	1	994	1
879	1	458	3
880	1	459	3
1415	1	995	1
881	1	460	3
1416	1	996	1
883	1	462	1
884	1	463	3
1417	1	997	1
885	1	464	3
886	1	465	3
1418	1	998	1
887	1	466	3
888	1	467	5
1419	1	999	1
889	1	468	4
890	1	469	1
1420	1	1000	1
891	1	470	3
892	1	471	3
1421	1	1001	1
893	1	472	1
894	1	473	3
1422	1	1002	1
895	1	474	1
896	1	475	5
897	1	476	3
898	1	477	1
899	1	478	3
900	1	479	3
901	1	480	3
902	1	481	3
903	1	482	3
904	1	483	3
905	1	484	3
906	1	485	3
907	1	486	1
908	1	487	3
909	1	488	4
910	1	489	4
911	1	490	5
912	1	491	4
913	1	492	5
914	1	493	5
915	1	494	5
916	1	495	4
917	1	496	4
918	1	497	4
919	1	498	5
920	1	499	1
921	1	500	1
922	1	501	4
923	1	502	4
924	1	503	4
925	1	504	4
926	1	505	1
927	1	506	4
928	1	507	4
929	1	508	4
930	1	509	1
931	1	510	1
932	1	511	5
933	1	512	5
934	1	513	1
935	1	514	3
936	1	515	1
937	1	516	1
938	1	517	4
939	1	518	3
940	1	519	4
941	1	520	4
942	1	521	3
943	1	522	3
944	1	523	1
945	1	524	3
946	1	525	5
947	1	526	5
948	1	527	5
949	1	528	5
950	1	529	5
951	1	530	3
952	1	531	3
953	1	532	3
954	1	533	3
955	1	534	3
956	1	535	1
957	1	536	3
958	1	537	3
959	1	538	3
960	1	539	3
961	1	540	3
963	1	542	3
964	1	543	3
965	1	544	3
966	1	545	3
967	1	546	1
968	1	547	3
969	1	548	3
970	1	549	4
971	1	550	3
972	1	551	5
973	1	552	3
974	1	553	3
975	1	554	4
978	1	557	3
979	1	558	3
980	1	559	3
981	1	560	1
982	1	561	1
983	1	562	3
1446	1	1026	3
984	1	563	3
1423	1	1003	1
985	1	564	3
1442	1	1022	2
986	1	565	3
1424	1	1004	1
987	1	566	3
1104	1	683	2
988	1	567	4
1425	1	1005	1
989	1	568	3
1024	1	603	2
990	1	569	3
1426	1	1006	1
1092	1	671	3
992	1	571	3
1427	1	1007	1
993	1	572	3
994	1	573	3
1428	1	1008	1
995	1	574	3
991	1	570	1
996	1	575	3
1429	1	1009	1
997	1	576	3
1014	1	593	3
998	1	577	3
1430	1	1010	1
999	1	578	3
1000	1	579	3
1431	1	1011	1
1001	1	580	3
1002	1	581	3
1432	1	1012	1
1003	1	582	3
1004	1	583	3
1433	1	1013	1
1005	1	584	3
1006	1	585	3
1434	1	1014	1
1007	1	586	3
1008	1	587	4
1435	1	1015	1
1009	1	588	3
1010	1	589	3
1436	1	1016	1
1011	1	590	1
1012	1	591	1
1437	1	1017	1
1013	1	592	3
1438	1	1018	1
1015	1	594	1
1016	1	595	4
1439	1	1019	1
1017	1	596	4
1018	1	597	1
1440	1	1020	1
1019	1	598	4
1020	1	599	4
1441	1	1021	1
1021	1	600	5
1022	1	601	4
1023	1	602	3
1443	1	1023	1
1025	1	604	3
1026	1	605	1
1444	1	1024	1
1027	1	606	3
1028	1	607	3
1445	1	1025	1
1029	1	608	3
1030	1	609	3
1031	1	610	3
1032	1	611	3
1447	1	1027	1
1033	1	612	1
1034	1	613	3
1448	1	1028	1
1035	1	614	4
1036	1	615	3
1449	1	1029	1
1037	1	616	3
1038	1	617	3
1450	1	1030	1
1039	1	618	5
1040	1	619	3
1041	1	620	3
1042	1	621	3
1043	1	622	3
1044	1	623	3
1045	1	624	3
1047	1	626	3
1048	1	627	3
1049	1	628	3
1050	1	629	3
1051	1	630	3
1052	1	631	3
1053	1	632	3
1054	1	633	3
1055	1	634	3
1056	1	635	4
1057	1	636	3
1058	1	637	3
1059	1	638	1
1060	1	639	3
1061	1	640	3
1062	1	641	3
1063	1	642	3
1064	1	643	3
1065	1	644	3
1066	1	645	3
1067	1	646	3
1068	1	647	3
1069	1	648	3
1070	1	649	3
1071	1	650	3
1072	1	651	3
1073	1	652	3
1074	1	653	3
1075	1	654	3
1076	1	655	3
1077	1	656	3
1078	1	657	3
1079	1	658	3
1080	1	659	3
1081	1	660	1
1082	1	661	3
1084	1	663	3
1085	1	664	3
1086	1	665	3
1087	1	666	4
1088	1	667	3
1089	1	668	3
1090	1	669	3
1091	1	670	3
1093	1	672	1
1094	1	673	3
1095	1	674	3
1096	1	675	3
1097	1	676	1
1098	1	677	1
1099	1	678	3
1100	1	679	1
1101	1	680	3
1102	1	681	3
1103	1	682	3
1105	1	684	3
1106	1	685	3
1107	1	686	3
1108	1	687	3
1109	1	688	3
1110	1	689	3
1111	1	690	3
1112	1	691	3
1113	1	692	3
1114	1	693	3
1115	1	694	3
1116	1	695	3
1117	1	696	3
1118	1	697	3
1119	1	698	3
1120	1	699	3
1121	1	700	3
1122	1	701	1
1123	1	702	3
1124	1	703	3
1125	1	704	3
1126	1	705	3
1127	1	706	3
1128	1	707	3
1130	1	709	3
1129	1	708	3
1451	1	1031	1
1131	1	710	3
1452	1	1032	1
1132	1	711	3
1133	1	712	1
1453	1	1033	1
1134	1	713	3
1135	1	714	3
1454	1	1034	1
1136	1	715	3
1137	1	716	3
1455	1	1035	1
1138	1	717	3
1139	1	718	3
1456	1	1036	1
1140	1	719	3
1141	1	720	3
1457	1	1037	1
1142	1	721	3
1143	1	722	1
1458	1	1038	1
1144	1	723	1
1145	1	724	3
1459	1	1039	1
1146	1	725	3
1147	1	726	3
1460	1	1040	1
1148	1	727	1
1149	1	728	3
1461	1	1041	1
1150	1	729	4
1151	1	730	1
1462	1	1042	1
1152	1	731	1
1153	1	732	4
1463	1	1043	1
1154	1	733	3
1155	1	734	3
1464	1	1044	1
1156	1	735	3
1157	1	736	3
1465	1	1045	1
1158	1	737	1
1159	1	738	3
1466	1	1046	1
1160	1	739	3
1161	1	740	3
1467	1	1047	1
1162	1	741	3
1163	1	742	3
1468	1	1048	1
1164	1	743	3
1165	1	744	3
1469	1	1049	1
1166	1	745	3
1167	1	746	1
1470	1	1050	1
1168	1	747	3
1169	1	748	3
1471	1	1051	1
1170	1	749	3
1171	1	750	3
1472	1	1052	1
1172	1	751	1
1173	1	752	3
1473	1	1053	1
1174	1	753	3
1175	1	754	3
1474	1	1054	1
1176	1	755	3
1177	1	756	3
1475	1	1055	1
1178	1	757	1
1179	1	758	3
1476	1	1056	1
1180	1	759	1
1181	1	760	3
1477	1	1057	1
1182	1	761	3
1183	1	762	1
1478	1	1058	1
1184	1	763	4
1185	1	764	3
1479	1	1059	1
1186	1	765	3
1187	1	766	1
1188	1	767	3
1189	1	768	3
1190	1	769	3
1191	1	770	3
1192	1	771	3
1193	1	772	3
1194	1	773	3
1195	1	774	3
1196	1	775	3
1197	1	776	1
1198	1	777	3
1199	1	778	3
1200	1	779	1
1201	1	780	1
1202	1	781	4
1203	1	782	3
1204	1	783	4
1205	1	784	4
1206	1	785	3
1207	1	786	3
1208	1	787	3
1209	1	788	3
1210	1	789	3
1211	1	790	3
1212	1	791	4
1213	1	792	3
1214	1	793	3
1215	1	794	3
1216	1	795	3
1217	1	796	3
1218	1	797	3
1219	1	798	3
1220	1	799	3
1221	1	800	3
1222	1	801	3
1223	1	802	3
1224	1	803	4
1225	1	804	4
1226	1	805	3
1227	1	806	3
1228	1	807	3
1229	1	808	3
1230	1	809	3
1231	1	810	3
1232	1	811	3
1233	1	812	3
1234	1	814	3
1235	1	815	3
1236	1	816	3
1237	1	817	3
1238	1	818	3
1239	1	819	3
1240	1	820	3
1241	1	821	3
1242	1	822	3
1243	1	823	3
1244	1	824	3
1245	1	825	1
1247	1	827	3
1248	1	828	1
1249	1	829	1
1250	1	830	1
1251	1	831	1
1252	1	832	3
1253	1	833	1
1254	1	834	3
1255	1	835	3
1256	1	836	3
1257	1	837	3
1258	1	838	3
1259	1	839	3
1260	1	840	3
1261	1	841	1
1262	1	842	3
1263	1	843	3
1264	1	844	3
1265	1	845	1
1266	1	846	3
1267	1	847	1
1268	1	848	3
1269	1	849	3
1270	1	850	3
1271	1	851	3
1272	1	852	3
1273	1	853	3
1274	1	854	1
1485	1	1065	3
1275	1	855	3
1480	1	1060	1
1276	1	856	3
1489	1	1069	3
1277	1	857	3
1481	1	1061	1
1278	1	858	3
1522	1	1102	3
1482	1	1062	1
1280	1	860	3
1281	1	861	5
1483	1	1063	1
1282	1	862	4
1283	1	863	4
1484	1	1064	1
1284	1	864	4
1285	1	865	5
1286	1	866	5
1287	1	867	4
1486	1	1066	1
1288	1	868	5
1289	1	869	4
1487	1	1067	1
1290	1	870	4
1291	1	871	5
1488	1	1068	1
1292	1	872	4
1293	1	873	5
1294	1	874	4
1295	1	875	3
1490	1	1070	1
1296	1	876	3
1297	1	877	1
1491	1	1071	1
1298	1	878	3
1299	1	879	1
1492	1	1072	1
1300	1	880	3
1301	1	881	3
1493	1	1073	1
1302	1	882	1
1303	1	883	1
1494	1	1074	1
1304	1	884	3
1305	1	885	3
1495	1	1075	1
1306	1	886	3
1307	1	887	3
1496	1	1076	1
1308	1	888	1
1309	1	889	3
1497	1	1077	1
1310	1	890	3
1311	1	891	3
1498	1	1078	1
1312	1	892	1
1313	1	893	3
1499	1	1079	1
1314	1	894	1
1315	1	895	3
1500	1	1080	1
1316	1	896	1
1317	1	897	1
1501	1	1081	1
1318	1	898	3
1319	1	899	3
1502	1	1082	1
1320	1	900	3
1321	1	901	3
1503	1	1083	1
1322	1	902	3
1323	1	903	3
1504	1	1084	1
1324	1	904	3
1325	1	905	1
1505	1	1085	1
1326	1	906	1
1327	1	907	3
1506	1	1086	1
1328	1	908	1
1329	1	909	3
1507	1	1087	1
1330	1	910	3
1331	1	911	3
1508	1	1088	1
1332	1	912	3
1333	1	913	3
1509	1	1089	1
1334	1	914	3
1335	1	915	3
1510	1	1090	1
1336	1	916	5
1337	1	917	4
1511	1	1091	1
1338	1	918	4
1339	1	919	4
1512	1	1092	1
1340	1	920	4
1341	1	921	4
1513	1	1093	1
1342	1	922	4
1343	1	923	3
1514	1	1094	1
1344	1	924	3
1345	1	925	1
1515	1	1095	1
1346	1	926	3
1347	1	927	3
1516	1	1096	1
1348	1	928	3
1349	1	929	1
1517	1	1097	1
1350	1	930	3
1351	1	931	3
1518	1	1098	1
1352	1	932	3
1353	1	933	1
1519	1	1099	1
1354	1	934	1
1355	1	935	3
1520	1	1100	1
1356	1	936	1
1357	1	937	3
1521	1	1101	1
1358	1	938	3
1359	1	939	3
1360	1	940	3
1361	1	941	1
1523	1	1103	1
1362	1	942	3
1363	1	943	3
1524	1	1104	1
1364	1	944	4
1365	1	945	5
1525	1	1105	1
1366	1	946	3
1367	1	947	3
1526	1	1106	1
1368	1	948	1
1369	1	949	1
1527	1	1107	1
1370	1	950	1
1371	1	951	1
1528	1	1108	1
1372	1	952	3
1373	1	953	3
1529	1	1109	1
1374	1	954	3
1375	1	955	3
1530	1	1110	1
1376	1	956	3
1377	1	957	3
1531	1	1111	1
1378	1	958	1
1379	1	959	1
1532	1	1112	1
1380	1	960	3
1381	1	961	4
1533	1	1113	1
1382	1	962	5
1383	1	963	1
1534	1	1114	1
1384	1	964	1
1385	1	965	3
1535	1	1115	1
1386	1	966	3
1387	1	967	3
1536	1	1116	1
1388	1	968	3
1389	1	969	4
1537	1	1117	1
1390	1	970	3
1391	1	971	4
1538	1	1118	1
1392	1	972	4
1393	1	973	4
1616	2	1087	0
1539	1	1119	1
1617	2	446	0
1540	1	1120	1
1618	2	1088	0
1541	1	1121	1
1619	2	448	0
1542	1	1122	1
1620	2	418	0
1543	1	1123	1
1544	1	1124	1
1622	2	462	0
1545	1	1125	1
1623	2	421	0
1546	1	1126	1
1624	2	423	0
1547	1	1127	1
1548	1	1128	1
1549	1	1129	1
1627	2	443	0
1550	1	1130	1
1628	2	428	0
1551	1	1131	1
1629	2	457	0
1552	1	1132	1
1553	1	1133	1
1554	1	1134	1
1632	2	430	0
1555	1	1135	1
1633	2	431	0
1556	1	1136	1
1634	2	432	0
1557	1	1137	1
1635	2	433	0
1558	1	1138	1
1636	2	434	0
1559	1	1139	1
1637	2	435	0
1560	1	1140	1
1638	2	444	0
1561	1	1141	1
1639	2	438	0
1562	1	1142	1
1640	2	439	0
1563	1	1143	1
1641	2	440	0
1564	1	1144	1
1642	2	441	0
1565	1	1145	1
1643	2	442	0
1566	1	1146	1
1644	2	447	0
1567	1	1147	1
1645	2	600	0
1568	1	1148	1
1646	2	449	0
1569	1	1149	1
1570	1	1150	1
1648	2	451	0
1571	1	1151	1
1649	2	452	0
1572	1	1152	1
1650	2	455	0
1573	1	1153	1
1651	2	445	0
1574	1	1154	1
1652	2	1089	0
1575	1	1155	1
1653	2	686	0
1576	1	1156	1
1654	2	417	0
1577	1	1157	1
1655	2	425	0
1578	1	1158	1
1656	2	422	0
1579	1	1159	1
1657	2	974	0
1580	1	1160	1
1581	1	1161	1
1659	2	975	0
1582	1	1162	1
1660	2	976	0
1583	1	1163	1
1584	1	1164	1
1662	2	507	0
1585	1	1165	1
1663	2	471	0
1586	1	1166	1
1664	2	473	0
1587	1	1167	1
1665	2	468	0
1588	1	1168	1
1666	2	504	0
1589	1	1169	1
1667	2	481	0
1590	1	1170	1
1668	2	493	0
1591	1	1171	1
1592	1	1172	1
1670	2	476	0
1593	1	1173	1
1671	2	477	0
1594	1	1174	1
1595	1	1175	1
1673	2	492	0
1596	1	1176	1
1674	2	482	0
1597	1	1177	1
1675	2	484	0
1598	1	1178	1
1676	2	485	0
1599	1	1179	1
1600	1	1180	1
1678	2	487	0
1601	1	1181	1
1679	2	488	0
1602	1	1182	1
1680	2	490	0
1603	1	1183	1
1681	2	491	0
1604	1	1184	1
1682	2	508	0
1605	1	1185	1
1683	2	494	0
1606	1	1186	1
1684	2	495	0
1607	1	1187	1
1685	2	496	0
1608	1	1188	1
1686	2	497	0
1609	1	1189	1
1687	2	498	0
1610	1	1190	1
1688	2	499	0
1611	1	1191	1
1689	2	500	0
1612	1	1192	1
1690	2	501	0
1613	1	1193	1
1691	2	502	0
1614	1	1194	1
1692	2	479	0
1615	1	1195	1
1693	2	509	0
1694	2	510	0
1695	2	505	0
1696	2	978	0
1697	2	517	0
1699	2	979	0
1701	2	981	0
1702	2	982	0
1703	2	545	0
1704	2	513	0
1705	2	515	0
1706	2	516	0
1707	2	529	0
1708	2	519	0
1709	2	520	0
1711	2	522	0
1713	2	524	0
1714	2	525	0
1715	2	526	0
1716	2	527	0
1717	2	530	0
1718	2	531	0
1719	2	532	0
1720	2	533	0
1721	2	535	0
1722	2	536	0
1723	2	537	0
1626	2	461	11
1630	2	454	9
1647	2	450	10
1631	2	437	6
1712	2	523	14
1625	2	424	11
1661	2	977	12
1621	2	420	6
1658	2	474	9
1672	2	478	13
1700	2	980	11
1677	2	486	13
1724	2	538	0
1725	2	539	0
1727	2	542	0
1728	2	543	0
1729	2	419	0
1730	2	546	0
1731	2	547	0
1732	2	548	0
1733	2	549	0
1735	2	551	0
1736	2	528	0
1738	2	584	0
1739	2	984	0
1740	2	563	0
1741	2	985	0
1743	2	566	0
1744	2	564	0
1745	2	557	0
1746	2	588	0
1747	2	559	0
1748	2	589	0
1749	2	560	0
1750	2	562	0
1751	2	565	0
1752	2	567	0
1753	2	569	0
1757	2	573	0
1758	2	574	0
1759	2	575	0
1760	2	577	0
1761	2	578	0
1762	2	579	0
1763	2	580	0
1764	2	581	0
1765	2	583	0
1766	2	585	0
1767	2	586	0
1769	2	429	0
1770	2	590	0
1771	2	592	0
1773	2	594	0
1775	2	596	0
1777	2	561	0
1779	2	988	0
1780	2	629	0
1782	2	636	0
1785	2	604	0
1786	2	605	0
1787	2	619	0
1788	2	617	0
1789	2	606	0
1791	2	640	0
1792	2	607	0
1793	2	608	0
1794	2	609	0
1795	2	610	0
1796	2	611	0
1798	2	613	0
1799	2	614	0
1800	2	615	0
1801	2	598	0
1803	2	621	0
1804	2	622	0
1805	2	623	0
1806	2	626	0
1807	2	627	0
1808	2	628	0
1809	2	639	0
1810	2	632	0
1812	2	634	0
1814	2	638	0
1815	2	601	0
1816	2	641	0
1817	2	642	0
1818	2	618	0
1819	2	684	0
1820	2	678	0
1821	2	660	0
1824	2	646	0
1825	2	659	0
1826	2	647	0
1827	2	657	0
1828	2	650	0
1829	2	665	0
1830	2	648	0
1831	2	652	0
1832	2	653	0
1833	2	654	0
1834	2	655	0
1835	2	664	0
1836	2	771	0
1837	2	661	0
1839	2	663	0
1840	2	667	0
1841	2	668	0
1842	2	669	0
1843	2	670	0
1845	2	673	0
1846	2	674	0
1847	2	675	0
1848	2	676	0
1849	2	677	0
1850	2	679	0
1851	2	680	0
1852	2	681	0
1853	2	682	0
1855	2	685	0
1856	2	732	0
1857	2	458	0
1858	2	658	0
1860	2	991	0
1862	2	702	0
1863	2	687	0
1864	2	717	0
1865	2	688	0
1866	2	718	0
1867	2	689	0
1868	2	690	0
1869	2	691	0
1870	2	692	0
1871	2	693	0
1872	2	694	0
1873	2	695	0
1874	2	696	0
1875	2	698	0
1876	2	699	0
1877	2	703	0
1878	2	704	0
1879	2	705	0
1880	2	706	0
1881	2	707	0
1883	2	712	0
1884	2	713	0
1885	2	714	0
1886	2	715	0
1887	2	700	0
1888	2	719	0
1889	2	720	0
1890	2	721	0
1891	2	722	0
1892	2	723	0
1893	2	724	0
1894	2	725	0
1895	2	726	0
1896	2	727	0
1897	2	728	0
1898	2	729	0
1899	2	701	0
1900	2	463	0
1901	2	464	0
1902	2	753	0
1903	2	739	0
1904	2	624	0
1905	2	762	0
1907	2	734	0
1908	2	730	0
1726	2	540	8
1854	2	683	11
1783	2	602	10
1784	2	603	8
1811	2	633	6
1823	2	645	6
1844	2	671	10
1822	2	644	6
1797	2	612	12
1802	2	620	13
1882	2	709	9
1906	2	733	7
1790	2	631	9
1742	2	986	13
1861	2	990	9
1859	2	989	10
1774	2	595	10
1755	2	571	13
1756	2	572	13
1734	2	550	13
1768	2	587	13
1772	2	593	13
1778	2	987	14
1776	2	597	17
1909	2	735	0
1910	2	736	0
1911	2	737	0
1912	2	738	0
1913	2	740	0
1914	2	741	0
1915	2	742	0
1916	2	743	0
1917	2	744	0
1918	2	745	0
1919	2	746	0
1920	2	748	0
1921	2	749	0
1922	2	750	0
1923	2	751	0
1924	2	770	0
1925	2	754	0
1927	2	756	0
1928	2	757	0
1929	2	758	0
1931	2	761	0
1932	2	763	0
1933	2	764	0
1934	2	765	0
1935	2	766	0
1936	2	767	0
1937	2	768	0
1938	2	769	0
1939	2	752	0
1940	2	970	0
1941	2	760	0
1942	2	792	0
1943	2	993	0
1944	2	790	0
1945	2	784	0
1947	2	716	0
1948	2	799	0
1949	2	789	0
1950	2	786	0
1951	2	971	0
1952	2	616	0
1953	2	992	0
1954	2	772	0
1955	2	798	0
1956	2	788	0
1957	2	773	0
1958	2	774	0
1961	2	778	0
1962	2	780	0
1963	2	781	0
1964	2	783	0
1965	2	785	0
1966	2	793	0
1967	2	794	0
1968	2	795	0
1969	2	797	0
1970	2	803	0
1971	2	800	0
1972	2	801	0
1973	2	802	0
1974	2	649	0
1975	2	804	0
1976	2	805	0
1977	2	806	0
1978	2	807	0
1979	2	808	0
1980	2	809	0
1981	2	928	0
1982	2	972	0
1983	2	811	0
1984	2	825	0
1985	2	466	0
1986	2	830	0
1987	2	832	0
1988	2	994	0
1989	2	841	0
1990	2	467	0
1992	2	846	0
1993	2	848	0
1994	2	842	0
1995	2	747	0
1996	2	812	0
1997	2	814	0
1998	2	815	0
1999	2	816	0
2000	2	817	0
2001	2	818	0
2002	2	819	0
2003	2	820	0
2004	2	821	0
2005	2	822	0
2006	2	823	0
2007	2	824	0
2008	2	827	0
2009	2	828	0
2010	2	829	0
2011	2	831	0
2012	2	834	0
2013	2	835	0
2014	2	836	0
2015	2	838	0
2016	2	839	0
2017	2	840	0
2018	2	782	0
2019	2	843	0
2020	2	845	0
2021	2	847	0
2022	2	849	0
2024	2	995	0
2025	2	865	0
2026	2	850	0
2028	2	908	0
2029	2	851	0
2030	2	852	0
2031	2	854	0
2032	2	855	0
2033	2	856	0
2034	2	857	0
2035	2	858	0
2036	2	860	0
2037	2	861	0
2038	2	862	0
2039	2	863	0
2040	2	867	0
2041	2	866	0
2042	2	864	0
2043	2	869	0
2044	2	870	0
2045	2	871	0
2046	2	872	0
2047	2	874	0
2048	2	875	0
2049	2	876	0
2050	2	877	0
2051	2	878	0
2052	2	879	0
2053	2	880	0
2054	2	881	0
2055	2	882	0
2056	2	883	0
2057	2	884	0
2058	2	885	0
2059	2	886	0
2060	2	887	0
2061	2	996	0
2062	2	469	0
2064	2	926	0
2065	2	888	0
2066	2	907	0
2067	2	844	0
2068	2	889	0
2069	2	791	0
2070	2	891	0
2071	2	893	0
2072	2	894	0
2073	2	895	0
2074	2	896	0
2075	2	897	0
2076	2	898	0
2077	2	899	0
2078	2	900	0
2079	2	901	0
2080	2	902	0
2081	2	903	0
2082	2	904	0
2083	2	905	0
2084	2	906	0
2085	2	909	0
2086	2	910	0
2087	2	911	0
2088	2	912	0
2089	2	913	0
2090	2	914	0
2091	2	915	0
2092	2	916	0
2093	2	917	0
2063	2	890	17
2027	2	853	6
1959	2	775	7
1930	2	759	11
1926	2	755	7
1946	2	465	7
2094	2	918	0
2095	2	919	0
2096	2	920	0
2097	2	921	0
2098	2	922	0
2099	2	923	0
2100	2	925	0
2101	2	938	0
2102	2	948	0
2103	2	949	0
2104	2	958	0
2105	2	930	0
2106	2	929	0
2107	2	960	0
2108	2	943	0
2109	2	931	0
2110	2	932	0
2111	2	933	0
2112	2	935	0
2113	2	936	0
2114	2	937	0
2115	2	939	0
2116	2	940	0
2117	2	941	0
2118	2	942	0
2119	2	873	0
2120	2	944	0
2121	2	945	0
2122	2	946	0
2123	2	947	0
2124	2	950	0
2125	2	951	0
2126	2	952	0
2127	2	953	0
2128	2	954	0
2129	2	955	0
2130	2	956	0
2131	2	957	0
2132	2	959	0
2133	2	961	0
2134	2	962	0
2135	2	963	0
2136	2	964	0
2137	2	965	0
2138	2	966	0
2139	2	967	0
2140	2	968	0
2141	2	1015	0
2142	2	1016	0
2143	2	997	0
2147	2	1000	0
2149	2	1002	0
2152	2	1005	0
2153	2	1017	0
2154	2	511	0
2155	2	480	0
2157	2	630	0
2158	2	1007	0
2161	2	1010	0
2162	2	1011	0
2163	2	697	0
2164	2	514	0
2165	2	1018	0
2167	2	1019	0
2168	2	777	0
2169	2	1012	0
2170	2	1013	0
2171	2	1020	0
2172	2	973	0
2173	2	534	0
2174	2	1021	0
2176	2	1024	0
2177	2	512	0
2178	2	459	0
2179	2	503	0
2180	2	506	0
2181	2	810	0
2182	2	460	0
2183	2	1025	0
2185	2	1038	0
2186	2	1027	0
2187	2	1028	0
2188	2	1039	0
2189	2	1029	0
2191	2	1031	0
2192	2	1032	0
2193	2	1033	0
2194	2	552	0
2195	2	553	0
2196	2	554	0
2197	2	1040	0
2198	2	1041	0
2200	2	582	0
2201	2	1042	0
2202	2	1034	0
2203	2	483	0
2204	2	558	0
2206	2	470	0
2207	2	489	0
2208	2	1036	0
2209	2	1037	0
2211	2	1044	0
2212	2	1045	0
2214	2	1047	0
2215	2	1048	0
2216	2	1049	0
2217	2	1050	0
2219	2	833	0
2221	2	969	0
2223	2	518	0
2224	2	591	0
2225	2	456	0
2226	2	599	0
2228	2	576	0
2229	2	1053	0
2230	2	1054	0
2231	2	1079	0
2232	2	1080	0
2233	2	1055	0
2234	2	1056	0
2235	2	1057	0
2236	2	1058	0
2237	2	1059	0
2238	2	1060	0
2239	2	1061	0
2240	2	1062	0
2241	2	1063	0
2242	2	1064	0
2244	2	1066	0
2245	2	1067	0
2246	2	1068	0
2248	2	1070	0
2249	2	1071	0
2250	2	651	0
2251	2	1072	0
2252	2	1073	0
2253	2	656	0
2254	2	1074	0
2255	2	1075	0
2256	2	1076	0
2257	2	1077	0
2258	2	1078	0
2259	2	1081	0
2260	2	1084	0
2261	2	1085	0
2262	2	1086	0
2263	2	1082	0
2264	2	666	0
2265	2	672	0
2267	2	643	0
2268	2	1090	0
2269	2	1091	0
2270	2	1114	0
2271	2	1093	0
2273	2	1115	0
2274	2	1106	0
2275	2	1108	0
2276	2	1109	0
2277	2	1096	0
2278	2	1097	0
2184	2	1026	7
2166	2	1022	12
2222	2	544	6
2156	2	1006	13
2272	2	1094	14
2243	2	1065	6
2266	2	555	13
2213	2	1046	14
2247	2	1069	6
2144	2	472	17
2148	2	1001	17
2150	2	1003	17
2145	2	998	17
2160	2	1009	14
2190	2	1030	17
2220	2	568	17
2199	2	556	13
2210	2	1043	13
2218	2	1051	13
2146	2	999	17
2151	2	1004	10
2279	2	1110	0
2280	2	1111	0
2281	2	1112	0
2282	2	1098	0
2283	2	1099	0
2284	2	1014	0
2285	2	1100	0
2286	2	1083	0
2287	2	1101	0
2288	2	1092	0
2290	2	1103	0
2291	2	1104	0
2292	2	1105	0
2293	2	427	0
2294	2	1113	0
2295	2	779	0
2296	2	731	0
2297	2	1095	0
2298	2	436	0
2299	2	711	0
2300	2	1116	0
2301	2	1117	0
2302	2	1118	0
2303	2	1119	0
2304	2	708	0
2305	2	796	0
2306	2	1107	0
2307	2	1120	0
2308	2	927	0
2309	2	710	0
2310	2	1121	0
2311	2	1122	0
2312	2	1123	0
2313	2	1124	0
2314	2	1125	0
2315	2	1126	0
2316	2	1127	0
2317	2	1128	0
2318	2	1129	0
2319	2	426	0
2320	2	1130	0
2321	2	1131	0
2322	2	1132	0
2323	2	1133	0
2324	2	1134	0
2325	2	1135	0
2326	2	1136	0
2327	2	1137	0
2328	1	813	0
2329	2	813	0
2330	2	1138	0
2331	2	1139	0
2332	2	1140	0
2333	2	1141	0
2334	2	1142	0
2335	2	1143	0
2336	2	1144	0
2337	2	1145	0
2338	2	837	0
2339	2	453	0
2340	2	1146	0
2341	2	1147	0
2342	2	1148	0
2343	2	1149	0
2344	2	1151	0
2345	2	1152	0
2346	2	1153	0
2347	2	1154	0
2348	2	1155	0
2349	2	1156	0
2350	2	1157	0
2351	2	787	0
2352	2	1150	0
2353	2	868	0
2354	2	1158	0
2355	2	1159	0
2356	2	1160	0
2357	2	1161	0
2358	2	1162	0
2359	2	1163	0
2360	2	1164	0
2361	2	892	0
2362	2	1165	0
2363	2	1166	0
2364	2	1167	0
2365	2	1168	0
2366	2	1169	0
2367	2	1170	0
2368	2	1171	0
2369	2	1172	0
2370	2	1173	0
2371	2	1174	0
2372	2	1175	0
2373	2	1176	0
2374	2	924	0
2375	2	1177	0
2376	2	1178	0
2377	2	1179	0
2378	2	1180	0
2379	2	1181	0
2380	2	1182	0
2381	2	1183	0
2382	2	1184	0
2383	2	1185	0
2384	2	934	0
2385	2	1186	0
2386	2	1187	0
2387	2	635	0
2388	2	1188	0
2389	2	1189	0
2390	2	1190	0
2391	2	1191	0
2392	2	1192	0
2393	2	1193	0
2394	2	1194	0
2395	2	1195	0
2396	1	1196	3
2397	2	1196	7
2175	2	1023	12
2398	1	1197	3
2399	2	1197	6
1737	2	983	12
2400	1	1198	3
2401	2	1198	6
2159	2	1008	13
1813	2	637	6
2404	1	1200	3
2405	2	1200	6
2406	1	1201	3
2407	2	1201	6
2408	1	1202	1
2409	2	1202	13
2410	1	1203	2
2411	2	1203	8
1710	2	521	6
2289	2	1102	7
2205	2	1035	13
2412	1	1204	3
2413	2	1204	6
2414	1	1205	3
2415	2	1205	6
2416	1	1206	1
2417	2	1206	13
2418	1	1207	3
2419	2	1207	6
1960	2	776	11
2422	1	1209	3
2423	2	1209	7
2424	1	1210	5
2425	2	1210	14
2426	1	1211	3
2427	2	1211	17
2428	1	1212	3
2429	2	1212	12
2430	1	1213	3
2431	2	1213	7
2432	1	1214	2
2433	2	1214	13
2434	1	1215	3
2435	2	1215	12
2436	1	1216	2
2437	2	1216	8
2438	1	1217	3
2439	2	1217	6
2440	1	1218	1
2441	2	1218	10
2442	1	1219	5
2443	2	1219	14
2445	2	1220	17
2444	1	1220	4
2446	1	1221	4
2447	2	1221	13
2448	1	1222	5
2449	2	1222	17
1754	2	570	13
2450	1	1223	5
2451	2	1223	13
2452	1	1224	5
2453	2	1224	13
2454	1	1225	3
2227	2	1052	10
2455	2	1225	17
2456	1	1226	1
2457	2	1226	13
2458	1	1227	5
2459	2	1227	17
2461	2	1228	10
2460	1	1228	3
1669	2	475	14
\.


--
-- Data for Name: hotel_filters; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_filters (id, name, created_at, updated_at, "position", show_in_search, include_to_print) FROM stdin;
1	Тип	2012-05-18 07:23:14.616264	2012-06-12 12:45:36.77295	1	t	t
2	Классификация	2012-05-18 07:23:14.636833	2012-07-29 08:20:05.330784	2	f	t
\.


--
-- Data for Name: hotel_images; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_images (id, hotel_id, created_at, updated_at, description, attach_file_name, attach_content_type, attach_file_size, attach_updated_at) FROM stdin;
1	345	2012-05-22 08:33:40.352441	2012-05-23 09:36:27.479277		1254859707_23_nikolay-yakovlev.jpg	image/jpeg	42489	2012-05-23 09:36:27.051589
2	377	2012-05-26 05:37:46.660399	2012-05-26 05:37:46.660399	Первое	1B7W9136.jpg	image/jpeg	198852	2012-05-26 05:37:45.520304
3	377	2012-05-26 05:37:46.958283	2012-05-26 05:37:46.958283	Второе	1B7W9278.jpg	image/jpeg	191391	2012-05-26 05:37:46.073844
4	377	2012-05-26 05:38:45.921972	2012-05-26 05:38:45.921972	Третье	1B7W0062.jpg	image/jpeg	182434	2012-05-26 05:38:45.290423
7	378	2012-06-23 04:11:23.242158	2012-06-23 04:11:23.242158	\N	Отсканированный-документ2.jpg	image/jpeg	49365	2012-06-23 04:11:21.502017
8	378	2012-06-23 04:11:23.338386	2012-06-23 04:11:23.338386	\N	850426.jpg	image/jpeg	135425	2012-06-23 04:11:22.333846
11	378	2012-06-23 04:12:12.142189	2012-06-23 04:12:12.142189	\N	1B7W8787.jpg	image/jpeg	193666	2012-06-23 04:12:11.145236
20	390	2012-07-28 03:36:32.441062	2012-07-28 03:36:32.441062	\N	_MG_5745.jpg	image/jpeg	224817	2012-07-28 03:36:29.880939
21	390	2012-07-28 03:36:32.491284	2012-07-28 03:36:32.491284	\N	_MG_5734.jpg	image/jpeg	110577	2012-07-28 03:36:30.611921
22	390	2012-07-28 03:36:32.523688	2012-07-28 03:36:32.523688	\N	_MG_5724.jpg	image/jpeg	61316	2012-07-28 03:36:31.36669
23	400	2012-07-28 04:11:12.377566	2012-07-28 04:11:12.377566	\N	_MG_5734.jpg	image/jpeg	110577	2012-07-28 04:11:10.684041
24	400	2012-07-28 04:11:12.439596	2012-07-28 04:11:12.439596	\N	_MG_5724.jpg	image/jpeg	61316	2012-07-28 04:11:11.433427
25	401	2012-07-28 04:31:04.293374	2012-07-28 04:31:04.293374	\N	_MG_5734.jpg	image/jpeg	110577	2012-07-28 04:31:00.568246
26	401	2012-07-28 04:31:04.336597	2012-07-28 04:31:04.336597	\N	_MG_5724.jpg	image/jpeg	61316	2012-07-28 04:31:01.33625
27	402	2012-07-28 04:42:45.952881	2012-07-28 04:42:45.952881	\N	_MG_5745.jpg	image/jpeg	224817	2012-07-28 04:42:43.517013
28	402	2012-07-28 04:42:45.992555	2012-07-28 04:42:45.992555	\N	_MG_5724.jpg	image/jpeg	61316	2012-07-28 04:42:44.385281
29	402	2012-07-28 04:42:46.025085	2012-07-28 04:42:46.025085	\N	_MG_5721.jpg	image/jpeg	57143	2012-07-28 04:42:45.101729
71	411	2012-08-16 07:15:33.897256	2012-08-16 07:21:04.056832	спальня люкс	1B7W0824.jpg	image/jpeg	248981	2012-08-16 07:21:03.064266
37	403	2012-07-28 16:21:29.639644	2012-07-28 16:21:29.639644	\N	_MG_3417.jpg	image/jpeg	9109201	2012-07-28 16:21:22.240151
38	403	2012-07-28 16:21:29.870802	2012-07-28 16:21:29.870802	\N	_MG_5724.jpg	image/jpeg	61316	2012-07-28 16:21:28.289036
39	403	2012-07-28 16:24:43.080894	2012-07-28 16:24:43.080894	\N	_MG_3417.jpg	image/jpeg	9109201	2012-07-28 16:24:36.211992
40	403	2012-07-28 16:24:43.463486	2012-07-28 16:24:43.463486	\N	_MG_5685.jpg	image/jpeg	263386	2012-07-28 16:24:42.210456
41	403	2012-07-29 07:17:53.393396	2012-07-29 07:17:53.393396	\N	1B7W1122.jpg	image/jpeg	194207	2012-07-29 07:17:48.037094
42	403	2012-07-29 07:17:53.477938	2012-07-29 07:17:53.477938	\N	1B7W2995.jpg	image/jpeg	182050	2012-07-29 07:17:50.006935
43	403	2012-07-29 07:17:53.592212	2012-07-29 07:17:53.592212	\N	1B7W0833.jpg	image/jpeg	196188	2012-07-29 07:17:50.61774
44	403	2012-07-29 07:17:53.614391	2012-07-29 07:17:53.614391	\N	1B7W0408.jpg	image/jpeg	191711	2012-07-29 07:17:51.308465
45	403	2012-07-29 07:17:53.635496	2012-07-29 07:17:53.635496	\N	1B7W3213-1.jpg	image/jpeg	183919	2012-07-29 07:17:52.063868
46	403	2012-07-29 07:17:53.657203	2012-07-29 07:17:53.657203	\N	1B7W8312-1.jpg	image/jpeg	194547	2012-07-29 07:17:52.695708
47	404	2012-07-29 07:46:07.54167	2012-07-29 07:46:07.54167	\N	_MG_3178.jpg	image/jpeg	182280	2012-07-29 07:46:01.630389
48	404	2012-07-29 07:46:07.566156	2012-07-29 07:46:07.566156	\N	_MG_3417.jpg	image/jpeg	167890	2012-07-29 07:46:02.591891
49	404	2012-07-29 07:46:07.584836	2012-07-29 07:46:07.584836	\N	_MG_5721.jpg	image/jpeg	250410	2012-07-29 07:46:03.176302
50	404	2012-07-29 07:46:07.686632	2012-07-29 07:46:07.686632	\N	1B7W0062.jpg	image/jpeg	182434	2012-07-29 07:46:03.909359
19	390	2012-07-28 03:36:32.198678	2012-08-09 04:47:48.05784	Красивая фотка	4708882_large.jpg	image/jpeg	397863	2012-07-28 03:36:27.844176
51	405	2012-08-09 07:52:14.674062	2012-08-09 07:56:49.170936	\N	seo1.jpg	image/jpeg	87952	2012-08-09 07:56:47.542787
52	405	2012-08-09 07:56:49.215559	2012-08-09 07:56:49.215559	\N	seo.jpg	image/jpeg	53922	2012-08-09 07:56:48.438782
55	406	2012-08-10 04:37:45.144378	2012-08-10 04:37:45.144378	Магазин	_MG_5649.jpg	image/jpeg	241685	2012-08-10 04:37:36.835609
56	406	2012-08-10 04:37:45.377439	2012-08-10 04:37:45.377439	Парк Гуэлья	_MG_3178.jpg	image/jpeg	6162532	2012-08-10 04:37:38.552116
57	406	2012-08-10 04:37:45.461209	2012-08-10 04:37:45.461209	Старый моряк	_MG_5663.jpg	image/jpeg	421314	2012-08-10 04:37:44.072435
58	407	2012-08-10 05:01:27.219321	2012-08-10 05:01:27.219321	Этажи	_MG_2258.jpg	image/jpeg	5813917	2012-08-10 05:01:03.906129
59	407	2012-08-10 05:01:27.48849	2012-08-10 05:01:27.48849	Магазин	_MG_5649.jpg	image/jpeg	241685	2012-08-10 05:01:23.175497
60	407	2012-08-10 05:01:27.511537	2012-08-10 05:01:27.511537	Набережная	_MG_5724.jpg	image/jpeg	61316	2012-08-10 05:01:24.252009
61	410	2012-08-16 07:15:33.205919	2012-08-16 07:15:33.205919	Эскиз	Отсканированный-документ1.jpg	image/jpeg	49206	2012-08-16 07:15:22.006873
62	410	2012-08-16 07:15:33.305352	2012-08-16 07:15:33.305352	Брейк	1B7W1121.jpg	image/jpeg	200877	2012-08-16 07:15:23.069613
63	410	2012-08-16 07:15:33.326603	2012-08-16 07:15:33.326603	Бухта	1B7W3982-1.jpg	image/jpeg	182425	2012-08-16 07:15:23.875373
64	410	2012-08-16 07:15:33.351835	2012-08-16 07:15:33.351835	Сайт	Сайт1.jpg	image/jpeg	33222	2012-08-16 07:15:24.602925
65	410	2012-08-16 07:15:33.515381	2012-08-16 07:15:33.515381	Старость	1B7W9491.jpg	image/jpeg	535260	2012-08-16 07:15:25.331651
66	410	2012-08-16 07:15:33.540393	2012-08-16 07:15:33.540393	Ноги	1B7W8699.jpg	image/jpeg	196680	2012-08-16 07:15:26.328453
67	410	2012-08-16 07:15:33.559321	2012-08-16 07:15:33.559321	Рыбак	850426.jpg	image/jpeg	135425	2012-08-16 07:15:27.159352
68	411	2012-08-16 07:15:33.88753	2012-08-16 07:21:03.848175	вид гостиницы сверху	1B7W4758.jpg	image/jpeg	247762	2012-08-16 07:21:00.165413
69	411	2012-08-16 07:15:33.891118	2012-08-16 07:21:03.893546	кухня	1B7W4330.jpg	image/jpeg	233580	2012-08-16 07:21:00.881191
70	411	2012-08-16 07:15:33.89416	2012-08-16 07:21:03.923425	вид на море	1B7W4974.jpg	image/jpeg	179091	2012-08-16 07:21:02.313933
72	416	2012-08-26 04:12:16.755252	2012-08-26 04:12:16.755252	\N	_MG_3178.jpg	image/jpeg	182280	2012-08-26 04:12:12.544355
73	416	2012-08-26 04:12:16.808538	2012-08-26 04:12:16.808538	\N	1B7W3213-1.jpg	image/jpeg	183919	2012-08-26 04:12:13.35333
74	416	2012-08-26 04:12:16.829203	2012-08-26 04:12:16.829203	\N	1B7W1122.jpg	image/jpeg	194207	2012-08-26 04:12:14.033617
75	983	2012-09-05 04:15:30.487562	2012-09-05 04:15:30.487562	\N	golubaya-laguna.jpg	image/jpeg	117383	2012-09-05 04:15:27.38912
76	1023	2012-09-06 05:06:42.50791	2012-09-06 05:06:42.50791	Общий план	maximus-24.jpg	image/jpeg	123363	2012-09-06 05:06:39.82976
77	1023	2012-09-06 05:06:42.551749	2012-09-06 05:06:42.551749	Бассейн	4ff1471ce9542_1.jpg	image/jpeg	166816	2012-09-06 05:06:40.314296
78	1023	2012-09-06 05:06:42.60791	2012-09-06 05:06:42.60791	\N	4ff166b525fc1_7.jpg	image/jpeg	192441	2012-09-06 05:06:40.829047
79	1023	2012-09-06 05:06:42.644684	2012-09-06 05:06:42.644684	\N	4ff166d884024_6.jpg	image/jpeg	148796	2012-09-06 05:06:41.362978
80	1023	2012-09-06 05:06:42.744783	2012-09-06 05:06:42.744783	\N	4ff147f8ba992_5.jpg	image/jpeg	172668	2012-09-06 05:06:41.876341
81	1022	2012-09-07 04:46:57.175939	2012-09-07 04:46:57.175939	Адмирал	main.jpg	image/jpeg	55334	2012-09-07 04:46:55.534433
83	1022	2012-09-07 04:46:57.237312	2012-09-07 04:46:57.237312	Бассейн	rest_4.jpg	image/jpeg	22754	2012-09-07 04:46:56.703717
82	1022	2012-09-07 04:46:57.209658	2012-09-07 04:49:34.554302	Адмирал	eat_1.jpg	image/jpeg	19570	2012-09-07 04:49:34.079029
84	1022	2012-09-07 04:51:11.590999	2012-09-07 04:51:11.590999	Кафе	eat_2.jpg	image/jpeg	16850	2012-09-07 04:51:11.090512
85	461	2012-09-07 05:48:16.566196	2012-09-07 05:48:44.772706	\N	g7vpegynyxhtzwxl688.jpg	image/jpeg	36828	2012-09-07 05:48:44.298632
86	544	2012-09-08 11:27:38.900724	2012-09-08 11:38:46.010125	\N	1.jpg	image/jpeg	128871	2012-09-08 11:38:44.350196
87	544	2012-09-08 11:27:38.931483	2012-09-08 11:38:46.130889	\N	2.jpg	image/jpeg	116014	2012-09-08 11:38:44.899392
88	544	2012-09-08 11:27:38.954913	2012-09-08 11:38:46.155697	\N	6.jpg	image/jpeg	110900	2012-09-08 11:38:45.436204
89	1198	2012-09-08 12:10:33.453294	2012-09-08 12:10:33.453294	\N	photo_Lwf1VPj1Vy_normal_3.jpg	image/jpeg	61177	2012-09-08 12:10:32.884107
90	454	2012-09-08 13:40:03.632676	2012-09-08 13:40:03.632676	Капитан С	1.jpg	image/jpeg	79421	2012-09-08 13:40:00.711836
91	454	2012-09-08 13:40:03.661083	2012-09-08 13:40:03.661083	Бар	13.jpg	image/jpeg	79048	2012-09-08 13:40:01.822213
92	454	2012-09-08 13:40:03.684833	2012-09-08 13:40:03.684833	\N	c1.jpg	image/jpeg	131370	2012-09-08 13:40:02.954458
93	540	2012-09-09 04:21:31.708056	2012-09-09 04:21:31.708056	\N	M1.jpg	image/jpeg	351433	2012-09-09 04:21:30.084567
94	540	2012-09-09 04:21:31.747057	2012-09-09 04:21:31.747057	\N	M4.jpg	image/jpeg	194025	2012-09-09 04:21:30.727941
95	540	2012-09-09 04:21:31.841196	2012-09-09 04:21:31.841196	\N	M3.jpg	image/jpeg	181092	2012-09-09 04:21:31.217425
96	450	2012-09-09 05:05:22.618066	2012-09-09 05:05:22.618066	Золотая миля	Gold.jpg	image/jpeg	100271	2012-09-09 05:05:20.562106
97	450	2012-09-09 05:05:22.656344	2012-09-09 05:05:22.656344	Внутренний двор	gf6.jpg	image/jpeg	44977	2012-09-09 05:05:21.062003
98	450	2012-09-09 05:05:22.681288	2012-09-09 05:05:22.681288	\N	gf7.jpg	image/jpeg	34328	2012-09-09 05:05:21.534529
99	450	2012-09-09 05:05:22.720676	2012-09-09 05:05:22.720676	Бар	bar1.jpg	image/jpeg	148168	2012-09-09 05:05:22.013665
100	1008	2012-09-09 06:19:12.746205	2012-09-09 06:19:12.746205	\N	char_tree406_3006.jpg	image/jpeg	34865	2012-09-09 06:19:10.151622
101	1008	2012-09-09 06:19:12.776676	2012-09-09 06:19:12.776676	\N	char_tree406_927.jpg	image/jpeg	28848	2012-09-09 06:19:10.676495
102	1008	2012-09-09 06:19:12.807142	2012-09-09 06:19:12.807142	\N	347_2838.jpg	image/jpeg	85315	2012-09-09 06:19:11.16547
103	1008	2012-09-09 06:19:12.865716	2012-09-09 06:19:12.865716	\N	char_tree406_4062.jpg	image/jpeg	29994	2012-09-09 06:19:11.664818
104	1008	2012-09-09 06:19:12.959278	2012-09-09 06:19:12.959278	\N	char_tree406_4063.jpg	image/jpeg	23666	2012-09-09 06:19:12.177324
107	437	2012-09-09 08:24:48.560723	2012-09-09 08:24:48.560723	\N	n3.jpg	image/jpeg	25489	2012-09-09 08:24:48.087549
108	523	2012-09-09 11:29:02.287703	2012-09-09 11:29:02.287703	\N	de-la-mapa-anapa-f1.jpg	image/jpeg	51012	2012-09-09 11:29:00.154435
109	523	2012-09-09 11:29:02.331037	2012-09-09 11:29:02.331037	\N	de-la-mapa-anapa-b2.jpg	image/jpeg	52940	2012-09-09 11:29:00.715743
110	523	2012-09-09 11:29:02.359429	2012-09-09 11:29:02.359429	\N	de-la-mapa-anapa-bar1.jpg	image/jpeg	30700	2012-09-09 11:29:01.275936
111	1006	2012-09-12 16:05:35.448904	2012-09-12 16:05:35.448904	\N	img_9868_600.jpg	image/jpeg	246161	2012-09-12 16:05:32.69029
112	1006	2012-09-12 16:05:35.5872	2012-09-12 16:05:35.5872	\N	IMG_9884_600.jpg	image/jpeg	382461	2012-09-12 16:05:33.357334
113	1006	2012-09-12 16:05:35.619336	2012-09-12 16:05:35.619336	\N	img_0360_600.jpg	image/jpeg	314765	2012-09-12 16:05:34.038002
114	1006	2012-09-12 16:05:35.648824	2012-09-12 16:05:35.648824	\N	img_9942_600.jpg	image/jpeg	474750	2012-09-12 16:05:34.715678
115	1006	2012-09-12 16:46:40.994396	2012-09-12 16:46:40.994396	\N	IMG_8494.jpg	image/jpeg	79669	2012-09-12 16:46:38.971932
116	1006	2012-09-12 16:46:41.023953	2012-09-12 16:46:41.023953	\N	IMG_8644.jpg	image/jpeg	81499	2012-09-12 16:46:39.551698
117	1006	2012-09-12 16:46:41.047742	2012-09-12 16:46:41.047742	\N	IMG_9894_600.jpg	image/jpeg	248179	2012-09-12 16:46:40.11589
118	1094	2012-09-13 05:18:49.043949	2012-09-13 05:18:49.043949	\N	fasadd.jpg	image/jpeg	71778	2012-09-13 05:18:45.338396
119	1094	2012-09-13 05:18:49.095697	2012-09-13 05:18:49.095697	\N	reception-IMG_5209.jpg	image/jpeg	54830	2012-09-13 05:18:46.080682
120	1094	2012-09-13 05:18:49.130121	2012-09-13 05:18:49.130121	\N	IMG_5216.jpg	image/jpeg	58851	2012-09-13 05:18:46.747151
121	1094	2012-09-13 05:18:49.244627	2012-09-13 05:18:49.244627	\N	bass-otkr-IMG_5213.jpg	image/jpeg	54545	2012-09-13 05:18:47.588083
122	1094	2012-09-13 05:18:49.270736	2012-09-13 05:18:49.270736	\N	bass1.jpg	image/jpeg	53364	2012-09-13 05:18:48.396158
123	1094	2012-09-13 05:30:05.505853	2012-09-13 05:30:05.505853	ресторан "Берлога"	rest-berloga.jpg	image/jpeg	86702	2012-09-13 05:30:01.150334
124	1094	2012-09-13 05:30:05.54689	2012-09-13 05:30:05.54689	терраса	shvedka-terasa-IMG_5210.jpg	image/jpeg	67539	2012-09-13 05:30:04.123776
125	1094	2012-09-13 05:30:05.674074	2012-09-13 05:30:05.674074	лобби-бар	lobbibar-IMG_5206.jpg	image/jpeg	59116	2012-09-13 05:30:04.765553
126	683	2012-09-13 06:22:45.787972	2012-09-13 06:22:45.787972	\N	orion.jpg	image/jpeg	49805	2012-09-13 06:22:44.982205
127	683	2012-09-13 06:52:26.497364	2012-09-13 06:52:26.497364	\N	spusk_2.jpg	image/jpeg	67545	2012-09-13 06:52:25.080258
128	683	2012-09-13 06:52:26.635591	2012-09-13 06:52:26.635591	\N	spusk_3.jpg	image/jpeg	106713	2012-09-13 06:52:25.808313
129	602	2012-09-15 04:32:08.740929	2012-09-15 04:32:08.740929	\N	logo2.gif	image/gif	37777	2012-09-15 04:32:06.994026
130	602	2012-09-15 04:33:28.074176	2012-09-15 04:33:28.074176	\N	basseyn01.jpg	image/jpeg	116727	2012-09-15 04:33:27.407289
131	602	2012-09-15 04:34:59.212768	2012-09-15 04:34:59.212768	\N	deti01.jpg	image/jpeg	90437	2012-09-15 04:34:57.99579
132	602	2012-09-15 04:34:59.243251	2012-09-15 04:34:59.243251	\N	pitanie01.jpg	image/jpeg	102570	2012-09-15 04:34:58.612777
133	602	2012-09-15 04:44:03.430622	2012-09-15 04:44:03.430622	\N	plyazh05.jpg	image/jpeg	74124	2012-09-15 04:44:02.65887
134	637	2012-09-15 05:37:32.408393	2012-09-15 05:37:32.408393	\N	3.jpg	image/jpeg	164169	2012-09-15 05:37:29.676668
135	637	2012-09-15 05:37:32.538916	2012-09-15 05:37:32.538916	\N	5.jpg	image/jpeg	173504	2012-09-15 05:37:30.310458
136	637	2012-09-15 05:37:32.566043	2012-09-15 05:37:32.566043	\N	7.jpg	image/jpeg	171075	2012-09-15 05:37:30.962803
137	637	2012-09-15 05:37:32.590581	2012-09-15 05:37:32.590581	\N	12.jpg	image/jpeg	272612	2012-09-15 05:37:31.605764
141	1065	2012-09-15 11:17:34.1303	2012-09-15 11:31:53.570579	\N	01.jpg	image/jpeg	18352	2012-09-15 11:31:52.874603
142	1065	2012-09-15 12:07:17.509719	2012-09-15 12:07:17.509719	\N	09.jpg	image/jpeg	18565	2012-09-15 12:07:15.698161
143	555	2012-09-15 12:29:03.136441	2012-09-15 13:35:43.854064	\N	P1010182.jpg	image/jpeg	215221	2012-09-15 13:35:40.6108
144	555	2012-09-15 13:35:43.890176	2012-09-15 13:35:43.890176	\N	HPIM3117.jpg	image/jpeg	48354	2012-09-15 13:35:41.447174
145	555	2012-09-15 13:35:43.917976	2012-09-15 13:35:43.917976	\N	upload_f8b052321.jpg	image/jpeg	99506	2012-09-15 13:35:42.416697
146	555	2012-09-15 13:35:44.048847	2012-09-15 13:35:44.048847	\N	зал-питания.jpg	image/jpeg	274281	2012-09-15 13:35:43.119161
147	1035	2012-09-15 19:32:50.152458	2012-09-15 19:32:50.152458	\N	4dc3f35946123.jpg	image/jpeg	92899	2012-09-15 19:32:47.860849
148	1035	2012-09-15 19:32:50.196308	2012-09-15 19:32:50.196308	\N	4dc3f3595a55d.jpg	image/jpeg	77425	2012-09-15 19:32:48.68498
150	1035	2012-09-15 19:33:15.631932	2012-09-15 19:33:15.631932	\N	4dc3f3599e73c.jpg	image/jpeg	98260	2012-09-15 19:33:14.830069
151	603	2012-09-15 20:00:10.814039	2012-09-15 20:00:10.814039	\N	zhemchug_(4).jpg	image/jpeg	57134	2012-09-15 20:00:08.768135
152	603	2012-09-15 20:00:10.877766	2012-09-15 20:00:10.877766	\N	zhemchug.jpg	image/jpeg	43013	2012-09-15 20:00:09.725055
153	633	2012-09-16 04:33:55.303015	2012-09-16 04:33:55.303015	\N	1.jpg	image/jpeg	229835	2012-09-16 04:33:54.020042
154	633	2012-09-16 04:33:55.339425	2012-09-16 04:33:55.339425	\N	4.jpg	image/jpeg	262351	2012-09-16 04:33:54.642478
155	990	2012-09-16 05:51:26.556862	2012-09-16 05:51:26.556862	\N	apri1.jpg	image/jpeg	80299	2012-09-16 05:51:22.327125
156	990	2012-09-16 05:51:26.598677	2012-09-16 05:51:26.598677	\N	apri3.jpg	image/jpeg	87612	2012-09-16 05:51:23.100454
157	990	2012-09-16 05:51:26.730465	2012-09-16 05:51:26.730465	\N	apri8.jpg	image/jpeg	106775	2012-09-16 05:51:23.807379
158	990	2012-09-16 05:51:26.756808	2012-09-16 05:51:26.756808	\N	apri73.jpg	image/jpeg	266630	2012-09-16 05:51:24.507828
159	990	2012-09-16 05:51:26.781947	2012-09-16 05:51:26.781947	\N	apri4.jpg	image/jpeg	103765	2012-09-16 05:51:25.210192
160	990	2012-09-16 05:51:26.805059	2012-09-16 05:51:26.805059	\N	apri50.jpg	image/jpeg	231981	2012-09-16 05:51:25.850525
161	853	2012-09-16 06:29:24.257221	2012-09-16 06:29:24.257221	\N	1966.jpg	image/jpeg	76681	2012-09-16 06:29:23.702123
162	645	2012-09-18 16:09:16.147947	2012-09-18 16:09:16.147947	\N	1.jpg	image/jpeg	231294	2012-09-18 16:09:14.095622
163	645	2012-09-18 16:09:16.181174	2012-09-18 16:09:16.181174	\N	2.jpg	image/jpeg	226600	2012-09-18 16:09:14.756094
164	645	2012-09-18 16:09:16.301505	2012-09-18 16:09:16.301505	\N	3.jpg	image/jpeg	237671	2012-09-18 16:09:15.471234
165	645	2012-09-18 16:25:10.586676	2012-09-18 16:25:10.586676	\N	5.jpg	image/jpeg	32679	2012-09-18 16:25:09.341969
166	645	2012-09-18 16:25:10.724457	2012-09-18 16:25:10.724457	\N	4.jpg	image/jpeg	22413	2012-09-18 16:25:09.931711
167	1046	2012-09-18 16:44:21.142331	2012-09-18 16:44:21.142331	\N	vid1_600.jpg	image/jpeg	111603	2012-09-18 16:44:15.186801
168	1046	2012-09-18 16:44:21.185019	2012-09-18 16:44:21.185019	\N	restoran3.jpg	image/jpeg	87492	2012-09-18 16:44:16.015105
169	1046	2012-09-18 16:44:21.214682	2012-09-18 16:44:21.214682	\N	restoran2.jpg	image/jpeg	93111	2012-09-18 16:44:16.622081
170	1046	2012-09-18 16:44:21.333345	2012-09-18 16:44:21.333345	\N	holl1_600.jpg	image/jpeg	90277	2012-09-18 16:44:17.243384
171	1046	2012-09-18 16:44:21.360353	2012-09-18 16:44:21.360353	\N	vid3_600.jpg	image/jpeg	104995	2012-09-18 16:44:18.071008
172	1046	2012-09-18 16:44:21.386046	2012-09-18 16:44:21.386046	\N	tren_600.jpg	image/jpeg	90943	2012-09-18 16:44:18.890931
173	1046	2012-09-18 16:44:21.413667	2012-09-18 16:44:21.413667	\N	boul_600.jpg	image/jpeg	112176	2012-09-18 16:44:19.598569
174	1046	2012-09-18 16:44:21.441074	2012-09-18 16:44:21.441074	\N	s2_600.jpg	image/jpeg	99234	2012-09-18 16:44:20.305094
175	1200	2012-09-20 15:55:26.092565	2012-09-20 15:55:26.092565	\N	239_1695.jpg	image/jpeg	208780	2012-09-20 15:55:23.226079
176	1200	2012-09-20 15:55:26.134672	2012-09-20 15:55:26.134672	\N	239_1699.jpg	image/jpeg	171373	2012-09-20 15:55:23.863185
177	1200	2012-09-20 15:55:26.161017	2012-09-20 15:55:26.161017	\N	239_1696.jpg	image/jpeg	164109	2012-09-20 15:55:24.615496
178	1200	2012-09-20 15:55:26.190021	2012-09-20 15:55:26.190021	\N	239_1701.jpg	image/jpeg	139259	2012-09-20 15:55:25.326436
179	1069	2012-09-21 05:31:18.916454	2012-09-21 05:31:18.916454	\N	vladis.jpg	image/jpeg	181688	2012-09-21 05:31:14.41439
180	1069	2012-09-21 05:31:18.962464	2012-09-21 05:31:18.962464	\N	1.jpg	image/jpeg	123411	2012-09-21 05:31:15.465552
181	1069	2012-09-21 05:31:18.994366	2012-09-21 05:31:18.994366	\N	4.jpg	image/jpeg	124600	2012-09-21 05:31:16.511297
182	1069	2012-09-21 05:31:19.023356	2012-09-21 05:31:19.023356	\N	5.jpg	image/jpeg	102451	2012-09-21 05:31:17.320584
183	1069	2012-09-21 05:31:19.052401	2012-09-21 05:31:19.052401	\N	6.jpg	image/jpeg	113081	2012-09-21 05:31:18.054623
184	1201	2012-09-21 08:07:43.987624	2012-09-21 08:07:43.987624	\N	37_big.jpg	image/jpeg	55993	2012-09-21 08:07:42.105166
185	1201	2012-09-21 08:07:44.04266	2012-09-21 08:07:44.04266	\N	38_big.jpg	image/jpeg	44275	2012-09-21 08:07:43.015263
186	1202	2012-09-22 16:40:54.148359	2012-09-22 16:40:54.148359	\N	0.jpg	image/jpeg	53818	2012-09-22 16:40:50.530014
189	1202	2012-09-22 16:40:54.376068	2012-09-22 16:40:54.376068	\N	3.jpg	image/jpeg	34423	2012-09-22 16:40:52.664726
190	1202	2012-09-22 16:40:54.40135	2012-09-22 16:40:54.40135	\N	4.jpg	image/jpeg	62122	2012-09-22 16:40:53.4203
187	1202	2012-09-22 16:40:54.188945	2012-09-22 16:54:23.861215	\N	lotos1.jpg	image/jpeg	43670	2012-09-22 16:54:22.360037
188	1202	2012-09-22 16:40:54.34981	2012-09-22 16:54:23.895843	\N	lotos.jpg	image/jpeg	52116	2012-09-22 16:54:23.153064
191	1203	2012-09-23 04:13:06.692497	2012-09-23 04:13:06.692497	\N	mg_3423j.jpg	image/jpeg	135111	2012-09-23 04:13:04.323007
192	1203	2012-09-23 04:13:06.728258	2012-09-23 04:13:06.728258	\N	3.jpg	image/jpeg	134183	2012-09-23 04:13:05.259415
193	1203	2012-09-23 04:13:06.757175	2012-09-23 04:13:06.757175	\N	4.jpg	image/jpeg	88834	2012-09-23 04:13:05.995286
194	1102	2012-09-23 05:06:02.89475	2012-09-23 05:06:02.89475	\N	ijevachka_(1).jpg	image/jpeg	48201	2012-09-23 05:06:02.31814
195	775	2012-09-23 05:58:45.830954	2012-09-23 05:58:45.830954	\N	29.jpg	image/jpeg	190883	2012-09-23 05:58:43.257796
196	775	2012-09-23 05:58:45.871345	2012-09-23 05:58:45.871345	\N	1.jpg	image/jpeg	257130	2012-09-23 05:58:44.256029
197	775	2012-09-23 05:58:45.9041	2012-09-23 05:58:45.9041	\N	4.jpg	image/jpeg	280486	2012-09-23 05:58:45.06877
198	775	2012-09-23 05:59:32.357618	2012-09-23 05:59:32.357618	\N	6.jpg	image/jpeg	89957	2012-09-23 05:59:28.21515
199	775	2012-09-23 05:59:32.401815	2012-09-23 05:59:32.401815	\N	10.jpg	image/jpeg	86970	2012-09-23 05:59:29.067017
200	775	2012-09-23 05:59:32.502048	2012-09-23 05:59:32.502048	\N	11.jpg	image/jpeg	89314	2012-09-23 05:59:29.81997
201	775	2012-09-23 05:59:32.626723	2012-09-23 05:59:32.626723	\N	12.jpg	image/jpeg	226754	2012-09-23 05:59:30.672222
202	775	2012-09-23 05:59:32.653563	2012-09-23 05:59:32.653563	\N	9.jpg	image/jpeg	238489	2012-09-23 05:59:31.527465
204	775	2012-09-28 07:07:45.514566	2012-09-28 07:07:45.514566	\N	5058ca3875139e0f4b027125.jpg	image/jpeg	82368	2012-09-28 07:07:37.411291
205	1204	2012-09-30 04:54:32.591252	2012-09-30 04:54:32.591252	\N	1.jpg	image/jpeg	138143	2012-09-30 04:54:30.094962
206	1204	2012-09-30 04:54:33.161488	2012-09-30 04:54:33.161488	\N	7.jpg	image/jpeg	37328	2012-09-30 04:54:31.150747
207	1204	2012-09-30 04:54:33.203874	2012-09-30 04:54:33.203874	\N	9.jpg	image/jpeg	31037	2012-09-30 04:54:31.862055
208	1205	2012-09-30 07:34:12.277833	2012-09-30 07:34:12.277833	\N	b014800.jpg	image/jpeg	42104	2012-09-30 07:34:08.58414
209	1205	2012-09-30 07:34:12.406844	2012-09-30 07:34:12.406844	\N	b014803.jpg	image/jpeg	33011	2012-09-30 07:34:09.356202
210	1205	2012-09-30 07:34:12.43122	2012-09-30 07:34:12.43122	\N	b014808.jpg	image/jpeg	37439	2012-09-30 07:34:10.050731
211	1205	2012-09-30 07:34:12.454088	2012-09-30 07:34:12.454088	\N	b014806.jpg	image/jpeg	45160	2012-09-30 07:34:10.712534
213	671	2012-09-30 08:43:13.177032	2012-09-30 08:43:13.177032	\N	char_tree912_5729.jpg	image/jpeg	34070	2012-09-30 08:43:09.405051
214	671	2012-09-30 08:43:13.214079	2012-09-30 08:43:13.214079	\N	char_tree912_5728.jpg	image/jpeg	31459	2012-09-30 08:43:10.022036
215	671	2012-09-30 08:43:13.246087	2012-09-30 08:43:13.246087	\N	char_tree912_2682.jpg	image/jpeg	29582	2012-09-30 08:43:10.67404
216	671	2012-09-30 08:43:13.370275	2012-09-30 08:43:13.370275	\N	char_tree912_2671.jpg	image/jpeg	22022	2012-09-30 08:43:11.299212
217	671	2012-09-30 08:43:13.396277	2012-09-30 08:43:13.396277	\N	char_tree912_2668.jpg	image/jpeg	31299	2012-09-30 08:43:11.975291
218	671	2012-09-30 08:43:13.422082	2012-09-30 08:43:13.422082	\N	char_tree912_2670.jpg	image/jpeg	25258	2012-09-30 08:43:12.568982
219	644	2012-10-24 09:41:23.497365	2012-10-24 09:41:23.497365	\N	88LBQe.jpg	image/jpeg	128138	2012-10-24 09:41:09.229464
224	644	2012-10-24 09:41:23.887992	2012-10-24 09:41:23.887992	\N	nUvcQk.jpg	image/jpeg	141692	2012-10-24 09:41:14.500907
227	644	2012-10-24 09:41:23.96109	2012-10-24 09:41:23.96109	\N	JQXZfs.jpg	image/jpeg	130426	2012-10-24 09:41:16.96751
230	644	2012-10-24 09:41:24.117847	2012-10-24 09:41:24.117847	\N	v8FAO0.jpg	image/jpeg	89488	2012-10-24 09:41:19.057993
233	644	2012-10-24 09:41:24.255526	2012-10-24 09:41:24.255526	\N	vvplRW.jpg	image/jpeg	140573	2012-10-24 09:41:21.222964
237	612	2012-10-25 07:16:21.784646	2012-10-25 07:16:21.784646	\N	char_tree1725_5112.jpg	image/jpeg	35192	2012-10-25 07:16:19.914389
238	612	2012-10-25 07:16:21.819434	2012-10-25 07:16:21.819434	\N	char_tree1725_5111.jpg	image/jpeg	38276	2012-10-25 07:16:20.482667
239	612	2012-10-25 07:16:21.841087	2012-10-25 07:16:21.841087	\N	char_tree1725_5120.jpg	image/jpeg	33944	2012-10-25 07:16:21.067735
240	612	2012-10-25 07:19:15.34151	2012-10-25 07:19:15.34151	\N	char_tree1725_5117.jpg	image/jpeg	33312	2012-10-25 07:19:14.230375
241	612	2012-10-25 07:19:15.378579	2012-10-25 07:19:15.378579	\N	char_tree1725_5148.jpg	image/jpeg	28437	2012-10-25 07:19:14.811688
242	1206	2012-10-25 11:16:28.031456	2012-10-25 11:16:28.031456	\N	28.jpg	image/jpeg	501572	2012-10-25 11:16:25.045023
243	1206	2012-10-25 11:16:28.080064	2012-10-25 11:16:28.080064	\N	33.jpg	image/jpeg	454989	2012-10-25 11:16:25.63661
244	1206	2012-10-25 11:16:28.109511	2012-10-25 11:16:28.109511	\N	img_9089_(1).jpg	image/jpeg	359333	2012-10-25 11:16:26.227998
245	1206	2012-10-25 11:16:28.132776	2012-10-25 11:16:28.132776	\N	35.jpg	image/jpeg	471273	2012-10-25 11:16:26.77634
246	1206	2012-10-25 11:16:28.230017	2012-10-25 11:16:28.230017	\N	img_6940.jpg	image/jpeg	474691	2012-10-25 11:16:27.329011
247	776	2012-10-26 06:52:11.955506	2012-10-26 06:52:11.955506	\N	загруженное_(2).jpg	image/jpeg	108217	2012-10-26 06:52:09.470358
248	776	2012-10-26 06:52:12.073491	2012-10-26 06:52:12.073491	\N	IMG_7676m.jpg	image/jpeg	94546	2012-10-26 06:52:10.375138
249	776	2012-10-26 06:52:12.092728	2012-10-26 06:52:12.092728	\N	загруженное.jpg	image/jpeg	100993	2012-10-26 06:52:10.887461
250	776	2012-10-26 06:52:12.1109	2012-10-26 06:52:12.1109	\N	загруженное_(1).jpg	image/jpeg	92866	2012-10-26 06:52:11.405594
251	759	2012-10-26 09:01:35.543017	2012-10-26 09:01:35.543017	\N	img_2119.jpg	image/jpeg	107851	2012-10-26 09:01:31.890254
252	759	2012-10-26 09:01:35.592947	2012-10-26 09:01:35.592947	\N	IMG_1841.jpg	image/jpeg	54958	2012-10-26 09:01:32.48275
256	759	2012-10-26 09:01:35.795681	2012-10-26 09:01:35.795681	\N	img_2350.jpg	image/jpeg	86992	2012-10-26 09:01:34.973452
259	759	2012-10-26 09:04:23.106943	2012-10-26 09:04:23.106943	\N	img_2021.jpg	image/jpeg	81827	2012-10-26 09:04:21.938304
260	759	2012-10-26 09:04:23.141093	2012-10-26 09:04:23.141093	\N	img_2054.jpg	image/jpeg	91828	2012-10-26 09:04:22.570406
282	1210	2012-10-30 15:00:34.560699	2012-10-30 15:00:34.560699	Детская площадка	c5fd8e2c61.JPG	image/jpeg	180833	2012-10-30 15:00:30.792865
266	1209	2012-10-26 10:22:12.60169	2012-10-26 10:22:12.60169	\N	2.jpg	image/jpeg	64523	2012-10-26 10:22:09.874009
267	1209	2012-10-26 10:22:12.742057	2012-10-26 10:22:12.742057	\N	3.jpg	image/jpeg	63074	2012-10-26 10:22:10.392836
268	1209	2012-10-26 10:22:12.858423	2012-10-26 10:22:12.858423	\N	4.jpg	image/jpeg	77361	2012-10-26 10:22:11.001552
269	1209	2012-10-26 10:22:12.884997	2012-10-26 10:22:12.884997	\N	5.jpg	image/jpeg	79861	2012-10-26 10:22:11.527879
270	1209	2012-10-26 10:22:12.911926	2012-10-26 10:22:12.911926	\N	6.jpg	image/jpeg	69768	2012-10-26 10:22:12.056701
271	1210	2012-10-30 14:53:53.330922	2012-10-30 14:53:53.330922	\N	7cf2397201.jpg	image/jpeg	348400	2012-10-30 14:53:44.018633
272	1210	2012-10-30 14:53:53.503558	2012-10-30 14:53:53.503558	\N	770d347a8c.JPG	image/jpeg	341597	2012-10-30 14:53:44.658963
273	1210	2012-10-30 14:53:53.523373	2012-10-30 14:53:53.523373	\N	7a6bbe4f73.jpg	image/jpeg	183536	2012-10-30 14:53:45.427115
274	1210	2012-10-30 14:53:53.58119	2012-10-30 14:53:53.58119	Бассейн и терраса	ec8994f75e.JPG	image/jpeg	424696	2012-10-30 14:53:46.028748
275	1210	2012-10-30 14:53:53.605558	2012-10-30 14:53:53.605558	Бассейн и терраса	0dee0d678c.JPG	image/jpeg	4264215	2012-10-30 14:53:46.685795
276	1210	2012-10-30 14:53:53.706099	2012-10-30 14:53:53.706099	Детская площадка	50ed9a29ef.JPG	image/jpeg	212439	2012-10-30 14:53:49.648035
283	1210	2012-10-30 15:00:34.680073	2012-10-30 15:00:34.680073	Летний бар	e34ee12c4b.jpg	image/jpeg	328878	2012-10-30 15:00:31.333452
284	1210	2012-10-30 15:00:34.701257	2012-10-30 15:00:34.701257	Летний бар	26d2212c3c_(1).JPG	image/jpeg	163152	2012-10-30 15:00:32.056303
285	1210	2012-10-30 15:00:34.721809	2012-10-30 15:00:34.721809	Детская комната	fbb934ff40.jpg	image/jpeg	207868	2012-10-30 15:00:32.595358
286	1210	2012-10-30 15:00:34.742978	2012-10-30 15:00:34.742978	Столовая	2ad6a88bd9.JPG	image/jpeg	381571	2012-10-30 15:00:33.286182
287	1210	2012-10-30 15:00:34.822926	2012-10-30 15:00:34.822926	Столовая	60e050eeac.jpg	image/jpeg	223770	2012-10-30 15:00:33.976408
288	620	2012-10-31 06:25:09.266073	2012-10-31 06:25:09.266073	\N	1.JPG	image/jpeg	304820	2012-10-31 06:25:04.95101
289	620	2012-10-31 06:25:09.306559	2012-10-31 06:25:09.306559	\N	3.JPG	image/jpeg	354279	2012-10-31 06:25:05.54809
290	620	2012-10-31 06:25:09.401959	2012-10-31 06:25:09.401959	\N	4.JPG	image/jpeg	282396	2012-10-31 06:25:06.11909
291	620	2012-10-31 06:25:09.423894	2012-10-31 06:25:09.423894	\N	6.JPG	image/jpeg	345872	2012-10-31 06:25:06.711544
292	620	2012-10-31 06:25:09.446852	2012-10-31 06:25:09.446852	\N	7.JPG	image/jpeg	271999	2012-10-31 06:25:07.298252
293	620	2012-10-31 06:25:09.470713	2012-10-31 06:25:09.470713	\N	9.JPG	image/jpeg	289987	2012-10-31 06:25:07.966502
294	620	2012-10-31 06:25:09.553393	2012-10-31 06:25:09.553393	\N	8.JPG	image/jpeg	310325	2012-10-31 06:25:08.566526
295	1211	2012-11-01 08:09:21.759349	2012-11-01 08:09:21.759349	\N	6179.jpg	image/jpeg	190439	2012-11-01 08:09:12.58683
296	1211	2012-11-01 08:09:21.789922	2012-11-01 08:09:21.789922	\N	P6068520.JPG	image/jpeg	8098307	2012-11-01 08:09:13.873085
297	1211	2012-11-01 08:09:21.944459	2012-11-01 08:09:21.944459	\N	14157.jpg	image/jpeg	75892	2012-11-01 08:09:17.53885
298	1211	2012-11-01 08:09:22.026066	2012-11-01 08:09:22.026066	\N	P6068532.JPG	image/jpeg	8698058	2012-11-01 08:09:18.056439
299	1211	2012-11-01 08:09:22.151638	2012-11-01 08:09:22.151638	\N	14158.jpg	image/jpeg	114614	2012-11-01 08:09:21.183186
300	1212	2012-11-07 07:18:47.858544	2012-11-07 07:18:47.858544	\N	6132.jpg	image/jpeg	156870	2012-11-07 07:18:42.405633
301	1212	2012-11-07 07:18:47.980298	2012-11-07 07:18:47.980298	\N	загруженное_(3).jpg	image/jpeg	92396	2012-11-07 07:18:43.654925
302	1212	2012-11-07 07:18:47.998278	2012-11-07 07:18:47.998278	\N	загруженное_(5).jpg	image/jpeg	152482	2012-11-07 07:18:44.190388
303	1212	2012-11-07 07:18:48.022708	2012-11-07 07:18:48.022708	\N	загруженное_(9).jpg	image/jpeg	153238	2012-11-07 07:18:44.770544
304	1212	2012-11-07 07:18:48.042729	2012-11-07 07:18:48.042729	\N	загруженное_(8).jpg	image/jpeg	128466	2012-11-07 07:18:45.365725
305	1212	2012-11-07 07:18:48.115518	2012-11-07 07:18:48.115518	\N	загруженное_(6).jpg	image/jpeg	100043	2012-11-07 07:18:46.064983
306	1212	2012-11-07 07:18:48.135567	2012-11-07 07:18:48.135567	\N	загруженное_(7).jpg	image/jpeg	86779	2012-11-07 07:18:46.647736
307	1212	2012-11-07 07:18:48.154503	2012-11-07 07:18:48.154503	\N	загруженное_(1).jpg	image/jpeg	109856	2012-11-07 07:18:47.229994
308	1215	2012-11-08 07:14:00.785636	2012-11-08 07:14:00.785636	\N	14.jpg	image/jpeg	59878	2012-11-08 07:13:57.951502
309	1215	2012-11-08 07:14:00.814658	2012-11-08 07:14:00.814658	\N	13.jpg	image/jpeg	66153	2012-11-08 07:13:58.494417
310	1215	2012-11-08 07:14:00.837281	2012-11-08 07:14:00.837281	\N	10.jpg	image/jpeg	30677	2012-11-08 07:13:59.028939
311	1215	2012-11-08 07:14:00.937321	2012-11-08 07:14:00.937321	\N	20.jpg	image/jpeg	40706	2012-11-08 07:13:59.505075
312	1215	2012-11-08 07:14:00.955936	2012-11-08 07:14:00.955936	\N	21.jpg	image/jpeg	29765	2012-11-08 07:14:00.179699
313	1214	2012-11-08 15:30:14.975707	2012-11-08 15:30:14.975707	\N	P6068494.jpg	image/jpeg	105065	2012-11-08 15:30:11.450988
314	1214	2012-11-08 15:30:15.08097	2012-11-08 15:30:15.08097	\N	P6068499.jpg	image/jpeg	192885	2012-11-08 15:30:12.259818
315	1214	2012-11-08 15:30:15.101732	2012-11-08 15:30:15.101732	\N	P6068500.jpg	image/jpeg	151515	2012-11-08 15:30:12.926228
316	1214	2012-11-08 15:30:15.129858	2012-11-08 15:30:15.129858	\N	P6068504.jpg	image/jpeg	79007	2012-11-08 15:30:13.567477
317	1214	2012-11-08 15:30:15.158674	2012-11-08 15:30:15.158674	\N	P6068511.jpg	image/jpeg	89762	2012-11-08 15:30:14.267075
318	1217	2012-11-09 08:14:27.942363	2012-11-09 08:14:27.942363	\N	nad_(11).jpg	image/jpeg	224097	2012-11-09 08:14:24.41088
319	1217	2012-11-09 08:14:27.972143	2012-11-09 08:14:27.972143	\N	img_51_3.jpg	image/jpeg	267918	2012-11-09 08:14:25.030724
320	1217	2012-11-09 08:14:27.999285	2012-11-09 08:14:27.999285	\N	img_51_2.jpg	image/jpeg	252361	2012-11-09 08:14:25.651656
321	1217	2012-11-09 08:14:28.027229	2012-11-09 08:14:28.027229	\N	P6198558.jpg	image/jpeg	139480	2012-11-09 08:14:26.294575
322	1217	2012-11-09 08:14:28.126382	2012-11-09 08:14:28.126382	\N	img_51_1.jpg	image/jpeg	251235	2012-11-09 08:14:27.038446
323	1218	2012-11-12 08:38:47.85506	2012-11-12 08:38:47.85506	\N	P4203520.JPG	image/jpeg	1030596	2012-11-12 08:38:42.957575
325	1218	2012-11-12 08:38:47.916967	2012-11-12 08:38:47.916967	\N	22629.jpg	image/jpeg	38351	2012-11-12 08:38:44.946212
328	1218	2012-11-12 08:38:48.057819	2012-11-12 08:38:48.057819	Чайная комната	22640.jpg	image/jpeg	31139	2012-11-12 08:38:46.641206
329	1218	2012-11-12 08:38:48.074538	2012-11-12 08:38:48.074538	Сауна	22641.jpg	image/jpeg	25990	2012-11-12 08:38:47.277649
330	1218	2012-11-12 08:41:15.689554	2012-11-12 08:41:15.689554	Столовая	22639.jpg	image/jpeg	46942	2012-11-12 08:41:15.128795
331	1219	2012-11-12 10:59:55.858683	2012-11-12 10:59:55.858683	\N	albatros-15.jpg	image/jpeg	108554	2012-11-12 10:59:50.836982
332	1219	2012-11-12 10:59:55.962046	2012-11-12 10:59:55.962046	\N	albatros-10.jpg	image/jpeg	107681	2012-11-12 10:59:51.411592
333	1219	2012-11-12 10:59:56.094613	2012-11-12 11:02:25.692221	Кафе "Баунти"	restoran_11.jpg	image/jpeg	194405	2012-11-12 10:59:51.948012
334	1219	2012-11-12 10:59:56.115854	2012-11-12 11:02:25.693741	Кафе "Ti Amo"	bounty23_(1).jpg	image/jpeg	68650	2012-11-12 10:59:52.544302
335	1219	2012-11-12 10:59:56.137591	2012-11-12 11:02:25.694652	Конференц-зал	conferenc_5.jpg	image/jpeg	166999	2012-11-12 10:59:53.23021
336	1219	2012-11-12 10:59:56.217583	2012-11-12 11:02:25.69577	Конференц-зал	conferenc_6.jpg	image/jpeg	99634	2012-11-12 10:59:53.817715
337	1219	2012-11-12 10:59:56.242558	2012-11-12 11:02:25.696961	Сауна	termal_8.jpg	image/jpeg	251799	2012-11-12 10:59:54.444388
338	1219	2012-11-12 10:59:56.262773	2012-11-12 11:02:25.698241	Сауна	termal_9.jpg	image/jpeg	116716	2012-11-12 10:59:55.058056
339	733	2012-11-12 12:21:04.519699	2012-11-12 12:21:04.519699	\N	5.jpg	image/jpeg	73904	2012-11-12 12:21:00.487691
341	733	2012-11-12 12:21:04.584509	2012-11-12 12:21:04.584509	\N	IMG_4590.jpg	image/jpeg	365310	2012-11-12 12:21:01.660696
342	733	2012-11-12 12:21:04.69018	2012-11-12 12:21:04.69018	\N	IMG_4580.jpg	image/jpeg	447271	2012-11-12 12:21:02.55788
343	733	2012-11-12 12:21:04.713561	2012-11-12 12:21:04.713561	\N	9.jpg	image/jpeg	66849	2012-11-12 12:21:03.281726
344	733	2012-11-12 12:21:04.732772	2012-11-12 12:21:04.732772	\N	IMG_4594.jpg	image/jpeg	229606	2012-11-12 12:21:03.846601
345	424	2012-11-13 10:17:43.254155	2012-11-13 10:17:43.254155	\N	загруженное.jpg	image/jpeg	165732	2012-11-13 10:17:39.944802
346	424	2012-11-13 10:17:43.287506	2012-11-13 10:17:43.287506	\N	загруженное_(2).jpg	image/jpeg	131308	2012-11-13 10:17:40.634923
347	424	2012-11-13 10:17:43.386108	2012-11-13 10:17:43.386108	\N	загруженное_(4).jpg	image/jpeg	80563	2012-11-13 10:17:41.222603
348	424	2012-11-13 10:17:43.405466	2012-11-13 10:17:43.405466	\N	13.jpg	image/jpeg	49011	2012-11-13 10:17:41.825663
349	424	2012-11-13 10:17:43.42829	2012-11-13 10:17:43.42829	\N	12.jpg	image/jpeg	64839	2012-11-13 10:17:42.415651
350	631	2012-11-14 06:18:38.055393	2012-11-14 06:18:38.055393	\N	189.jpg	image/jpeg	166426	2012-11-14 06:18:35.148396
351	631	2012-11-14 06:18:38.088195	2012-11-14 06:18:38.088195	\N	188.jpg	image/jpeg	168749	2012-11-14 06:18:35.718372
352	631	2012-11-14 06:18:38.202551	2012-11-14 06:18:38.202551	\N	191.jpg	image/jpeg	180854	2012-11-14 06:18:36.393443
353	631	2012-11-14 06:18:38.226048	2012-11-14 06:18:38.226048	\N	pom-baturinux_(7).jpg	image/jpeg	55650	2012-11-14 06:18:36.981186
354	631	2012-11-14 06:18:38.245737	2012-11-14 06:18:38.245737	\N	pom-baturinux_(6).jpg	image/jpeg	59210	2012-11-14 06:18:37.486232
355	977	2012-11-19 10:32:41.565494	2012-11-19 10:32:41.565494	\N	ex1.jpg	image/jpeg	24204	2012-11-19 10:32:41.019803
356	980	2012-11-19 11:23:54.880008	2012-11-19 11:23:54.880008	\N	1.jpg	image/jpeg	172141	2012-11-19 11:23:53.571388
357	980	2012-11-19 11:23:54.905261	2012-11-19 11:23:54.905261	\N	2.jpg	image/jpeg	35601	2012-11-19 11:23:54.178007
358	986	2012-11-19 16:37:21.011177	2012-11-19 16:37:21.011177	\N	1.jpg	image/jpeg	148464	2012-11-19 16:37:19.82724
359	986	2012-11-19 16:37:21.140014	2012-11-19 16:37:21.140014	\N	2.jpg	image/jpeg	108523	2012-11-19 16:37:20.401243
360	987	2012-11-20 07:37:01.831673	2012-11-20 07:37:01.831673	\N	Плаза_5.jpg	image/jpeg	77695	2012-11-20 07:36:56.911245
361	987	2012-11-20 07:37:01.9977	2012-11-20 07:37:01.9977	\N	FB41CC249043-11.jpg	image/jpeg	48849	2012-11-20 07:36:57.445377
362	987	2012-11-20 07:37:02.019237	2012-11-20 07:37:02.019237	\N	07F9955AAB33-11.jpg	image/jpeg	51146	2012-11-20 07:36:57.971587
363	987	2012-11-20 07:37:02.046141	2012-11-20 07:37:02.046141	\N	Плаза_7.jpg	image/jpeg	41608	2012-11-20 07:36:58.602773
364	987	2012-11-20 07:37:02.070682	2012-11-20 07:37:02.070682	\N	Плаза_11.jpg	image/jpeg	63379	2012-11-20 07:36:59.137036
365	987	2012-11-20 07:37:02.093262	2012-11-20 07:37:02.093262	\N	0EBAEB9332BD-11.jpg	image/jpeg	26093	2012-11-20 07:36:59.677191
366	987	2012-11-20 07:37:02.191795	2012-11-20 07:37:02.191795	Сауна	sauna_small.jpg	image/jpeg	46825	2012-11-20 07:37:00.170049
367	987	2012-11-20 07:37:02.216178	2012-11-20 07:37:02.216178	Конференц-зал	zal_small.jpg	image/jpeg	49133	2012-11-20 07:37:00.678665
368	987	2012-11-20 07:37:02.238711	2012-11-20 07:37:02.238711	Ресторан "ВАН"	Плаза_6.jpg	image/jpeg	75183	2012-11-20 07:37:01.223062
487	1003	2012-11-22 15:52:05.581035	2012-11-22 15:52:05.581035	\N	282_2381.jpg	image/jpeg	144055	2012-11-22 15:52:00.298616
488	1003	2012-11-22 15:52:05.610537	2012-11-22 15:52:05.610537	\N	282_2382.jpg	image/jpeg	112248	2012-11-22 15:52:01.011385
489	1003	2012-11-22 15:52:05.640518	2012-11-22 15:52:05.640518	\N	282_2384.jpg	image/jpeg	106683	2012-11-22 15:52:01.68529
490	1003	2012-11-22 15:52:05.661223	2012-11-22 15:52:05.661223	\N	1_9.jpg	image/jpeg	592146	2012-11-22 15:52:02.625396
491	1003	2012-11-22 15:52:05.769291	2012-11-22 15:52:05.769291	\N	282_2389.jpg	image/jpeg	111871	2012-11-22 15:52:04.807447
492	474	2012-11-23 06:59:48.394473	2012-11-23 06:59:48.394473	\N	foto1000015e.jpg	image/jpeg	135218	2012-11-23 06:59:44.123228
494	474	2012-11-23 06:59:48.465376	2012-11-23 06:59:48.465376	\N	gostinica_cayka_nomera000001e.jpg	image/jpeg	86575	2012-11-23 06:59:45.51974
377	989	2012-11-20 09:16:15.521451	2012-11-20 09:16:15.521451	\N	Боспор_0.jpg	image/jpeg	40191	2012-11-20 09:16:11.193651
378	989	2012-11-20 09:16:15.640195	2012-11-20 09:16:15.640195	\N	hotel.jpg	image/jpeg	32843	2012-11-20 09:16:11.83664
384	989	2012-11-20 09:16:15.879281	2012-11-20 09:17:50.55617	Конференц-зал	hall.jpg	image/jpeg	11507	2012-11-20 09:16:14.952411
383	989	2012-11-20 09:16:15.857684	2012-11-20 09:17:50.557194	Тренажерный зал	zal.jpg	image/jpeg	41947	2012-11-20 09:16:14.47255
382	989	2012-11-20 09:16:15.727738	2012-11-20 09:17:50.558185	Комната отдыха	Боспор_7.jpg	image/jpeg	28105	2012-11-20 09:16:13.930693
381	989	2012-11-20 09:16:15.706638	2012-11-20 09:17:50.559314	Сауна	Боспор_8.jpg	image/jpeg	31308	2012-11-20 09:16:13.377941
380	989	2012-11-20 09:16:15.685848	2012-11-20 09:17:50.560209	Ресторан "Боспор"	restoran3.jpg	image/jpeg	17274	2012-11-20 09:16:12.851171
379	989	2012-11-20 09:16:15.663857	2012-11-20 09:17:50.561223	Ресторан "Боспор"	restoran.jpg	image/jpeg	60495	2012-11-20 09:16:12.32178
385	465	2012-11-20 10:49:23.095626	2012-11-20 10:49:23.095626	\N	hotel-photo-new-11.jpg	image/jpeg	113705	2012-11-20 10:49:19.451353
386	465	2012-11-20 10:49:23.123489	2012-11-20 10:49:23.123489	\N	hotel-photo-new-10.jpg	image/jpeg	244263	2012-11-20 10:49:20.037306
387	465	2012-11-20 10:49:23.148813	2012-11-20 10:49:23.148813	\N	hotel-photo-new-8.jpg	image/jpeg	151273	2012-11-20 10:49:20.62262
388	465	2012-11-20 10:49:23.260985	2012-11-20 10:49:23.260985	\N	hotel-photo-new-3.jpg	image/jpeg	130760	2012-11-20 10:49:21.29569
389	465	2012-11-20 10:49:23.281172	2012-11-20 10:49:23.281172	\N	hotel-photo-new-1.jpg	image/jpeg	116892	2012-11-20 10:49:21.871301
390	465	2012-11-20 10:49:23.301489	2012-11-20 10:49:23.301489	\N	hotel-photo-new-2.jpg	image/jpeg	130940	2012-11-20 10:49:22.433825
396	595	2012-11-22 07:34:05.442345	2012-11-22 07:34:05.442345	\N	4316.jpg	image/jpeg	56344	2012-11-22 07:33:59.810478
397	595	2012-11-22 07:34:05.467239	2012-11-22 07:34:05.467239	\N	processPhoto_(1).jpg	image/jpeg	30854	2012-11-22 07:34:00.395841
398	595	2012-11-22 07:34:05.491622	2012-11-22 07:34:05.491622	\N	processPhoto_(2).jpg	image/jpeg	25501	2012-11-22 07:34:00.957492
399	595	2012-11-22 07:34:05.598009	2012-11-22 07:34:05.598009	\N	vb_(1).jpg	image/jpeg	8619	2012-11-22 07:34:01.476154
400	595	2012-11-22 07:34:05.615325	2012-11-22 07:34:05.615325	\N	vb_(9).jpg	image/jpeg	9991	2012-11-22 07:34:01.997264
401	595	2012-11-22 07:34:05.637082	2012-11-22 07:34:05.637082	\N	processPhoto_(4).jpg	image/jpeg	22653	2012-11-22 07:34:02.654551
402	595	2012-11-22 07:34:05.657432	2012-11-22 07:34:05.657432	\N	processPhoto.jpg	image/jpeg	23112	2012-11-22 07:34:03.193587
403	595	2012-11-22 07:34:05.67742	2012-11-22 07:34:05.67742	\N	4310.jpg	image/jpeg	44842	2012-11-22 07:34:03.736514
404	595	2012-11-22 07:34:05.696713	2012-11-22 07:34:05.696713	\N	4315.jpg	image/jpeg	59689	2012-11-22 07:34:04.305543
405	595	2012-11-22 07:34:05.780762	2012-11-22 07:34:05.780762	\N	2.jpg	image/jpeg	25777	2012-11-22 07:34:04.865942
434	1220	2012-11-22 09:37:10.1375	2012-11-22 09:37:10.1375	\N	phoca_thumb_l_pic009.JPG	image/jpeg	116323	2012-11-22 09:37:09.442002
435	1220	2012-11-22 09:37:58.045576	2012-11-22 09:37:58.045576	\N	phoca_thumb_l_foto002.JPG	image/jpeg	95228	2012-11-22 09:37:56.226367
436	1220	2012-11-22 09:37:58.073639	2012-11-22 09:37:58.073639	\N	phoca_thumb_l_foto024.JPG	image/jpeg	56329	2012-11-22 09:37:56.798956
437	1220	2012-11-22 09:37:58.099291	2012-11-22 09:37:58.099291	\N	phoca_thumb_l_new001.jpg	image/jpeg	93340	2012-11-22 09:37:57.347428
438	1220	2012-11-22 09:38:42.690559	2012-11-22 09:38:42.690559	Пляж отеля	phoca_thumb_l_beach004.jpg	image/jpeg	64847	2012-11-22 09:38:41.977858
439	1220	2012-11-22 09:39:26.887699	2012-11-22 09:39:26.887699	Столовая	phoca_thumb_l_foto001_(1).jpg	image/jpeg	101972	2012-11-22 09:39:26.2198
440	1220	2012-11-22 09:40:10.699626	2012-11-22 09:40:10.699626	Детская игровая площадка	phoca_thumb_l_IMG_0940.jpg	image/jpeg	79474	2012-11-22 09:40:09.89366
443	1220	2012-11-22 09:43:51.092581	2012-11-22 09:43:51.092581	Детская комната	DSC03162.jpg	image/jpeg	310778	2012-11-22 09:43:50.217444
444	1220	2012-11-22 09:44:32.529904	2012-11-22 09:44:32.529904	Детский развлекательный центр	DSC03197.jpg	image/jpeg	357915	2012-11-22 09:44:31.631649
445	1220	2012-11-22 09:46:00.362665	2012-11-22 09:46:00.362665	SPA-услуги	IMG_0975.jpg	image/jpeg	173725	2012-11-22 09:45:58.859859
446	1220	2012-11-22 09:46:00.392815	2012-11-22 09:46:00.392815	Внутренний бассейн	phoca_thumb_l_dsc02281.jpg	image/jpeg	61967	2012-11-22 09:45:59.683332
448	1220	2012-11-22 09:47:16.957912	2012-11-22 09:47:16.957912	Бильярл	DSC02721.jpg	image/jpeg	252906	2012-11-22 09:47:15.383353
449	1220	2012-11-22 09:47:16.99702	2012-11-22 09:47:16.99702	Боулинг	2.jpg	image/jpeg	300954	2012-11-22 09:47:16.049673
450	472	2012-11-22 10:52:28.859402	2012-11-22 10:52:28.859402	\N	12708355471794.jpg	image/jpeg	91371	2012-11-22 10:52:26.395412
451	472	2012-11-22 10:52:28.892055	2012-11-22 10:52:28.892055	\N	12708342086957.jpg	image/jpeg	59575	2012-11-22 10:52:26.985712
452	472	2012-11-22 10:52:28.917414	2012-11-22 10:52:28.917414	\N	12708342019563.jpg	image/jpeg	67415	2012-11-22 10:52:27.533079
453	472	2012-11-22 10:52:28.939148	2012-11-22 10:52:28.939148	\N	12708342043806.jpg	image/jpeg	107128	2012-11-22 10:52:28.231955
454	472	2012-11-22 10:53:33.015569	2012-11-22 10:53:33.015569	\N	12708355414809.jpg	image/jpeg	68818	2012-11-22 10:53:30.128226
455	472	2012-11-22 10:53:33.046348	2012-11-22 10:53:33.046348	\N	12708355448577.jpg	image/jpeg	87464	2012-11-22 10:53:30.70502
456	472	2012-11-22 10:53:33.162623	2012-11-22 10:53:33.162623	\N	12708366115805.jpg	image/jpeg	73145	2012-11-22 10:53:31.281677
457	472	2012-11-22 10:53:33.181677	2012-11-22 10:53:33.181677	Ресторан	12708355251131.jpg	image/jpeg	88730	2012-11-22 10:53:31.843321
458	472	2012-11-22 10:53:33.20104	2012-11-22 10:53:33.20104	Ресторан	12708355353024.jpg	image/jpeg	56934	2012-11-22 10:53:32.392571
459	472	2012-11-22 10:54:07.499407	2012-11-22 10:54:07.499407	Сауна	224_2573.jpg	image/jpeg	103143	2012-11-22 10:54:06.731761
460	475	2012-11-22 11:57:43.128446	2012-11-22 11:57:43.128446	\N	1.JPG	image/jpeg	212227	2012-11-22 11:57:40.485844
461	475	2012-11-22 11:57:43.160822	2012-11-22 11:57:43.160822	\N	2.jpg	image/jpeg	185244	2012-11-22 11:57:41.231581
462	475	2012-11-22 11:57:43.187285	2012-11-22 11:57:43.187285	\N	8.jpg	image/jpeg	204096	2012-11-22 11:57:41.834021
463	475	2012-11-22 11:57:43.212497	2012-11-22 11:57:43.212497	\N	9.jpg	image/jpeg	130540	2012-11-22 11:57:42.421543
464	475	2012-11-22 11:59:57.603036	2012-11-22 11:59:57.603036	\N	4.jpg	image/jpeg	164233	2012-11-22 11:59:54.480648
465	475	2012-11-22 11:59:57.728938	2012-11-22 11:59:57.728938	\N	12.jpg	image/jpeg	113491	2012-11-22 11:59:55.052199
466	475	2012-11-22 11:59:57.749725	2012-11-22 11:59:57.749725	\N	13.jpg	image/jpeg	124405	2012-11-22 11:59:55.663587
467	475	2012-11-22 11:59:57.771274	2012-11-22 11:59:57.771274	\N	14.jpg	image/jpeg	124515	2012-11-22 11:59:56.297785
468	475	2012-11-22 11:59:57.793011	2012-11-22 11:59:57.793011	\N	15.jpg	image/jpeg	113252	2012-11-22 11:59:56.926757
469	475	2012-11-22 12:01:11.611184	2012-11-22 12:01:11.611184	\N	17.jpg	image/jpeg	148955	2012-11-22 12:01:08.63542
470	475	2012-11-22 12:01:11.641294	2012-11-22 12:01:11.641294	\N	18.jpg	image/jpeg	135440	2012-11-22 12:01:09.249913
471	475	2012-11-22 12:01:11.758475	2012-11-22 12:01:11.758475	\N	4860.jpg	image/jpeg	42439	2012-11-22 12:01:09.845612
472	475	2012-11-22 12:01:11.778663	2012-11-22 12:01:11.778663	\N	4864.jpg	image/jpeg	32012	2012-11-22 12:01:10.393867
473	475	2012-11-22 12:01:11.799324	2012-11-22 12:01:11.799324	\N	4865_(1).jpg	image/jpeg	31489	2012-11-22 12:01:10.963418
474	1001	2012-11-22 14:01:09.227972	2012-11-22 14:01:09.227972	\N	DSC_0032.JPG	image/jpeg	76448	2012-11-22 14:01:07.226141
475	1001	2012-11-22 14:01:09.253552	2012-11-22 14:01:09.253552	\N	IMG_1752_1_.jpg	image/jpeg	53729	2012-11-22 14:01:07.845579
476	1001	2012-11-22 14:01:09.271301	2012-11-22 14:01:09.271301	\N	IMG_2637_1_.jpg	image/jpeg	58838	2012-11-22 14:01:08.445751
477	1001	2012-11-22 14:02:14.998459	2012-11-22 14:02:14.998459	\N	IMG_2701_1_.jpg	image/jpeg	37002	2012-11-22 14:02:11.780368
478	1001	2012-11-22 14:02:15.026308	2012-11-22 14:02:15.026308	\N	КОНТИНЕНТ_Кафе-бар_1.jpg	image/jpeg	60561	2012-11-22 14:02:12.384745
479	1001	2012-11-22 14:02:15.052846	2012-11-22 14:02:15.052846	\N	IMG_2662_1_.jpg	image/jpeg	46113	2012-11-22 14:02:12.999126
480	1001	2012-11-22 14:02:15.079254	2012-11-22 14:02:15.079254	\N	IMG_2686_1_.jpg	image/jpeg	60022	2012-11-22 14:02:13.599997
481	1001	2012-11-22 14:02:15.099557	2012-11-22 14:02:15.099557	\N	IMG_2696_1_.jpg	image/jpeg	45210	2012-11-22 14:02:14.19077
482	1001	2012-11-22 14:03:55.152673	2012-11-22 14:03:55.152673	\N	КОНТИНЕНТБассейн_в_сауне.jpg	image/jpeg	47195	2012-11-22 14:03:53.051119
483	1003	2012-11-22 15:50:23.840476	2012-11-22 15:50:23.840476	\N	282_2379.jpg	image/jpeg	209975	2012-11-22 15:50:21.110901
484	1003	2012-11-22 15:50:23.889409	2012-11-22 15:50:23.889409	\N	opisanie000001e.png	image/png	1438851	2012-11-22 15:50:21.761251
485	1003	2012-11-22 15:50:23.921919	2012-11-22 15:50:23.921919	\N	opisanie000002e.jpg	image/jpeg	110243	2012-11-22 15:50:22.92959
486	1003	2012-11-22 15:52:05.558208	2012-11-22 15:52:05.558208	\N	282_2382.jpg	image/jpeg	112248	2012-11-22 15:51:59.680433
495	474	2012-11-23 06:59:48.492133	2012-11-23 07:01:58.412099	Оборудованная кухня	foto1000014e.jpg	image/jpeg	118244	2012-11-23 06:59:46.229287
496	474	2012-11-23 06:59:48.608551	2012-11-23 07:01:58.413461	Кафе "Ташкент"	foto1000011e.jpg	image/jpeg	153687	2012-11-23 06:59:46.968694
497	474	2012-11-23 06:59:48.631837	2012-11-23 07:01:58.41455	Сауна	foto1000016e.jpg	image/jpeg	116296	2012-11-23 06:59:47.652429
498	998	2012-11-23 08:01:10.957149	2012-11-23 08:01:10.957149	\N	b_800_600_0_00___images_IMG_5760.jpg	image/jpeg	115244	2012-11-23 08:01:09.630811
499	998	2012-11-23 08:01:10.987309	2012-11-23 08:01:10.987309	\N	b_800_600_0_00___images_P1090779.jpg	image/jpeg	122875	2012-11-23 08:01:10.244522
500	1004	2012-11-23 11:19:08.271617	2012-11-23 11:19:08.271617	\N	213_1475.jpg	image/jpeg	101833	2012-11-23 11:19:04.095746
501	1004	2012-11-23 11:19:08.306944	2012-11-23 11:19:08.306944	\N	neva-01.jpg	image/jpeg	111392	2012-11-23 11:19:04.650939
502	1004	2012-11-23 11:19:08.332211	2012-11-23 11:19:08.332211	\N	neva-02.jpg	image/jpeg	106534	2012-11-23 11:19:05.240861
503	1004	2012-11-23 11:19:08.357531	2012-11-23 11:19:08.357531	\N	213_1476.jpg	image/jpeg	86719	2012-11-23 11:19:05.806064
504	1004	2012-11-23 11:19:08.381207	2012-11-23 11:19:08.381207	\N	neva-23.jpg	image/jpeg	81157	2012-11-23 11:19:06.387236
505	1004	2012-11-23 11:19:08.402452	2012-11-23 11:19:08.402452	\N	neva-24.jpg	image/jpeg	78151	2012-11-23 11:19:06.953676
506	1004	2012-11-23 11:19:08.514611	2012-11-23 11:19:08.514611	\N	neva-25.jpg	image/jpeg	104549	2012-11-23 11:19:07.630577
513	1004	2012-11-23 11:20:44.151141	2012-11-23 11:20:44.151141	\N	neva-26.jpg	image/jpeg	97974	2012-11-23 11:20:43.264901
514	478	2012-11-23 11:52:25.089115	2012-11-23 11:52:25.089115	\N	1206120008ux.jpg	image/jpeg	142205	2012-11-23 11:52:21.60632
515	478	2012-11-23 11:52:25.123752	2012-11-23 11:52:25.123752	\N	1206120009jd.jpg	image/jpeg	122709	2012-11-23 11:52:22.282182
516	478	2012-11-23 11:52:25.147244	2012-11-23 11:52:25.147244	\N	1206120010nq.jpg	image/jpeg	103595	2012-11-23 11:52:22.986009
517	478	2012-11-23 11:52:25.167021	2012-11-23 11:52:25.167021	\N	1206120012po.jpg	image/jpeg	86599	2012-11-23 11:52:23.666686
518	478	2012-11-23 11:52:25.274638	2012-11-23 11:52:25.274638	\N	1206120013un.jpg	image/jpeg	88961	2012-11-23 11:52:24.392592
520	1009	2012-11-23 13:23:43.899364	2012-11-23 13:23:43.899364	\N	IMG_2402.jpg	image/jpeg	30232	2012-11-23 13:23:36.425312
521	1009	2012-11-23 13:23:43.934311	2012-11-23 13:23:43.934311	\N	IMG_1702.jpg	image/jpeg	38868	2012-11-23 13:23:36.965018
522	1009	2012-11-23 13:23:44.049685	2012-11-23 13:23:44.049685	\N	IMG_2287.jpg	image/jpeg	36951	2012-11-23 13:23:37.499261
523	1009	2012-11-23 13:23:44.070476	2012-11-23 13:23:44.070476	\N	IMG_9760.jpg	image/jpeg	28145	2012-11-23 13:23:38.050119
524	1009	2012-11-23 13:23:44.086661	2012-11-23 13:23:44.086661	\N	IMG_2226.jpg	image/jpeg	30924	2012-11-23 13:23:38.620803
525	1009	2012-11-23 13:23:44.109883	2012-11-23 13:23:44.109883	\N	1225219912_ploshadka_1.jpg	image/jpeg	52581	2012-11-23 13:23:39.155286
526	1009	2012-11-23 13:23:44.132088	2012-11-23 13:23:44.132088	\N	1259075874_kafe.jpg	image/jpeg	65263	2012-11-23 13:23:39.837994
529	1009	2012-11-23 13:23:44.257088	2012-11-23 13:23:44.257088	\N	IMG_2341.jpg	image/jpeg	21929	2012-11-23 13:23:41.571264
530	1009	2012-11-23 13:23:44.27999	2012-11-23 13:23:44.27999	\N	1259078339_sauna_4.jpg	image/jpeg	33132	2012-11-23 13:23:42.128421
532	1009	2012-11-23 13:23:44.31499	2012-11-23 13:23:44.31499	\N	IMG_2381.jpg	image/jpeg	22504	2012-11-23 13:23:43.280506
560	571	2012-11-26 16:50:57.656373	2012-11-26 16:50:57.656373	\N	1.jpg	image/jpeg	73444	2012-11-26 16:50:54.030562
527	1009	2012-11-23 13:23:44.149974	2012-11-23 13:26:47.515119	\N	IMG_2283.jpg	image/jpeg	27340	2012-11-23 13:26:46.260933
528	1009	2012-11-23 13:23:44.167935	2012-11-23 13:26:47.548121	\N	IMG_2370.jpg	image/jpeg	31812	2012-11-23 13:26:46.865694
533	486	2012-11-23 17:27:49.097576	2012-11-23 17:27:49.097576	\N	7.jpg	image/jpeg	129542	2012-11-23 17:27:45.145103
534	486	2012-11-23 17:27:49.121463	2012-11-23 17:27:49.121463	\N	ctxggcurhmk_067.jpg	image/jpeg	146983	2012-11-23 17:27:45.747646
535	486	2012-11-23 17:27:49.148877	2012-11-23 17:27:49.148877	\N	16.jpg	image/jpeg	96083	2012-11-23 17:27:46.435327
536	486	2012-11-23 17:27:49.168848	2012-11-23 17:27:49.168848	\N	donqx_116.jpg	image/jpeg	139142	2012-11-23 17:27:47.050552
537	486	2012-11-23 17:27:49.190414	2012-11-23 17:27:49.190414	\N	hlwjdrazwmo_216.jpg	image/jpeg	104501	2012-11-23 17:27:47.64703
538	486	2012-11-23 17:27:49.213139	2012-11-23 17:27:49.213139	\N	14.jpg	image/jpeg	85371	2012-11-23 17:27:48.357067
539	486	2012-11-23 17:28:29.083462	2012-11-23 17:28:29.083462	\N	12.jpg	image/jpeg	136506	2012-11-23 17:28:28.340183
540	1052	2012-11-26 09:58:39.064762	2012-11-26 09:58:39.064762	\N	419_4248.jpg	image/jpeg	77677	2012-11-26 09:58:35.973202
541	1052	2012-11-26 09:58:39.097035	2012-11-26 09:58:39.097035	\N	419_4249.jpg	image/jpeg	59164	2012-11-26 09:58:36.554512
542	1052	2012-11-26 09:58:39.121647	2012-11-26 09:58:39.121647	\N	419_4250.jpg	image/jpeg	82434	2012-11-26 09:58:37.147659
543	1052	2012-11-26 09:58:39.152574	2012-11-26 09:58:39.152574	\N	419_4251.jpg	image/jpeg	126112	2012-11-26 09:58:37.746841
545	1052	2012-11-26 09:59:08.480556	2012-11-26 09:59:08.480556	\N	419_4252.jpg	image/jpeg	146724	2012-11-26 09:59:07.774219
550	1221	2012-11-26 10:33:17.736013	2012-11-26 10:33:17.736013	\N	2_(1).jpg	image/jpeg	67211	2012-11-26 10:33:11.490346
551	1221	2012-11-26 10:33:17.765163	2012-11-26 10:33:17.765163	\N	processPhoto.jpg	image/jpeg	32585	2012-11-26 10:33:12.092794
552	1221	2012-11-26 10:33:17.792403	2012-11-26 10:33:17.792403	Служба размещения	1.jpg	image/jpeg	63569	2012-11-26 10:33:12.636614
553	1221	2012-11-26 10:33:17.819115	2012-11-26 10:33:17.819115	Территория	8.jpg	image/jpeg	75615	2012-11-26 10:33:13.228654
554	1221	2012-11-26 10:33:17.846068	2012-11-26 10:33:17.846068	Спортивно-развлекательный центр «Субмарина»	submarina-4_(1).jpg	image/jpeg	61416	2012-11-26 10:33:13.883215
555	1221	2012-11-26 10:33:17.875757	2012-11-26 10:33:17.875757	Спортивно-развлекательный центр «Субмарина»	processPhoto_(4).jpg	image/jpeg	30248	2012-11-26 10:33:14.429832
556	1221	2012-11-26 10:33:17.902615	2012-11-26 10:33:17.902615	Столовая	29.jpg	image/jpeg	70233	2012-11-26 10:33:15.042436
557	1221	2012-11-26 10:33:18.022699	2012-11-26 10:33:18.022699	Кафе	submarina-9.jpg	image/jpeg	60055	2012-11-26 10:33:15.797056
558	1221	2012-11-26 10:33:18.044368	2012-11-26 10:33:18.044368	Сауна	submarina-14.jpg	image/jpeg	81464	2012-11-26 10:33:16.402231
559	1221	2012-11-26 10:33:18.06248	2012-11-26 10:33:18.06248	\N	submarina-13.jpg	image/jpeg	50329	2012-11-26 10:33:16.972536
561	571	2012-11-26 16:50:57.682009	2012-11-26 16:50:57.682009	\N	003.jpg	image/jpeg	32004	2012-11-26 16:50:54.770524
562	571	2012-11-26 16:50:57.702736	2012-11-26 16:50:57.702736	\N	4.jpg	image/jpeg	76493	2012-11-26 16:50:55.32152
563	571	2012-11-26 16:50:57.722279	2012-11-26 16:50:57.722279	\N	5.jpg	image/jpeg	67019	2012-11-26 16:50:55.905793
564	571	2012-11-26 16:50:57.83981	2012-11-26 16:50:57.83981	\N	6.jpg	image/jpeg	62675	2012-11-26 16:50:56.458983
565	571	2012-11-26 16:50:57.860334	2012-11-26 16:50:57.860334	\N	8.jpg	image/jpeg	55556	2012-11-26 16:50:57.003212
566	1222	2012-11-27 06:00:07.307598	2012-11-27 06:00:07.307598	\N	char_tree2040_6526.jpg	image/jpeg	26501	2012-11-27 06:00:02.960832
567	1222	2012-11-27 06:00:07.336592	2012-11-27 06:00:07.336592	\N	char_tree2040_6527.jpg	image/jpeg	31668	2012-11-27 06:00:03.692117
568	1222	2012-11-27 06:00:07.364364	2012-11-27 06:00:07.364364	\N	char_tree2040_6528.jpg	image/jpeg	31999	2012-11-27 06:00:04.882111
569	572	2012-11-27 07:18:21.459668	2012-11-27 07:18:21.459668	\N	3-n-nndhdhdhndh-dhdhndhnfnf-ndhnfdhdh.jpg	image/jpeg	51161	2012-11-27 07:18:16.621729
570	572	2012-11-27 07:18:21.489082	2012-11-27 07:18:21.489082	\N	5-ndh-nndhdhdhndh-dhdhndhnfnf-2.jpg	image/jpeg	87555	2012-11-27 07:18:17.275876
571	572	2012-11-27 07:18:21.518429	2012-11-27 07:18:21.518429	\N	dhdhdhdhu-5-ndh-nndhdhdhndh-dhdhndhnfnf.jpg	image/jpeg	42848	2012-11-27 07:18:17.847528
572	572	2012-11-27 07:18:21.631783	2012-11-27 07:18:21.631783	\N	dhdhunfndhdhnzdhnoe-3-n-nndhdh.jpg	image/jpeg	73352	2012-11-27 07:18:18.430713
573	572	2012-11-27 07:18:21.651828	2012-11-27 07:18:21.651828	\N	dhdhndhu-2.jpg	image/jpeg	46897	2012-11-27 07:18:19.056707
574	572	2012-11-27 07:18:21.671233	2012-11-27 07:18:21.671233	\N	dhdhdhdhdhndh-dhdhdh-3.jpg	image/jpeg	79313	2012-11-27 07:18:19.65625
575	572	2012-11-27 07:18:21.6966	2012-11-27 07:18:21.6966	\N	dhdhndhu-1.jpg	image/jpeg	75902	2012-11-27 07:18:20.250196
576	572	2012-11-27 07:18:21.720581	2012-11-27 07:18:21.720581	\N	dhdhdhnoenyndhdhdhny.jpg	image/jpeg	49318	2012-11-27 07:18:20.841825
577	1030	2012-11-27 08:36:51.043259	2012-11-27 08:36:51.043259	\N	68_372.jpg	image/jpeg	62165	2012-11-27 08:36:45.414144
578	1030	2012-11-27 08:36:51.178395	2012-11-27 08:36:51.178395	\N	68_3911.jpg	image/jpeg	113840	2012-11-27 08:36:46.003495
579	1030	2012-11-27 08:36:51.206976	2012-11-27 08:36:51.206976	\N	68_375.jpg	image/jpeg	75999	2012-11-27 08:36:46.639088
580	1030	2012-11-27 08:36:51.226279	2012-11-27 08:36:51.226279	\N	68_380.jpg	image/jpeg	86697	2012-11-27 08:36:47.256523
581	1030	2012-11-27 08:36:51.248159	2012-11-27 08:36:51.248159	\N	68_3917.jpg	image/jpeg	127458	2012-11-27 08:36:47.865246
582	1030	2012-11-27 08:36:51.270559	2012-11-27 08:36:51.270559	\N	68_3918.jpg	image/jpeg	185211	2012-11-27 08:36:48.513706
583	1030	2012-11-27 08:36:51.30489	2012-11-27 08:36:51.30489	\N	68_376.jpg	image/jpeg	51155	2012-11-27 08:36:49.135241
584	1030	2012-11-27 08:36:51.328733	2012-11-27 08:36:51.328733	\N	68_3914.jpg	image/jpeg	91734	2012-11-27 08:36:49.730331
585	1030	2012-11-27 08:36:51.42909	2012-11-27 08:36:51.42909	\N	68_381.jpg	image/jpeg	79890	2012-11-27 08:36:50.381614
586	550	2012-11-27 09:38:08.992787	2012-11-27 09:38:08.992787	\N	char_tree1639_4879.jpg	image/jpeg	27633	2012-11-27 09:38:07.026876
587	550	2012-11-27 09:38:09.028703	2012-11-27 09:38:09.028703	\N	char_tree1639_4880.jpg	image/jpeg	31886	2012-11-27 09:38:07.607615
588	550	2012-11-27 09:38:09.059411	2012-11-27 09:38:09.059411	\N	char_tree1639_4896.jpg	image/jpeg	32705	2012-11-27 09:38:08.313672
589	570	2012-11-27 10:20:31.136285	2012-11-27 10:20:31.136285	\N	2.jpg	image/jpeg	105833	2012-11-27 10:20:28.105207
590	570	2012-11-27 10:20:31.172085	2012-11-27 10:20:31.172085	\N	1.jpg	image/jpeg	100908	2012-11-27 10:20:28.720174
591	570	2012-11-27 10:20:31.203293	2012-11-27 10:20:31.203293	\N	3.jpg	image/jpeg	99014	2012-11-27 10:20:29.332726
592	570	2012-11-27 10:20:31.323135	2012-11-27 10:20:31.323135	\N	4.jpg	image/jpeg	97912	2012-11-27 10:20:29.92234
593	570	2012-11-27 10:20:31.343113	2012-11-27 10:20:31.343113	\N	7.jpg	image/jpeg	88362	2012-11-27 10:20:30.506352
594	1043	2012-11-28 08:35:23.91919	2012-11-28 08:35:23.91919	\N	vid.jpg	image/jpeg	37657	2012-11-28 08:35:17.917976
595	1043	2012-11-28 08:35:23.958204	2012-11-28 08:35:23.958204	\N	IMG_0460.jpg	image/jpeg	82337	2012-11-28 08:35:18.467882
596	1043	2012-11-28 08:35:23.986191	2012-11-28 08:35:23.986191	Служба размещения	IMG_3495.jpg	image/jpeg	57402	2012-11-28 08:35:19.031237
598	1043	2012-11-28 08:35:24.167721	2012-11-28 08:35:24.167721	Столовая	IMG_3446.jpg	image/jpeg	74358	2012-11-28 08:35:20.297878
599	1043	2012-11-28 08:35:24.186384	2012-11-28 08:35:24.186384	\N	IMG_3483.jpg	image/jpeg	77391	2012-11-28 08:35:20.886411
600	1043	2012-11-28 08:35:24.208908	2012-11-28 08:35:24.208908	Комната отдыха в сауне	IMG_3453.jpg	image/jpeg	74588	2012-11-28 08:35:21.491627
601	1043	2012-11-28 08:35:24.236237	2012-11-28 08:35:24.236237	Бассейн в сауне	IMG_3466.jpg	image/jpeg	61448	2012-11-28 08:35:22.101937
602	1043	2012-11-28 08:35:24.26381	2012-11-28 08:35:24.26381	Внутренний двор	IMG_3518.jpg	image/jpeg	105413	2012-11-28 08:35:22.679528
603	1043	2012-11-28 08:35:24.290738	2012-11-28 08:35:24.290738	Территория	IMG_3486.jpg	image/jpeg	86861	2012-11-28 08:35:23.26778
597	1043	2012-11-28 08:35:24.14707	2012-11-28 08:37:03.603266	Открытый бассейн	168_1130.jpg	image/jpeg	78088	2012-11-28 08:37:02.948717
604	587	2012-11-28 09:16:21.022662	2012-11-28 09:16:21.022662	\N	P1030458.JPG	image/jpeg	116027	2012-11-28 09:16:18.072735
605	587	2012-11-28 09:16:21.149702	2012-11-28 09:16:21.149702	\N	P1030473.JPG	image/jpeg	117195	2012-11-28 09:16:18.657109
606	587	2012-11-28 09:16:21.173385	2012-11-28 09:16:21.173385	\N	P1030447.JPG	image/jpeg	73856	2012-11-28 09:16:19.261841
607	587	2012-11-28 09:16:21.190929	2012-11-28 09:16:21.190929	\N	P1030446.JPG	image/jpeg	72335	2012-11-28 09:16:19.829243
608	587	2012-11-28 09:16:21.217509	2012-11-28 09:16:21.217509	\N	P1030439.JPG	image/jpeg	78853	2012-11-28 09:16:20.412882
609	593	2012-11-28 10:12:52.942183	2012-11-28 10:12:52.942183	\N	Fasad-L1(4).jpg	image/jpeg	24609	2012-11-28 10:12:49.905512
610	593	2012-11-28 10:12:53.002599	2012-11-28 10:12:53.002599	\N	dvor1_y.jpg	image/jpeg	17589	2012-11-28 10:12:50.446979
611	593	2012-11-28 10:12:53.031545	2012-11-28 10:12:53.031545	\N	dvor-b(1).png	image/png	111176	2012-11-28 10:12:50.945824
612	593	2012-11-28 10:12:53.06217	2012-11-28 10:12:53.06217	\N	DSCN0970.jpg	image/jpeg	121611	2012-11-28 10:12:51.695378
613	593	2012-11-28 10:12:53.090157	2012-11-28 10:12:53.090157	\N	dvor4_y.jpg	image/jpeg	16618	2012-11-28 10:12:52.320638
614	1051	2012-11-28 12:52:42.714827	2012-11-28 12:52:42.714827	\N	IMG_6281.jpg	image/jpeg	26119	2012-11-28 12:52:41.014682
615	1051	2012-11-28 12:52:42.742977	2012-11-28 12:52:42.742977	\N	IMG_6291.jpg	image/jpeg	37867	2012-11-28 12:52:41.589856
616	1051	2012-11-28 12:52:42.763952	2012-11-28 12:52:42.763952	\N	IMG_6262.jpg	image/jpeg	30838	2012-11-28 12:52:42.128484
617	1051	2012-11-28 12:52:58.160282	2012-11-28 12:52:58.160282	\N	IMG_6276.jpg	image/jpeg	39121	2012-11-28 12:52:57.475309
618	1224	2012-12-03 15:22:30.914456	2012-12-03 15:22:30.914456	\N	char_tree1621_4827.jpg	image/jpeg	28887	2012-12-03 15:22:27.956051
619	1224	2012-12-03 15:22:30.949193	2012-12-03 15:22:30.949193	\N	char_tree1621_4826.jpg	image/jpeg	36773	2012-12-03 15:22:28.613131
620	1224	2012-12-03 15:22:30.982696	2012-12-03 15:22:30.982696	\N	char_tree1621_4814.jpg	image/jpeg	33684	2012-12-03 15:22:29.319397
621	1224	2012-12-03 15:22:31.011927	2012-12-03 15:22:31.011927	\N	char_tree1621_4815.jpg	image/jpeg	22728	2012-12-03 15:22:30.12805
622	1225	2012-12-04 06:52:48.620805	2012-12-04 06:52:48.620805	\N	446_4790.jpg	image/jpeg	200205	2012-12-04 06:52:45.149479
623	1225	2012-12-04 06:52:48.656017	2012-12-04 06:52:48.656017	\N	446_4789.jpg	image/jpeg	204650	2012-12-04 06:52:45.933533
624	1225	2012-12-04 06:52:48.689055	2012-12-04 06:52:48.689055	\N	446_4813.jpg	image/jpeg	247336	2012-12-04 06:52:46.609381
625	1225	2012-12-04 06:52:48.819576	2012-12-04 06:52:48.819576	\N	446_4788.jpg	image/jpeg	189949	2012-12-04 06:52:47.24441
626	1225	2012-12-04 06:52:48.84149	2012-12-04 06:52:48.84149	\N	11196028.jpg	image/jpeg	32281	2012-12-04 06:52:47.967912
627	1226	2012-12-04 09:16:00.054346	2012-12-04 09:16:00.054346	\N	Олимп_9.jpg	image/jpeg	35227	2012-12-04 09:15:56.946581
628	1226	2012-12-04 09:16:00.214769	2012-12-04 09:16:00.214769	\N	Олимп_12.jpg	image/jpeg	39792	2012-12-04 09:15:57.610755
629	1226	2012-12-04 09:16:00.238064	2012-12-04 09:16:00.238064	\N	Олимп_11.jpg	image/jpeg	55060	2012-12-04 09:15:58.234825
630	1226	2012-12-04 09:16:00.259898	2012-12-04 09:16:00.259898	\N	9.jpg	image/jpeg	43030	2012-12-04 09:15:58.819431
631	1226	2012-12-04 09:16:00.283392	2012-12-04 09:16:00.283392	\N	11.jpg	image/jpeg	36747	2012-12-04 09:15:59.419601
632	1227	2012-12-04 10:33:07.348557	2012-12-04 10:33:07.348557	\N	24big1.jpg	image/jpeg	204801	2012-12-04 10:32:54.727871
633	1227	2012-12-04 10:33:07.377649	2012-12-04 10:33:07.377649	\N	28big1.jpg	image/jpeg	164566	2012-12-04 10:32:55.701374
634	1227	2012-12-04 10:33:07.413961	2012-12-04 10:33:07.413961	\N	22big1.jpg	image/jpeg	156276	2012-12-04 10:32:56.391935
635	1227	2012-12-04 10:33:07.445586	2012-12-04 10:33:07.445586	\N	31big1.jpg	image/jpeg	166235	2012-12-04 10:32:57.378884
636	1227	2012-12-04 10:33:07.476337	2012-12-04 10:33:07.476337	\N	26big1.jpg	image/jpeg	162496	2012-12-04 10:32:58.043712
637	1227	2012-12-04 10:33:07.510209	2012-12-04 10:33:07.510209	\N	23big1.jpg	image/jpeg	204166	2012-12-04 10:32:58.725867
638	1227	2012-12-04 10:33:07.66433	2012-12-04 10:33:07.66433	\N	36big1.jpg	image/jpeg	175516	2012-12-04 10:32:59.44387
639	1227	2012-12-04 10:33:07.695728	2012-12-04 10:33:07.695728	\N	27big1.jpg	image/jpeg	260073	2012-12-04 10:33:00.195111
640	1227	2012-12-04 10:33:07.723902	2012-12-04 10:33:07.723902	\N	29big1.jpg	image/jpeg	179000	2012-12-04 10:33:01.006639
641	1227	2012-12-04 10:33:07.751042	2012-12-04 10:33:07.751042	\N	38big1.jpg	image/jpeg	127938	2012-12-04 10:33:01.720016
642	1227	2012-12-04 10:33:07.782397	2012-12-04 10:33:07.782397	\N	39big1.jpg	image/jpeg	146723	2012-12-04 10:33:02.945511
643	1227	2012-12-04 10:33:07.811606	2012-12-04 10:33:07.811606	\N	35big1.jpg	image/jpeg	99260	2012-12-04 10:33:04.024564
644	1227	2012-12-04 10:33:07.842127	2012-12-04 10:33:07.842127	\N	42big1.jpg	image/jpeg	174100	2012-12-04 10:33:04.900095
645	1227	2012-12-04 10:33:07.970781	2012-12-04 10:33:07.970781	\N	21big1.jpg	image/jpeg	155810	2012-12-04 10:33:05.789946
646	1227	2012-12-04 10:33:07.999853	2012-12-04 10:33:07.999853	\N	45big1.jpg	image/jpeg	127278	2012-12-04 10:33:06.509774
647	999	2012-12-04 12:03:55.848972	2012-12-04 12:03:55.848972	\N	1442.jpg	image/jpeg	63190	2012-12-04 12:03:48.166651
648	999	2012-12-04 12:03:55.90742	2012-12-04 12:03:55.90742	\N	1443.jpg	image/jpeg	88465	2012-12-04 12:03:48.734446
649	999	2012-12-04 12:03:56.025682	2012-12-04 12:03:56.025682	\N	1444.jpg	image/jpeg	101272	2012-12-04 12:03:49.315818
650	999	2012-12-04 12:03:56.04529	2012-12-04 12:03:56.04529	\N	1468.jpg	image/jpeg	81377	2012-12-04 12:03:50.055178
651	999	2012-12-04 12:03:56.064607	2012-12-04 12:03:56.064607	\N	1476.jpg	image/jpeg	70458	2012-12-04 12:03:50.669991
652	999	2012-12-04 12:03:56.082735	2012-12-04 12:03:56.082735	\N	1483.jpg	image/jpeg	80161	2012-12-04 12:03:51.304247
653	999	2012-12-04 12:03:56.105354	2012-12-04 12:03:56.105354	\N	1464.jpg	image/jpeg	75180	2012-12-04 12:03:51.946577
654	999	2012-12-04 12:03:56.123422	2012-12-04 12:03:56.123422	\N	1471.jpg	image/jpeg	89497	2012-12-04 12:03:52.56145
655	999	2012-12-04 12:03:56.143928	2012-12-04 12:03:56.143928	\N	1432.jpg	image/jpeg	112148	2012-12-04 12:03:53.205193
656	999	2012-12-04 12:03:56.167976	2012-12-04 12:03:56.167976	\N	1435.jpg	image/jpeg	99428	2012-12-04 12:03:53.854294
657	999	2012-12-04 12:03:56.254273	2012-12-04 12:03:56.254273	\N	1437.jpg	image/jpeg	111714	2012-12-04 12:03:54.476447
658	999	2012-12-04 12:03:56.273618	2012-12-04 12:03:56.273618	\N	1438.jpg	image/jpeg	110804	2012-12-04 12:03:55.116685
\.


--
-- Data for Name: hotel_reviews; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_reviews (id, name, email, ip, text, created_at, updated_at, published, hotel_id, character_id) FROM stdin;
\.


--
-- Data for Name: hotel_room_field_values; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_field_values (id, field_id, room_id, value) FROM stdin;
786	13	980191027	
787	14	980191027	
788	1	980191027	
789	10	980191027	
790	2	980191027	
791	3	980191027	
792	4	980191027	
793	5	980191027	
794	6	980191027	
795	8	980191027	
796	11	980191027	
797	15	980191027	
798	13	980191028	1200
800	1	980191028	
801	10	980191028	есть
802	2	980191028	за доп. плату
803	3	980191028	эфир
804	4	980191028	
805	5	980191028	ванная, душевая кабина, фен
806	6	980191028	
807	8	980191028	сплит-система, посуда
808	11	980191028	нет
809	15	980191028	
799	14	980191028	\r\n1.5 - 14.06 - 2000, доп.место-800;\r\n15.06-30.06 - 2500, доп.место-1000;\r\n1.07-31.08 - 3000, доп.место-1200;\r\n1.09-14.09 - 2500, доп.место-1000;\r\n15.09-30.09- 2000, доп.место-1000.
810	13	980191029	2000
811	14	980191029	\r\n1.05-14.06 - 4000, доп.место-1600;\r\n15.06-30.06 - 4500, доп.место-1800;\r\n1.07-31.08 - 5000, доп.место- 2000;\r\n1.09-15.09 - 4500, доп.место- 1800;\r\n15.09-30.09 - 4000, доп.место - 1000.
812	1	980191029	
813	10	980191029	есть
814	2	980191029	за доп. плату
815	3	980191029	LCD, эфир
816	4	980191029	
817	5	980191029	ванна
818	6	980191029	есть
819	8	980191029	
820	11	980191029	есть
821	15	980191029	
822	13	980191030	450
823	14	980191030	\r\n1.05-30.05  - 600, доп.место-300;\r\n1.06-30.06 - 700, доп.место-350;\r\n1.07-15.07 - 900, доп.место-450;\r\n16.07-31.07 - 1000, доп.место-500;\r\n1.08-31.08 - 1100, доп.место-550;\r\n1.09-30.09 - 700, доп.место-350.
825	10	980191030	в кухне
826	2	980191030	нет
827	3	980191030	
828	4	980191030	
829	5	980191030	душ, туалет
830	6	980191030	нет
831	8	980191030	
832	11	980191030	нет
833	15	980191030	
835	14	980191031	1.05-30.05  - 700, доп.место-350;\r\n1.06-30.06 - 900, доп.место-450;\r\n1.07-15.07 - 1100, доп.место-550;\r\n16.07-31.07 - 1200, доп.место-600;\r\n1.08-31.08 - 1300, доп.место-650;\r\n1.09-30.09 - 900, доп.место-450.
838	2	980191031	
839	3	980191031	
840	4	980191031	
841	5	980191031	
842	6	980191031	
843	8	980191031	кондиционер
844	11	980191031	
845	15	980191031	
824	1	980191030	по требованию
836	1	980191031	по требованию
837	10	980191031	в кухне
834	13	980191031	600
846	13	980191032	650
847	14	980191032	\r\n1.05-31.05 - 980, доп.место-490;\r\n1.06-15.06 - 1200, доп.место-600;\r\n15.06-30.06 - 1300, доп.место-650;\r\n1.07-31.08 - 1680, доп.место-840;\r\n1.09-15.09 - 1440, доп.место-720;\r\n15.09-30.09 - 980, доп.место-490.
848	1	980191032	1 раз в 5 дней
849	10	980191032	есть
850	2	980191032	нет
851	3	980191032	есть
852	4	980191032	ежедневно
853	5	980191032	душ, туалет
854	6	980191032	нет
856	11	980191032	у администратора
857	15	980191032	
855	8	980191032	Кондиционер, мягкая мебель, телефон
858	13	980191033	500
869	15	980191033	
859	14	980191033	\r\n1.05-31.05 - 840, доп.место-420;\r\n1.06-15.06 - 900, доп.место-450;\r\n15.06-30.06 - 1000, доп.место-500;\r\n1.07-31.08 - 1300, доп.место-650;\r\n1.09-15.09 - 1000, доп.место-500;\r\n15.09-30.09 - 960, доп.место-480.
860	1	980191033	1 раз в 5 дней
861	10	980191033	есть
862	2	980191033	нет
863	3	980191033	есть
864	4	980191033	ежедневно
865	5	980191033	душ, туалет
866	6	980191033	нет
867	8	980191033	Кондиционер, мебель, телефон
868	11	980191033	у администратора
870	13	980191034	720
871	14	980191034	\r\n1.05-31.05 - 840, доп.место-672;\r\n1.06-15.06 - 900, доп.место-720;\r\n15.06-30.06 - 1000, доп.место-800;\r\n1.07-31.08 - 1200, доп.место-960;\r\n1.09-15.09 - 960, доп.место-768;\r\n15.09-30.09 - 960, доп.место-768.
872	1	980191034	1 раз в 5 дней
873	10	980191034	есть
874	2	980191034	нет
875	3	980191034	есть
876	4	980191034	ежедневно
877	5	980191034	душ, туалет
878	6	980191034	нет
879	8	980191034	Кондиционер, мебель, телефон
880	11	980191034	у администратора
881	15	980191034	
882	13	980191035	
883	14	980191035	\r\n1.05-31.05 - 900;\r\n1.06-30.06 - 1200;\r\n1.07-31.08 - 1800
884	1	980191035	при поселении
885	10	980191035	в кухне
886	2	980191035	нет
887	3	980191035	эфирное
888	4	980191035	1 раз в 3-5 дней
889	5	980191035	дущ, туалет
890	6	980191035	нет
891	8	980191035	кондиционер
892	11	980191035	
893	15	980191035	
894	13	980191036	
895	14	980191036	\r\n1.05-31.05 - 1200;\r\n1.06-31.06 - 1500;\r\n1.07-31.08 - 2500
896	1	980191036	при заселении
897	10	980191036	есть
898	2	980191036	нет
899	3	980191036	эфирное
900	4	980191036	1 раз в 3-5 дней
901	5	980191036	ванна, туалет
902	6	980191036	нет
903	8	980191036	кухня, сплит-система
904	11	980191036	нет
905	15	980191036	
906	13	980191037	500
907	14	980191037	\r\n1.05-31.05 - 600 доп.место-300;\r\n1.06-31.06 - 700 доп.место-350;\r\n1.07-31.07 - 1000 доп.место-500;\r\n1.08-31.08 - 1200 доп.место-600
908	1	980191037	при заселении
909	10	980191037	в кухне
910	2	980191037	нет
911	3	980191037	эфирное
912	4	980191037	1 раз в 3-5 дней
913	5	980191037	душ, туалет на два-три номера
914	6	980191037	нет
915	8	980191037	
916	11	980191037	нет
917	15	980191037	кондиционер, вентилятор, общая кухня для самостоятельного приготовления пищи
918	13	980191038	270
920	1	980191038	при заселении
921	10	980191038	есть
922	2	980191038	нет
923	3	980191038	эфирное
924	4	980191038	через день
925	5	980191038	душ, туалет
926	6	980191038	нет
927	8	980191038	кондиционер
928	11	980191038	нет
929	15	980191038	
919	14	980191038	\r\n1.06-25.06 - 700 доп.место-170;\r\n26.06-20.07 - 1100 доп.место-270;\r\n21.07-20.08 - 1300 доп.место-320;\r\n21.08-05.09 - 900 доп.место-220;\r\n6.09-15.09 - 600 доп.место-150;\r\n16.09-30.09 - 400 доп.место-100
930	13	980191039	270
931	14	980191039	\r\n1.06-25.06 - 700 доп.место-170;\r\n26.06-20.07 - 1100 доп.место-270;\r\n21.07-20.08 - 1300 доп.место-320;\r\n21.08-05.09 - 900 доп.место-220;\r\n6.09-15.09 - 600 доп.место-150;\r\n16.09-30.09 - 400 доп.место-100
932	1	980191039	при заселении
933	10	980191039	есть
934	2	980191039	нет
935	3	980191039	эфирное
936	4	980191039	через день
937	5	980191039	душ, туалет
938	6	980191039	нет
939	8	980191039	сплит-система
940	11	980191039	нет
941	15	980191039	
942	13	980191040	270
943	14	980191040	\r\n1.06-25.06 - 1050 доп.место-170;\r\n26.06-20.07 - 1650 доп.место-270;\r\n21.07-20.08 - 1950 доп.место-320;\r\n21.08-05.09 - 1350 доп.место-220;\r\n6.09-15.09 - 900 доп.место-150;\r\n16.09-30.09 - 600 доп.место-100
944	1	980191040	при заселении
945	10	980191040	есть
946	2	980191040	нет
947	3	980191040	эфирное
948	4	980191040	через день
949	5	980191040	душ, туалет
950	6	980191040	нет
951	8	980191040	сплит-система
952	11	980191040	нет
953	15	980191040	
954	13	980191041	270
955	14	980191041	\r\n1.06-25.06 - 1400 доп.место-170;\r\n26.06-20.07 - 2200 доп.место-270;\r\n21.07-20.08 - 2600 доп.место-320;\r\n21.08-05.09 - 1800 доп.место-220;\r\n6.09-15.09 - 1200 доп.место-150;\r\n16.09-30.09 - 800 доп.место-100
956	1	980191041	при заселении
957	10	980191041	есть
958	2	980191041	нет
959	3	980191041	эфирное
960	4	980191041	через день
961	5	980191041	душ, туалет
962	6	980191041	есть
963	8	980191041	кондиционер, сплит-система
964	11	980191041	нет
965	15	980191041	
966	13	980191042	400
967	14	980191042	\r\n1.05-31.05 - 1200, доп.место-100;\r\n1.06-30.06 - 1500, доп.место-300;\r\n1.07-3!.07 - 2100, доп.место-400;\r\n1.08-31.08 - 2400, доп.место-500;\r\n1.09-15.09 - 2100, доп.место-300;\r\n16.09-30.09 - 1800, доп.место-300
968	1	980191042	по требованию
969	10	980191042	есть
970	2	980191042	нет
971	3	980191042	эфирное
972	4	980191042	ежедневно
973	5	980191042	душ, туалет
974	6	980191042	есть
975	8	980191042	сплит-система, внутренний телефон
976	11	980191042	нет
977	15	980191042	
978	13	980191043	400
979	14	980191043	\r\n1.05-31.05 - 1400, доп.место-100;\r\n1.06-30.06 - 1700, доп.место-300;\r\n1.07-3!.07 - 2400, доп.место-400;\r\n1.08-31.08 - 2600, доп.место-500;\r\n1.09-15.09 - 2200, доп.место-300;\r\n16.09-30.09 - 2000, доп.место-300
980	1	980191043	ежедневно
981	10	980191043	есть
982	2	980191043	нет
983	3	980191043	эфирное
984	4	980191043	ежедневно
985	5	980191043	душ, туалет
986	6	980191043	есть
987	8	980191043	сплит-система, внутренний телефон
988	11	980191043	нет
989	15	980191043	
990	13	980191044	400
991	14	980191044	\r\n1.05-31.05 - 1900, доп.место-100;\r\n1.06-30.06 - 2400, доп.место-300;\r\n1.07-3!.07 - 3300, доп.место-400;\r\n1.08-31.08 - 3600, доп.место-500;\r\n1.09-15.09 - 3200, доп.место-300;\r\n16.09-30.09 - 2800, доп.место-300
992	1	980191044	ежедневно
993	10	980191044	есть
994	2	980191044	нет
995	3	980191044	эфирное
996	4	980191044	ежедневно
997	5	980191044	душ, туалет
998	6	980191044	есть
999	8	980191044	две комнаты
1000	11	980191044	нет
1001	15	980191044	сплит-система, внутренний телефон, фен, электрочайник
1002	13	980191045	400
1007	3	980191045	
1013	15	980191045	
1003	14	980191045	\r\n1.05-31.05 - 1200, доп.место-100;\r\n1.06-30.06 - 800, доп.место-300;\r\n1.07-3!.07 - 1500, доп.место-400;\r\n1.08-31.08 - 1800, доп.место-500;\r\n1.09-15.09 - 1300, доп.место-300;\r\n16.09-30.09 - 1200, доп.место-300
1004	1	980191045	по требованию
1005	10	980191045	есть
1006	2	980191045	нет
1008	4	980191045	ежедневно
1009	5	980191045	душ, туалет
1010	6	980191045	есть
1011	8	980191045	сплит-система, внутренний телефон
1012	11	980191045	нет
1014	13	980191046	300
1016	1	980191046	1 раз в 5 дней
1017	10	980191046	есть
1018	2	980191046	нет
1019	3	980191046	эфирное
1020	4	980191046	ежедневно
1021	5	980191046	душ, туалет
1022	6	980191046	есть
1025	15	980191046	
1023	8	980191046	сплит-система, посуда, посуда
1024	11	980191046	нет
1015	14	980191046	1.05-31.05 - 800, доп.место-300;\r\n1.06-10.06 - 1300, доп.место-300;\r\n11.06-.30.06 - 1500, доп.место-300;\r\n1.07-15.07 - 2000, доп.место-300;\r\n16.07-25.08 - 2500, доп.место-300;\r\n26.08-15.09 - 1500, доп.место-300;\r\n16.09-30.09 - 800, доп.место-300
1026	13	980191047	+15% 
1027	14	980191047	\r\n1.05-30.5 - 800;\r\n31.05-30.06 - 1500;\r\n1.07-31.08 - 2000;\r\n1.09-15.09 - 1500;\r\n16.09-30.10 - 1000,\r\nдоп.место +15%\r\n
1028	1	980191047	через 6 дней
1029	10	980191047	есть
1030	2	980191047	нет
1031	3	980191047	эфирное
1032	4	980191047	по требованию
1033	5	980191047	ванна, туалет
1034	6	980191047	нет
1035	8	980191047	кондиционер
1036	11	980191047	есть
1037	15	980191047	2х-спальная кровать, комод, шкаф, диван-кровать, посуда, микроволновая печь
1038	13	980191048	+15
1039	14	980191048	\r\n1.05-30.5 - 800;\r\n31.05-30.06 - 1500;\r\n1.07-31.08 - 2000;\r\n1.09-15.09 - 1500;\r\n16.09-30.10 - 1000,\r\nдоп.место +15%\r\n
1040	1	980191048	1 раз в 6 дней
1041	10	980191048	есть
1042	2	980191048	нет
1043	3	980191048	эфирное
1044	4	980191048	по требованию
1045	5	980191048	душ, туалет
1046	6	980191048	нет
1047	8	980191048	сплит-система
1048	11	980191048	нет
1049	15	980191048	2х-спальная кровать, шкаф, диван-кровать, посуда, микроволновая печь
1050	13	980191049	скидки на доп места: дети до 7лет-50%, с 7 до 14 лет-30%, взрослые- 20%
1051	14	980191049	\r\n1.05-15.05 - 800;\r\n16.05-30.06 - 1200;\r\n1.07-20.07 - 1400;\r\n21.07-25.08 - 1600;\r\n26.08-30.08 - 1300\r\nскидки на доп места: дети до 7лет-50%, с 7 до 14 лет-30%, взрослые- 20%
1052	1	980191049	1 раз в 5 дней
1053	10	980191049	есть
1054	2	980191049	нет
1055	3	980191049	эфирное
1056	4	980191049	1 раз в 3 дня
1057	5	980191049	душ, туалет
1058	6	980191049	нет
1059	8	980191049	сплит-система
1060	11	980191049	нет
1061	15	980191049	
1062	13	980191050	скидки на доп места: дети до 7лет-50%, с 7 до 14 лет-30%, взрослые- 20%
1063	14	980191050	\r\n1.05-15.05 - 1200;\r\n16.05-30.06 - 1500;\r\n1.07-20.07 - 1800;\r\n21.07-25.08 - 2100;\r\n26.08-30.08 - 1500\r\nскидки на доп места: дети до 7лет-50%, с 7 до 14 лет-30%, взрослые- 20%
1064	1	980191050	1 раз в 5 дней
1065	10	980191050	есть
1066	2	980191050	нет
1067	3	980191050	эфирное
1068	4	980191050	1 раз в 3 дня
1069	5	980191050	душ, туалет
1070	6	980191050	нет
1071	8	980191050	сплит-система
1072	11	980191050	нет
1073	15	980191050	
1074	13	980191051	400
1075	14	980191051	\r\n06.06-20.06 - 1300, доп.место-250;\r\n21.06-10.07 - 1500, доп.место-300;\r\n11.07-24.07 - 1700, доп.место-400;\r\n25.07-25.08 - 1900, доп.место-500;\r\n26.08-15.09 - 1300, доп.место-250;\r\n16.09-5.06 - 1000, доп.место-200
1076	1	980191051	
1077	10	980191051	есть
1079	3	980191051	LCD
1080	4	980191051	
1081	5	980191051	душ, туалет
1082	6	980191051	нет
1084	11	980191051	нет
1078	2	980191051	нет
1086	13	980191052	400
1087	14	980191052	\r\n06.06-20.06 - 1950, доп.место-250;\r\n21.06-10.07 - 2200, доп.место-300;\r\n11.07-24.07 - 2800, доп.место-400;\r\n25.07-25.08 - 3000, доп.место-500;\r\n26.08-15.09 - 1950, доп.место-250;\r\n16.09-5.06 - 1400, доп.место-200
1088	1	980191052	
1089	10	980191052	есть
1090	2	980191052	нет
1091	3	980191052	LCD
1092	4	980191052	
1093	5	980191052	душ, туалет
1094	6	980191052	нет
1096	11	980191052	нет
1083	8	980191051	сплит-система
1085	15	980191051	посуда, туаплетные принадлежности, фен
1095	8	980191052	сплит-система
1097	15	980191052	посуда, туаплетные принадлежности, фен
1098	13	980191053	400
1527	8	980191088	односпальные кровати, кресло-кровать, шкаф, стулья, прикроватные тумбочки, стол, вешалка
1533	10	980191089	есть
1099	14	980191053	\r\n06.06-20.06 - 1700, доп.место-250;\r\n21.06-10.07 - 2000, доп.место-300;\r\n11.07-24.07 - 2400, доп.место-400;\r\n25.07-25.08 - 2600, доп.место-500;\r\n26.08-15.09 - 1700, доп.место-250;\r\n16.09-5.06 - 1300, доп.место-200
1100	1	980191053	
1101	10	980191053	есть
1102	2	980191053	нет
1103	3	980191053	LCD
1104	4	980191053	
1105	5	980191053	lei, nefktn
1106	6	980191053	нет
1107	8	980191053	сплит-система
1108	11	980191053	нет
1109	15	980191053	посуда, туаплетные принадлежности, фен
1110	13	980191054	400
1111	14	980191054	\r\n06.06-20.06 - 1400, доп.место-250;\r\n21.06-10.07 - 1600, доп.место-300;\r\n11.07-24.07 - 1900, доп.место-400;\r\n25.07-25.08 - 2200, доп.место-500;\r\n26.08-15.09 - 1400, доп.место-250;\r\n16.09-5.06 - 1100, доп.место-200
1112	1	980191054	
1113	10	980191054	есть
1114	2	980191054	нет
1115	3	980191054	LCD
1116	4	980191054	
1117	5	980191054	душ, туалет
1118	6	980191054	нет
1119	8	980191054	сплит-система
1120	11	980191054	нет
1121	15	980191054	посуда, туаплетные принадлежности, фен
1122	13	980191055	400
1123	14	980191055	\r\n06.06-20.06 - 1100, доп.место-250;\r\n21.06-10.07 - 1300, доп.место-300;\r\n11.07-24.07 - 1500, доп.место-400;\r\n25.07-25.08 - 1650, доп.место-500;\r\n26.08-15.09 - 1100, доп.место-250;\r\n16.09-5.06 - 800, доп.место-200
1124	1	980191055	
1125	10	980191055	есть
1126	2	980191055	нет
1127	3	980191055	LCD
1128	4	980191055	
1129	5	980191055	душ, туалет
1130	6	980191055	нет
1131	8	980191055	сплит-система
1132	11	980191055	нет
1133	15	980191055	посуда, туаплетные принадлежности, фен
1134	13	980191056	
1136	1	980191056	
1135	14	980191056	\r\n1.05-10.06 - 900;\r\n11.06-10.07 - 1000;\r\n11.07-28.08 - 1200;\r\n29.08-30.09 - 1000
1137	10	980191056	есть
1138	2	980191056	нет
1139	3	980191056	эфирное
1140	4	980191056	по требованию
1179	8	980191059	сплит-система, 2 односпальные и 1 двуспальная кровати (ортопедические матрасы)
1142	6	980191056	нет
1192	11	980191060	нет
1144	11	980191056	нет
1145	15	980191056	набор туалетных принадлежностей, посуда
1146	13	980191057	
1148	1	980191057	
1147	14	980191057	\r\n1.05-10.06 -1100;\r\n11.06-10.07 - 1300;\r\n11.07-28.08 - 1600;\r\n29.08-30.09 - 1300
1149	10	980191057	есть
1150	2	980191057	нет
1151	3	980191057	эфирное
1152	4	980191057	по требованию
1182	13	980191060	400
1154	6	980191057	нет
1193	15	980191060	две комнаты с балконом и прихожей ; спальня- одна двуспальная кровать, мягкое кресло-кровать, набор мебели, гостиная- мягкий диван- кровать, комплект гостиничной мебели, телевизор ж/к, набор посуды и туалетных принадлежностей, фен.
1156	11	980191057	нет
1157	15	980191057	набор туалетных принадлежностей, посуда
1158	13	980191058	
1159	14	980191058	\r\n1.05-10.06 -1100;\r\n11.06-10.07 - 1300;\r\n11.07-28.08 - 1650;\r\n29.08-30.09 - 1300
1160	1	980191058	
1161	10	980191058	есть
1162	2	980191058	нет
1163	3	980191058	эфирное
1164	4	980191058	по требованию
1165	5	980191058	душ, туалет
1166	6	980191058	нет
1168	11	980191058	нет
1169	15	980191058	набор туалетных принадлежностей, посуда
1170	13	980191059	
1171	14	980191059	\r\n1.05-10.06 -1300;\r\n11.06-10.07 - 1500;\r\n11.07-28.08 - 2000;\r\n29.08-30.09 - 1500
1172	1	980191059	
1173	10	980191059	есть
1174	2	980191059	нет
1175	3	980191059	эфирное
1176	4	980191059	по требованию
1177	5	980191059	душ, туалет
1178	6	980191059	нет
1180	11	980191059	нет
1181	15	980191059	набор туалетных принадлежностей, посуда
1141	5	980191056	душ, туалет на два номера
1153	5	980191057	душ, туалет на два номера
1143	8	980191056	кондиционер, две односпальные кровати, диван кровать (или кресло кровать)
1155	8	980191057	сплит-система, четыре односпальные кровати
1167	8	980191058	сплит-система, 1 односпальная и 1 двуспальная кровати (ортопедические матрасы)
1184	1	980191060	
1185	10	980191060	есть
1186	2	980191060	нет
1187	3	980191060	LCD эфирное
1189	5	980191060	душ, туалет
1190	6	980191060	есть
1191	8	980191060	сплит- система
1183	14	980191060	\r\n6.06-20.06 - 2600, доп.место-250;\r\n21.06-10.07 - 2800, доп.место-300;\r\n11.07-24.07 - 3700, доп.место-400;\r\n25.07-25.08 - 3900, доп.место-500;\r\n26.08-15.09 -2600, доп.место-250;\r\n16.09-5.06-1800, доп.место-200
1188	4	980191060	по требованию
1194	13	980191061	400
1534	2	980191089	нет
1536	4	980191089	по требованию
1537	5	980191089	душ, туалет
1538	6	980191089	общая терраса
1195	14	980191061	\r\n6.06-20.06 - 2200, доп.место-250;\r\n21.06-10.07 - 2400, доп.место-300;\r\n11.07-24.07 - 2600, доп.место-400;\r\n25.07-25.08 - 2800, доп.место-500;\r\n26.08-15.09 -2000, доп.место-250;\r\n16.09-5.06-1500, доп.место-200
1196	1	980191061	
1197	10	980191061	есть
1198	2	980191061	нет
1199	3	980191061	LCD эфирное
1200	4	980191061	по требованию
1201	5	980191061	душ, туалет
1202	6	980191061	есть
1203	8	980191061	сплит-система
1204	11	980191061	нет
1205	15	980191061	одна двуспальная и одна односпальные кровати ( или одна двуспальная кровать и мягкое кресло- кровать), комплект гостиничной мебели, набор посуды и туалетных принадлежностей, фен.
1206	13	980191062	400
1207	14	980191062	\r\n6.06-20.06 - 1800, доп.место-250;\r\n21.06-10.07 - 2000, доп.место-300;\r\n11.07-24.07 - 2200, доп.место-400;\r\n25.07-25.08 - 2400, доп.место-500;\r\n26.08-15.09 -1600, доп.место-250;\r\n16.09-5.06-1300, доп.место-200
1208	1	980191062	
1209	10	980191062	есть
1210	2	980191062	нет
1211	3	980191062	LCD эфирное
1212	4	980191062	по требованию
1213	5	980191062	душ, туалет
1214	6	980191062	нет
1215	8	980191062	сплит-система
1216	11	980191062	нет
1217	15	980191062	одна двуспальная ( или две односпальные) кровати, комплект гостиничной мебели, набор посуды и туалетных принадлежностей, фен.
1218	13	980191063	
1229	15	980191063	
1219	14	980191063	\r\n16.09-31.05 - 1200;\r\n1.06-30.06 - 1500;\r\n1.07-15.07 -2000;\r\n16.07-25.08 - 2400;\r\n26.08-15.09 - 2200
1220	1	980191063	1 раз в 5 дней
1221	10	980191063	есть
1222	2	980191063	нет
1223	3	980191063	эфирное
1224	4	980191063	ежедневно
1225	5	980191063	душ, туалет
1226	6	980191063	есть
1227	8	980191063	сплит-система, Двуспальная, либо две односпальные кровати. шкаф, стулья, прикроватные тумбочки, журнальный и туалетный столики, вешалка, зеркало, телефон, туалетные принадлежности, пляжное полотенце, посуда
1228	11	980191063	нет
1230	13	980191064	500
1231	14	980191064	\r\n16.09-31.05 - 1500 доп.место-500;\r\n1.06-30.06 - 1800 доп.место-500;\r\n1.07-15.07 -2500 доп.место-500;\r\n16.07-25.08 - 3000 доп.место-500;\r\n26.08-15.09 -  2800 доп.место-500
1232	1	980191064	1 раз в 5 дней
1233	10	980191064	есть
1234	2	980191064	нет
1235	3	980191064	эфирное
1236	4	980191064	ежедневно
1237	5	980191064	
1238	6	980191064	
1239	8	980191064	Сплит-система, двуспальные кровати, шкаф, стулья, кресло-кровать, прикроватные тумбочки, журнальный и туалетный столики, вешалка, зеркало, телефон.
1240	11	980191064	у администратора
1241	15	980191064	
1242	13	980191065	500
1243	14	980191065	\r\n16.09-31.06 - 4000 доп.место-500;\r\n1.07-15.09 - 5000 доп.место-500
1244	1	980191065	
1245	10	980191065	
1246	2	980191065	
1247	3	980191065	
1248	4	980191065	
1249	5	980191065	
1250	6	980191065	
1251	8	980191065	
1252	11	980191065	
1253	15	980191065	
1254	13	980191066	
1256	1	980191066	
1255	14	980191066	\r\n10.06-20.06 - 1350;\r\n21.06-10.07 - 1500;\r\n11.07-25.07 - 1650;\r\n26.07-10.08 - 1860;\r\n11.08-25.08 - 1950;\r\n26.08-31.08 - 1500;\r\n1.09-1.10 - 1350
1257	10	980191066	есть
1258	2	980191066	нет
1259	3	980191066	эфирное
1260	4	980191066	1 раз в 2 дня
1261	5	980191066	душ, туалет
1262	6	980191066	есть, но не во всех номерах
1263	8	980191066	сплит-система ( либо кондиционер)
1264	11	980191066	нет
1273	5	980191067	ванна, туалет
1266	13	980191067	
1268	1	980191067	
1274	6	980191067	
1265	15	980191066	укомплектован спальным гарнитуром (двухспальная кровать), платяной шкаф, две тумбочки, тумба под телевизор , журнальный столик,  раскладной двухместный диван
1267	14	980191067	\r\n10.06-20.06 - 1730;\r\n21.06-10.07 - 2200;\r\n11.07-25.07 - 2400;\r\n26.07-10.08 - 2750;\r\n11.08-25.08 - 3300;\r\n26.08-31.08 - 2750;\r\n1.09-1.10 - 1730
1269	10	980191067	есть
1270	2	980191067	нет
1271	3	980191067	эфирное
1272	4	980191067	1 раз в 2 дня
1541	15	980191089	
1275	8	980191067	сплит-система ( либо кондиционер)
1276	11	980191067	нет
1539	8	980191089	односпальные кровати, кресло-кровать, шкаф, стулья, прикроватные тумбочки, стол, вешалка
1540	11	980191089	нет
1554	13	980191091	1200
1555	14	980191091	\r\n1.05-10.06 - 2540, доп.место-1060;\r\n11.06-9.07 - 2940, доп.место-1200;\r\n10.07-26.08 - 3740, доп.место-1480;\r\n27.08-10.09 - 2940, доп.место-1200;\r\n11.09-30.09 - 2540, доп.место-1060
1277	15	980191067	оснащен спальным гарнитуром (двухспальная кровать), платяной шкаф, две тумбочки, тумба под телевизор , журнальный столик, большой мягкий диван.
1278	13	980191068	0
1279	14	980191068	\r\n10.06-20.06 - 1890;\r\n21.06-10.07 - 2500;\r\n11.07-25.07 - 3000;\r\n26.07-10.08 - 3500;\r\n11.08-25.08 - 3500;\r\n26.08-31.08 - 3500;\r\n1.09-1.10 - 1890
1280	1	980191068	
1281	10	980191068	есть
1282	2	980191068	нет
1283	3	980191068	эфирное
1284	4	980191068	1 раз в 2 дня
1285	5	980191068	ванна, туалет
1286	6	980191068	нет
1287	8	980191068	сплит-система ( либо кондиционер)
1288	11	980191068	нет
1289	15	980191068	Дом состоит из большой веранды-прихожей, двух спальных комнат, кухни, ванной. \r\nПолностью меблирован, в кухне вся необходимая утварь, гладильная доска, утюг.
1291	14	980191069	\r\n1.05-5.06 - 1150 доп.место-50%;\r\n6.06-5.07 - 1500 доп.место-50%;\r\n5.07-25.08 - 2000 доп.место-50%;\r\n25.08-15.09 - 1600 доп.место-50%;\r\n15.09-25.10 - 1150 доп.место-50%
1292	1	980191069	1 раз в 3 дня
1293	10	980191069	есть
1294	2	980191069	нет
1295	3	980191069	эфирное
1296	4	980191069	ежедневно
1297	5	980191069	душ, туалет
1298	6	980191069	есть
1299	8	980191069	
1300	11	980191069	
1301	15	980191069	
1290	13	980191069	50%
1302	13	980191070	50%
1303	14	980191070	\r\n1.05-5.06 - 1900 доп.место-50%;\r\n6.06-5.07 - 2600 доп.место-50%;\r\n5.07-25.08 - 3600 доп.место-50%;\r\n25.08-15.09 - 2800 доп.место-50%;\r\n15.09-25.10 - 1900 доп.место-50%
1304	1	980191070	1 раз в 3 дня
1305	10	980191070	есть
1306	2	980191070	нет
1307	3	980191070	эфирное
1308	4	980191070	ежедневно
1309	5	980191070	душ, туалет
1310	6	980191070	
1311	8	980191070	
1312	11	980191070	
1313	15	980191070	
1314	13	980191071	50%
1315	14	980191071	\r\n1.05-5.06 - 3300 доп.место-50%;\r\n6.06-5.07 - 3900 доп.место-50%;\r\n5.07-25.08 - 4700 доп.место-50%;\r\n25.08-15.09 - 3900 доп.место-50%;\r\n15.09-25.10 - 3300 доп.место-50%
1316	1	980191071	1 раз в 3 дня
1317	10	980191071	есть
1318	2	980191071	нет
1319	3	980191071	эфирное
1320	4	980191071	ежедневно
1321	5	980191071	душ, туалет
1322	6	980191071	
1324	11	980191071	
1326	13	980191072	50%
1327	14	980191072	\r\n1.05-5.06 - 3600 доп.место-50%;\r\n6.06-5.07 - 4200 доп.место-50%;\r\n5.07-25.08 - 5000 доп.место-50%;\r\n25.08-15.09 - 4200 доп.место-50%;\r\n15.09-25.10 - 3600 доп.место-50%
1328	1	980191072	ежедневно
1329	10	980191072	есть
1330	2	980191072	
1331	3	980191072	эфирное
1332	4	980191072	ежедневно
1333	5	980191072	душ, туалет
1334	6	980191072	
1336	11	980191072	
1323	8	980191071	сплит-система
1325	15	980191071	завтрак включен
1335	8	980191072	сплит-система
1337	15	980191072	включен завтрак
1340	1	980191073	
1341	10	980191073	
1342	2	980191073	нет
1344	4	980191073	
1345	5	980191073	душ, комплект гостевых принадлежностей.
1346	6	980191073	не во всех номерах
1347	8	980191073	Номер с возможностью размещения 2 человек (доп. места). Площадь номера – 26 кв.м. с/у - 4,5 кв.м.  
1348	11	980191073	нет
1350	13	980191074	
1352	1	980191074	
1353	10	980191074	
1354	2	980191074	
1356	4	980191074	
1357	5	980191074	душ, комплект гостевых принадлежностей.
1358	6	980191074	не во всех номерах
1359	8	980191074	Номер с возможностью размещения 2 человек (доп. места). Площадь номера – 37,7 кв.м. с/у – 5,5 кв.м.
1360	11	980191074	нет
1361	15	980191074	сплит-система, цветной телевизор, диван, набор посуды.\r\n
1364	1	980191075	
1365	10	980191075	
1366	2	980191075	
1368	4	980191075	
1369	5	980191075	 гидромассажный душ, комплект гостевых принадлежностей, халаты, тапочки.
1370	6	980191075	есть
1371	8	980191075	
1372	11	980191075	
1373	15	980191075	сплит-система, телевизор, 2 дивана, обеденный стол, стулья, шкаф, большая кровать, набор посуды.
1338	13	980191073	1000
1339	14	980191073	двухместный номер без балкона: июнь-2200, июль-2400, август-2600, сентябрь-2200, с 1.10-31.05-1200.\r\nдвухместный номер с балконом: июнь-2400, июль-2600, август-2800, сентябрь-2400, с 1.10-31.05-1500.\r\n
1343	3	980191073	эфирное
1355	3	980191074	эфирное
1367	3	980191075	эфирное
1362	13	980191075	1000
1351	14	980191074	без балкона: июнь-3500, июль-4000, август-4000, сентябрь-3500, с 1.10-31.05-2500.\r\nс балконом: июнь-4500, июль-5000, август-5000, сентябрь-4500, с 1.10-31.05-3000
1550	6	980191090	нет
1551	8	980191090	
1349	15	980191073	сплит-система, цветной телевизор, диван или кресло, набор посуды. В стоимость включено: завтрак, охраняемая автостоянка, сейф, Wi-Fi.
1376	1	980191076	
1377	10	980191076	
1380	4	980191076	
1381	5	980191076	душ, комплект гостевых принадлежностей.
1382	6	980191076	не во всех номерах
1383	8	980191076	Номер с в Площадь номера – 26 кв.м. с/у - 4,5 кв.м.  
1384	11	980191076	нет
1385	15	980191076	сплит-система, цветной телевизор, диван или кресло, набор посуды. В стоимость включено: завтрак, охраняемая автостоянка, сейф, Wi-Fi.
1374	13	980191076	1000
1375	14	980191076	трехместный номер без балкона: июнь-3600, июль-3800, август-4000, сентябрь-3600, с 1.10-31.05-1200.\r\nтрехместный номер с балконом: июнь-3600, июль-3800, август-4000, сентябрь-3600, с 1.10-31.05-1500.
1378	2	980191076	нет
1379	3	980191076	эфирное
1363	14	980191075	\r\nдвухместный: июнь-6000, июль-6000, август-6000, сентябрь-6000, с 1.10-31.05-6000.\r\nс детской кроватью: июнь-7000, июль-7000, август-7000, сентябрь-7000, с 1.10-31.05-7000.
1388	1	980191077	
1389	10	980191077	есть
1390	2	980191077	есть
1391	3	980191077	эфирное
1393	5	980191077	ванна, туалет,
1394	6	980191077	
1395	8	980191077	сплит-система, телефон
1396	11	980191077	есть
1400	1	980191078	
1401	10	980191078	есть
1402	2	980191078	есть
1403	3	980191078	эфирное
1405	5	980191078	ванна, туалет, фен
1406	6	980191078	
1408	11	980191078	есть
1409	15	980191078	
1407	8	980191078	сплит-система, телефон
1412	1	980191079	
1413	10	980191079	есть
1414	2	980191079	есть
1415	3	980191079	эфирное
1417	5	980191079	ванна, туалет, фен, халат, тапочки
1418	6	980191079	
1419	8	980191079	сплит-система, телефон
1420	11	980191079	есть
1386	13	980191077	Доп. место – скидка 30% от стоимости основного места;
1387	14	980191077	\r\n01.05.- 31.05.2012\t1000,\r\n01.06.- 20.06.2012\t1300,\r\n21.06.- 30.06.2012\t1500,\r\n01.07.- 15.07.2012\t1750,\r\n16.07.- 25.08.2012\t1900,\r\n26.08.- 30.09.2012\t1500,\r\n01.10.- 15.10.2012     1000.\r\nДоп. место – скидка 30:;\r\nнезанятое место – скидка 30%.
1398	13	980191078	Доп. место – скидка 30% от стоимости основного места;
1399	14	980191078	\r\n01.05.- 31.05.2012\t1300,\r\n01.06.- 20.06.2012\t1550,\r\n21.06.- 30.06.2012\t1800,\r\n01.07.- 15.07.2012\t2050,\r\n16.07.- 25.08.2012\t2150,\r\n26.08.- 30.09.2012\t1800,\r\n01.10.- 15.10.2012     1200.\r\nДоп. место – скидка 30:;\r\nнезанятое место – скидка 30%.
1410	13	980191079	Доп. место – скидка 30% от стоимости основного места;
1411	14	980191079	\r\n01.06.- 20.06.2012\t2350,\r\n21.06.- 30.06.2012\t2500,\r\n01.07.- 15.07.2012\t2700,\r\n16.07.- 25.08.2012\t2850,\r\n26.08.- 30.09.2012\t2500.\r\nДоп. место – скидка 30:;\r\nнезанятое место – скидка 30%.
1434	13	980191081	700
1397	15	980191077	
1421	15	980191079	2 комнаты
1392	4	980191077	ежедневно
1404	4	980191078	ежедневно
1416	4	980191079	ежедневно
1422	13	980191080	700
1423	14	980191080	\r\n01.06-30.06 - 2200, доп.место-700;\r\n01.07-31.07 - 2750, доп.место-700;\r\n01.08-30.08 - 3050, доп.место-700;\r\n01.09-25.09 - 2200, доп.место-700;\r\n26.09-30.05 - 1700, доп.место-500.\r\n
1424	1	980191080	1 раз 7 дней
1425	10	980191080	есть
1426	2	980191080	нет
1427	3	980191080	эфирное
1428	4	980191080	по требованию
1429	5	980191080	душ, туалет
1430	6	980191080	есть с видом на море
1431	8	980191080	
1432	11	980191080	нет
1433	15	980191080	сплит-система, электрочайник
1443	8	980191081	
1435	14	980191081	\r\n01.06-30.06 - 2750, доп.место-700;\r\n01.07-31.07 - 3300, доп.место-700;\r\n01.08-30.08 - 3600, доп.место-700;\r\n01.09-25.09 - 2750, доп.место-700;\r\n26.09-30.05 - 2200, доп.место-500.\r\n
1436	1	980191081	1 раз 7 дней
1437	10	980191081	есть
1438	2	980191081	нет
1439	3	980191081	эфирное
1440	4	980191081	по требованию
1441	5	980191081	душ, туалет
1442	6	980191081	есть с видом на море
1444	11	980191081	нет
1445	15	980191081	Мягкий уголок, французское окно, двуспальная кровать, сплит-система, электрочайник
1455	8	980191082	
1552	11	980191090	нет
1448	1	980191082	1 раз 7 дней
1449	10	980191082	есть
1450	2	980191082	нет
1446	13	980191082	700
1553	15	980191090	сплит-система, электрочайник
1556	1	980191091	1 раз в 5 дней
1557	10	980191091	есть
1558	2	980191091	нет
1559	3	980191091	эфирное
1560	4	980191091	ежедневно
1561	5	980191091	душ, туалет
1562	6	980191091	есть
1564	11	980191091	нет
1565	15	980191091	
1447	14	980191082	\r\n01.06-30.06 - 3300, доп.место-700;\r\n01.07-31.07 - 4400, доп.место-700;\r\n01.08-30.08 - 4850, доп.место-700;\r\n01.09-25.09 - 3300, доп.место-700;\r\n26.09-30.05 - 2750, доп.место-500.
1451	3	980191082	эфирное
1452	4	980191082	по требованию
1453	5	980191082	душ, туалет
1454	6	980191082	есть с видом на море
1456	11	980191082	нет
1457	15	980191082	2-х комнатный (гостиная + спальня) в 1-й комнате 2 односпальные кровати с возможностью объединения в двуспальную кровать. Обеденный стол на 4 персоны. Во второй комнате двуспальная кровать, сплит-система
1458	13	980191083	700
1459	14	980191083	\r\n01.06-30.06 - 3100, доп.место-700;\r\n01.07-31.07 - 4200, доп.место-700;\r\n01.08-30.08 - 4600, доп.место-700;\r\n01.09-25.09 - 3100, доп.место-700;\r\n26.09-30.05 - 2600, доп.место-500.
1460	1	980191083	1 раз 7 дней
1461	10	980191083	есть
1462	2	980191083	нет
1463	3	980191083	эфирное
1464	4	980191083	по требованию
1465	5	980191083	душ, туалет
1466	6	980191083	есть с видом на море
1467	8	980191083	
1468	11	980191083	нет
1469	15	980191083	2-х комнатный номер (гостиная + спальня) двуспальная кровать, мягкая мебель.
1478	6	980191084	
1490	6	980191085	
1473	10	980191084	есть
1474	2	980191084	нет
1477	5	980191084	душ, туалет
1479	8	980191084	сплит-система
1480	11	980191084	нет
1485	10	980191085	есть
1486	2	980191085	нет
1489	5	980191085	душ, туалет
1491	8	980191085	сплит-система
1503	8	980191086	односпальные кровати, кресло-кровать, шкаф, стулья, прикроватные тумбочки, стол, вешалка
1471	14	980191084	\r\nМай - 900, доп.место-300;\r\n1.06 – 16.06 - 1400, доп.место-350;\r\n16.06 – 1.07 - 2000, доп.место-500;\r\n1.07 – 11.07 - 2200, доп.место-600;\r\n11.07 – 26.08 - 2800, доп.место-900;\r\n26.08 – 16.09 - 2000, доп.место-500;\r\n16.09 – 1.10 - 1200, доп.место-350.\r\n
1481	15	980191084	4-е место и завтрак для 2 человек - бесплатно.
1470	13	980191084	500
1482	13	980191085	500
1483	14	980191085	\r\nМай - 800, доп.место-300;\r\n1.06 – 16.06 - 1000, доп.место-350;\r\n16.06 – 1.07 - 1600, доп.место-500;\r\n1.07 – 11.07 - 2200, доп.место-600;\r\n11.07 – 26.08 - 2500, доп.место-900;\r\n26.08 – 16.09 - 1800, доп.место-500;\r\n16.09 – 1.10 - 1000, доп.место-350.
1493	15	980191085	4-е место и завтрак для 2 человек - бесплатно.
1472	1	980191084	1 раз 7 дней
1475	3	980191084	эфирное
1476	4	980191084	ежедневно
1484	1	980191085	1 раз 7 дней
1487	3	980191085	эфирное
1488	4	980191085	ежедневно
1492	11	980191085	есть
1496	1	980191086	1 раз в 10 дней
1497	10	980191086	есть
1498	2	980191086	нет
1499	3	980191086	эфирное
1500	4	980191086	по требованию
1501	5	980191086	душ, туалет
1502	6	980191086	общая терраса
1504	11	980191086	нет
1535	3	980191089	
1542	13	980191090	350
1508	1	980191087	1 раз в 10 дней
1509	10	980191087	есть
1510	2	980191087	нет
1511	3	980191087	эфирное
1512	4	980191087	по требованию
1513	5	980191087	душ, туалет
1514	6	980191087	общая терраса
1515	8	980191087	односпальные кровати, кресло-кровать, шкаф, стулья, прикроватные тумбочки, стол, вешалка
1516	11	980191087	нет
1543	14	980191090	\r\n1.06-30.06 - 700, доп.место-350;\r\n1.07-25.08 - 1200, доп.место-400;\r\n26.08-30.09 - 700, доп.место-250
1520	1	980191088	1 раз в 10 дней
1521	10	980191088	есть
1522	2	980191088	нет
1523	3	980191088	эфирное
1524	4	980191088	по требованию
1525	5	980191088	душ, туалет
1526	6	980191088	общая терраса
1528	11	980191088	нет
1532	1	980191089	1 раз в 10 дней
1494	13	980191086	0
1495	14	980191086	\r\n1.06-15.06 - 800;\r\n16.06-30.06 - 1000;\r\n1.07-15.07 - 1600;\r\n16.07-31.07 - 1800;\r\n1.08-31.08 - 2000;\r\n1.09-30.09 - 1000
1506	13	980191087	0
1507	14	980191087	\r\n1.06-15.06 - 400;\r\n16.06-30.06 - 500;\r\n1.07-15.07 - 800;\r\n16.07-31.07 - 900;\r\n1.08-31.08 - 1000;\r\n1.09-30.09 - 500
1517	15	980191087	набор посуды
1518	13	980191088	400
1519	14	980191088	\r\n1.06-15.06 - 800,доп.место-200;\r\n16.06-30.06 - 1000,доп.место-250;\r\n1.07-15.07 - 1600,доп.место-400;\r\n16.07-31.07 - 1800,доп.место-450;\r\n1.08-31.08 - 2000,доп.место-500;\r\n1.09-30.09 - 1000,доп.место-250
1529	15	980191088	набор посуды
1505	15	980191086	набор посуды
1530	13	980191089	0
1531	14	980191089	\r\n1.06-15.06 - 600;\r\n16.06-30.06 - 750;\r\n1.07-15.07 - 1200;\r\n16.07-31.07 - 1350;\r\n1.08-31.08 - 1500;\r\n1.09-30.09 - 750
1544	1	980191090	1 раз в 7 дней
1545	10	980191090	
1546	2	980191090	нет
1547	3	980191090	эфирное
1548	4	980191090	нет
1549	5	980191090	душ, туалет
1577	15	980191092	
1563	8	980191091	2-х спальная кровать,шкаф,тумбочки,кондиционер,диван или кресло-кровать
1566	13	980191092	1165
1567	14	980191092	\r\n1.05-10.06 - 2440, доп.место-1025;\r\n11.06-9.07 - 2840, доп.место-1165;\r\n10.07-26.08 - 3640, доп.место-1445;\r\n27.08-10.09 - 2840, доп.место-1165;\r\n11.09-30.09 - 2440, доп.место-1025
1568	1	980191092	1 раз в 5 дней
1569	10	980191092	есть
1570	2	980191092	нет
1571	3	980191092	эфирное
1572	4	980191092	ежедневно
1573	5	980191092	душ, туалет
1574	6	980191092	есть
1575	8	980191092	2-х спальная кровать или 1,5 спальные кровати,шкаф,кондиционер
1576	11	980191092	нет
1578	13	980191093	1095
1579	14	980191093	\r\n1.05-10.06 - 2640, доп.место-1095;\r\n11.06-9.07 - 3040, доп.место-1235;\r\n10.07-26.08 - 3840, доп.место-1515;\r\n27.08-10.09 - 3040, доп.место-1235;\r\n11.09-30.09 - 2640, доп.место-1095
1580	1	980191093	1 раз в 5 дней
1581	10	980191093	есть
1582	2	980191093	нет
1583	3	980191093	эфирное
1584	4	980191093	ежеддневно
1585	5	980191093	душ, туалет
1586	6	980191093	есть
1588	11	980191093	нет
1589	15	980191093	2-х спальная кровать, шкаф, тумбочки, журнальный столик, кондиционер, диван
1592	1	980191094	1 раз в 5 дней
1593	10	980191094	есть
1594	2	980191094	нет
1601	15	980191094	
1590	13	980191094	1115
1591	14	980191094	\r\n1.05-10.06 - 3750, доп.место-1046;\r\n11.06-9.07 - 4200, доп.место-1115;\r\n10.07-26.08 - 5340, доп.место-1417;\r\n27.08-10.09 - 4200, доп.место-1151;\r\n11.09-30.09 - 3750, доп.место-1046
1595	3	980191094	эфирное
1596	4	980191094	ежедневно
1597	5	980191094	душ, туалет
1598	6	980191094	есть
1600	11	980191094	нет
1602	13	980191095	1165
1603	14	980191095	\r\n1.05-10.06 - 2840, доп.место-1165;\r\n11.06-9.07 - 3640, доп.место-1445;\r\n10.07-26.08 - 4340, доп.место-1690;\r\n27.08-10.09 - 3640, доп.место-1445;\r\n11.09-30.09 - 2840, доп.место-1165
1604	1	980191095	1 раз в 5 дней
1605	10	980191095	есть
1606	2	980191095	нет
1607	3	980191095	эфирное
1608	4	980191095	ежедневно
1609	5	980191095	душ, туалет
1610	6	980191095	есть
1612	11	980191095	нет
1613	15	980191095	кровать + 2-х спальная кровать или 1,5 спальные кровати, шкаф, тумбочки, журнальный столик. В некоторых номерах имеются диваны.
1587	8	980191093	кондиционер
1599	8	980191094	кондиционер
1611	8	980191095	кондиционер
1614	13	980191096	0
1615	14	980191096	\r\n1.05-10.06 - 2340;\r\n11.06-9.07 - 2740;\r\n10.07-26.08 - 3540;\r\n27.08-10.09 - 2740;\r\n11.09-30.09 - 2340
1616	1	980191096	1 раз в 5 дней
1617	10	980191096	есть
1618	2	980191096	нет
1619	3	980191096	эфирное
1620	4	980191096	ежедневно
1621	5	980191096	душ, туалет
1622	6	980191096	нет
1623	8	980191096	
1624	11	980191096	нет
1625	15	980191096	
1626	13	980191097	0
1627	14	980191097	\r\n1.05-10.06 - 1300;\r\n11.06-9.07 - 1800;\r\n10.07-25.08 - 2200;\r\n26.08-10.09 - 1800;\r\n11.09-30.09 - 1300
1628	1	980191097	1 раз в 5 дней
1629	10	980191097	есть
1630	2	980191097	нет
1631	3	980191097	эфирное
1632	4	980191097	ежедневно
1633	5	980191097	ванна, туалет
1634	6	980191097	есть
1635	8	980191097	сплит-система
1636	11	980191097	нет
1637	15	980191097	качественная мягкая мебель
1638	13	980191098	0
1639	14	980191098	\r\n1.05-10.06 - 2400;\r\n11.06-9.07 - 3400;\r\n10.07-25.08 - 4200;\r\n26.08-10.09 - 3400;\r\n11.09-30.09 - 2400
1640	1	980191098	1 раз в 5 дней
1641	10	980191098	есть
1642	2	980191098	нет
1643	3	980191098	эфирное
1644	4	980191098	ежедневно
1645	5	980191098	ванна, туалет
1646	6	980191098	есть
1647	8	980191098	сплит-система
1648	11	980191098	нет
1649	15	980191098	полутораспальные кровати, диван-кровать, тумбочки, трюмо, шкаф-купе, стол, фен, гигиенические средства
1650	13	980191099	0
1652	1	980191099	1 раз в 7 дней
1653	10	980191099	есть
1654	2	980191099	нет
1655	3	980191099	эфирное
1656	4	980191099	3 раза в неделю
1657	5	980191099	душ, туалет
1658	6	980191099	нет
1660	11	980191099	нет
1661	15	980191099	
1651	14	980191099	\r\n1.06-30.06 - 1570;\r\n1.07-15.07 - 2050;\r\n16.07-31.08 - 2112;\r\n1.09-30.09 - 1570
1659	8	980191099	кондиционер
1662	13	980191100	0
1664	1	980191100	1 раз в 7 дней
1673	15	980191100	
1663	14	980191100	\r\n1.06-30.06 - 2130;\r\n1.07-15.07 - 2895;\r\n16.07-31.08 - 2979;\r\n1.09-30.09 - 2190
1665	10	980191100	есть
1666	2	980191100	нет
1667	3	980191100	эфирное
1668	4	980191100	3 раза в неделю
1669	5	980191100	душ, туалет
1670	6	980191100	нет
1671	8	980191100	кондиционер
1672	11	980191100	нет
1685	15	980191101	
1674	13	980191101	0
1675	14	980191101	\r\n1.06-30.06 - 1500;\r\n1.07-15.07 - 1950;\r\n16.07-31.08 - 2050;\r\n1.09-30.09 - 1500
1676	1	980191101	1 раз в 7 дней
1677	10	980191101	есть
1678	2	980191101	нет
1679	3	980191101	эфирное
1680	4	980191101	3 раза в неделю
1681	5	980191101	душ, туалет
1682	6	980191101	нет
1683	8	980191101	вентилятор
1684	11	980191101	нет
1686	13	980191102	150
1687	14	980191102	\r\n25.06-10.07 - 1200,доп.место-150;\r\n11.07-25.08 - 1400,доп.место-150;\r\n26.08-24.06 - 700, доп.место-150
1688	1	980191102	по требованию
1689	10	980191102	есть
1690	2	980191102	нет
1691	3	980191102	эфирное
1692	4	980191102	по требованию
1693	5	980191102	душ, туалет
1694	6	980191102	общий
1695	8	980191102	сплит-система
1696	11	980191102	нет
1697	15	980191102	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
1703	3	980191103	
1698	13	980191103	150
1699	14	980191103	\r\n25.06-10.07 - 1500,доп.место-150;\r\n11.07-25.08 - 1800,доп.место-150;\r\n26.08-24.06 - 900, доп.место-150
1700	1	980191103	по требованию
1701	10	980191103	есть
1702	2	980191103	нет
1704	4	980191103	по требованию
1705	5	980191103	душ, туалет
1706	6	980191103	общий
1707	8	980191103	сплит-система
1708	11	980191103	нет
1709	15	980191103	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
1710	13	980191104	150
1711	14	980191104	\r\n25.06-10.07 - 1600,доп.место-150;\r\n11.07-25.08 - 2000,доп.место-150;\r\n26.08-24.06 - 1200, доп.место-150
1712	1	980191104	по требованию
1713	10	980191104	есть
1714	2	980191104	нет
1715	3	980191104	эфирное
1716	4	980191104	по требованию
1717	5	980191104	душ, туалет
1718	6	980191104	общий
1719	8	980191104	сплит-система
1720	11	980191104	нет
1721	15	980191104	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
1722	13	980191105	
1723	14	980191105	на сайте цены ниже!!!!
1724	1	980191105	2 раза в неделю
1725	10	980191105	есть
1726	2	980191105	нет
1727	3	980191105	эфирное
1728	4	980191105	2 раза в неделю
1729	5	980191105	душ, туалет
1730	6	980191105	терраса
1731	8	980191105	
1732	11	980191105	нет
1733	15	980191105	
1734	13	980191106	0
1736	1	980191106	по требованию
1737	10	980191106	есть
1738	2	980191106	нет
1739	3	980191106	эфирное
1740	4	980191106	по требованию
1741	5	980191106	душ, туалет
1742	6	980191106	нет
1743	8	980191106	кондиционер
1744	11	980191106	нет
1745	15	980191106	
1751	3	980191107	
1757	15	980191107	
1735	14	980191106	\r\n1.06-30.06 - 900;\r\n1.07-15.07 - 1250;\r\n16.07-25.08 - 1700;\r\n26.08-30.09 - 900
1746	13	980191107	0
1747	14	980191107	\r\n1.06-30.06 - 1000;\r\n1.07-15.07 - 1400;\r\n16.07-25.08 - 2000;\r\n26.08-30.09 - 1000
1748	1	980191107	по требованию
1749	10	980191107	есть
1750	2	980191107	нет
1752	4	980191107	по требованию
1753	5	980191107	душ, туалет
1754	6	980191107	нет
1755	8	980191107	кондиционер
1756	11	980191107	нет
1758	13	980191108	300
1759	14	980191108	\r\nмай - 1000;\r\nиюнь - 1000;\r\nиюль - 1300;\r\nавгуст - 1500;\r\nсентябрь - 1000
1760	1	980191108	по требованию
1761	10	980191108	есть
1762	2	980191108	нет
1763	3	980191108	эфирное
1764	4	980191108	по требованию
1765	5	980191108	душ, туалет
1766	6	980191108	нет
1767	8	980191108	односпальные или двуспальные кровати, шкаф, стулья, прикроватные тумбочки, стол, вешалка, зеркало
1768	11	980191108	нет
1769	15	980191108	кондиционер
1770	13	980191109	500
1771	14	980191109	\r\nмай - 1500;\r\nиюнь - 1500;\r\nиюль - 1950;\r\nавгуст - 2250;\r\nсентябрь - 1500
1772	1	980191109	по требованию
1773	10	980191109	есть
1774	2	980191109	нет
1775	3	980191109	эфирное
1776	4	980191109	по требованию
1777	5	980191109	душ, туалет
1778	6	980191109	есть
1779	8	980191109	односпальные или двуспальные кровати, шкаф, стулья, прикроватные тумбочки, стол, вешалка, зеркало
1780	11	980191109	нет
1781	15	980191109	кондиционер
1784	1	980191110	1 раз в 3 дня
1786	2	980191110	есть
1788	4	980191110	ежедневно
1789	5	980191110	ванна, туалет
1790	6	980191110	нет
1792	11	980191110	нет
1787	3	980191110	эфирное
1793	15	980191110	сплит-система
1782	13	980191110	700
1783	14	980191110	\r\n1.01-31.05 - 2700,доп.место-600;\r\n1.06-30.06 - 3100,доп.место-700;\r\n1.07-31.08 - 4100,доп.место-1000;\r\n1.09-30.09 - 3400,доп.место-800;\r\n1.10-31.12 - 2700,доп.место-600
1785	10	980191110	есть
1794	13	980191111	700
1795	14	980191111	\r\n1.01-31.05 - 2900,доп.место-600;\r\n1.06-30.06 - 3500,доп.место-700;\r\n1.07-31.08 - 4600,доп.место-1000;\r\n1.09-30.09 - 3700,доп.место-800;\r\n1.10-31.12 - 2900,доп.место-600
1796	1	980191111	1 раз в 3 дня
1797	10	980191111	есть
1798	2	980191111	есть
1799	3	980191111	эфирное
1800	4	980191111	ежедневно
1801	5	980191111	ванна, туалет
1802	6	980191111	есть
1803	8	980191111	Минибар, набор посуды, фен, гостевой комплект. Две раздельные, либо одна двуспальная кровати. Дополнительное место - раскладной диван.
1804	11	980191111	нет
1805	15	980191111	сплит-система
1806	13	980191112	700
1807	14	980191112	\r\n1.01-31.05 - 3200,доп.место-600;\r\n1.06-30.06 - 3700,доп.место-700;\r\n1.07-31.08 - 5200,доп.место-1000;\r\n1.09-30.09 - 4100,доп.место-800;\r\n1.10-31.12 - 3200,доп.место-600
1808	1	980191112	1 раз в 3 дня
1809	10	980191112	есть
1810	2	980191112	есть
1811	3	980191112	эфирное
1812	4	980191112	ежедневно
1813	5	980191112	ванна, туалет
1814	6	980191112	есть
1815	8	980191112	набор посуды, фен, гостевой комплект. Две раздельные кровати (соединённые в одну). Дополнительные места - раскладной диван
1816	11	980191112	нет
1817	15	980191112	сплит-система
1791	8	980191110	 набор посуды, фен, гостевой комплект. Две раздельные кровати или одна двуспальная. Раскладной диван. 
1818	13	980191113	700
1819	14	980191113	\r\n1.01-31.05 - 5000,доп.место-600;\r\n1.06-30.06 - 5800,доп.место-700;\r\n1.07-31.08 - 7200,доп.место-1000;\r\n1.09-30.09 - 5800,доп.место-800;\r\n1.10-31.12 - 5000,доп.место-600
1820	1	980191113	1 раз в 3 дня
1821	10	980191113	есть
1822	2	980191113	есть
1823	3	980191113	эфирное
1824	4	980191113	ежедневно
1825	5	980191113	гидромассажная кабина, туалет
1826	6	980191113	балкон или зимний сад.
1827	8	980191113	"Свадебный":набор посуды, фен, гостевой комплект. Двуспальная кровать. Зимний сад. Раскладной диван. "Свадебный": набор посуды, фен, гостевой комплект. Двуспальная кровать. Гидромассажная ванна. 
1828	11	980191113	нет
1829	15	980191113	№ 404: набор посуды, фен, гостевой комплект. Двуспальная кровать. Гидромассажная ванна.\r\n№ 405:набор посуды, фен, гостевой комплект. Двуспальная кровать. Раскладной диван. \r\nсплит система
1830	13	980191114	700
1831	14	980191114	\r\n1.01-31.05 - 8600,доп.место-600;\r\n1.06-30.06 - 9300,доп.место-700;\r\n1.07-31.08 - 11000,доп.место-1000;\r\n1.09-30.09 - 9500,доп.место-800;\r\n1.10-31.12 - 8600,доп.место-600
1832	1	980191114	1 раз в 3 дня
1833	10	980191114	есть
1834	2	980191114	есть
1835	3	980191114	эфирное
1836	4	980191114	ежедневно
1837	5	980191114	два: гостевой и полный
1838	6	980191114	балкон или зимний сад.
1839	8	980191114	Спальная комната, кабинет, гостинная, кухня, зимний сад с плетёной мебелью. Одна двуспальная кровать. Гидромассажная ванна. 
1840	11	980191114	нет
1841	15	980191114	сплит-системы
1842	13	980191115	300
1843	14	980191115	\r\n1.05-31.05 - 1000,доп.место-200;\r\n1.06-15.06 - 1500,доп.место-200;\r\n16.06-30.06 - 2000,доп.место-200;\r\n1.07-15.07 - 2200,доп.место - 300;\r\n16.07-31.08 - 2200,доп.место - 300;\r\n1.09-30.09 - 1500,доп.место-200
1844	1	980191115	по требованию
1845	10	980191115	есть
1846	2	980191115	нет
1847	3	980191115	эфирное
1848	4	980191115	через день
1849	5	980191115	душ, туалет
1850	6	980191115	на два номера
1851	8	980191115	двуспальная кровать, кресло-кровати, шкаф, прикроватные тумбочки,журнальный столик
1852	11	980191115	нет
1853	15	980191115	сплит-система
1854	13	980191116	300
1855	14	980191116	\r\n1.05-31.05 - 1000,доп.место-200;\r\n1.06-15.06 - 1200,доп.место-200;\r\n16.06-30.06 - 1500,доп.место-200;\r\n1.07-15.07 - 1800,доп.место - 300;\r\n16.07-31.08 - 1800,доп.место - 300;\r\n1.09-30.09 - 1000,доп.место-200
1856	1	980191116	по требованию
1857	10	980191116	есть
1858	2	980191116	нет
1859	3	980191116	эфирное
1860	4	980191116	через день
1861	5	980191116	душ, туалет
1862	6	980191116	на два номера
1863	8	980191116	двухспальная и односпальная или односпальные кровати, кресло-кровать, прикроватные тумбочки, шкаф, трюмо,журнальный столик
1864	11	980191116	нет
1865	15	980191116	сплит-система
1866	13	980191117	300
1867	14	980191117	\r\n1.05-31.05 - 600,доп.место-200;\r\n1.06-15.06 - 700,доп.место-200;\r\n16.06-30.06 - 1000,доп.место-200;\r\n1.07-15.07 - 1200,доп.место - 300;\r\n16.07-31.08 - 1500,доп.место - 300;\r\n1.09-30.09 - 800,доп.место-200
1868	1	980191117	по требованию
1869	10	980191117	есть
1870	2	980191117	нет
1871	3	980191117	эфирное
1872	4	980191117	через день
1873	5	980191117	душ, туалет
1874	6	980191117	на два номера
1875	8	980191117	двуспальная кровать, прикроватные тумбочки, шкаф, раскладное кресло, туалетный столик, зеркало
1876	11	980191117	нет
1877	15	980191117	сплит-система
1878	13	980191118	0
1879	14	980191118	\r\n1.06-30.06 - 1200;\r\n1.07-31.08 - 1500;\r\n1.09-30.09 - 1200
1880	1	980191118	1 раз в 10 дней
1881	10	980191118	есть
1882	2	980191118	нет
1883	3	980191118	эфирное
1884	4	980191118	по требованию
1885	5	980191118	душ, туалет
1886	6	980191118	общая терраса
1887	8	980191118	двуспальная кровать, кресло-кровать, шкаф, стулья, прикроватные тумбочки, журнальный столик, туалетный столик, зеркало
1888	11	980191118	нет
1889	15	980191118	кондиционер
1890	13	980191119	0
1891	14	980191119	\r\n1.06-30.06 - 900;\r\n1.07-31.08 - 1200;\r\n1.09-30.09 - 900
1892	1	980191119	1 раз в 10 дней
1893	10	980191119	есть
1894	2	980191119	нет
1895	3	980191119	нет
1896	4	980191119	по требованию
1897	5	980191119	душ, туалет
1898	6	980191119	общая терраса
1899	8	980191119	двуспальная кровать, кресло-кровать, шкаф, стулья, прикроватные тумбочки, журнальный столик, туалетный столик, зеркало
1900	11	980191119	нет
1901	15	980191119	вентилятор
1902	13	980191120	0
1903	14	980191120	\r\n1.06-30.06 - 400;\r\n1.07-31.08 - 600;\r\n1.09-30.09 - 400
1904	1	980191120	1 раз в 10 дней
1905	10	980191120	общий на кухне
1906	2	980191120	нет
1907	3	980191120	нет (общий)
1908	4	980191120	по требованию
1909	5	980191120	общий
1910	6	980191120	общая терраса
1911	8	980191120	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
1912	11	980191120	нет
1913	15	980191120	ветилятор
1914	13	980191121	350
1915	14	980191121	\r\nмай - 900,доп.место-300;\r\nиюнь-1050,доп.место-350;\r\nиюль-1500,допюместо-500;\r\nавгуст-1500,допюместо-500;\r\nсентябрь-1050,доп.место-350
1916	1	980191121	по требованию
1917	10	980191121	есть
1918	2	980191121	нет
1919	3	980191121	эфирное
1920	4	980191121	по требованию
1921	5	980191121	общий на блок
1922	6	980191121	нет
1923	8	980191121	односпальные кровати, кресло-кровать, шкаф, прикроватные тумбочки, стол
1924	11	980191121	нет
1925	15	980191121	кондиционер
1926	13	980191122	500
1927	14	980191122	\r\nмай - 1200,доп.место-400;\r\nиюнь-1500,доп.место-500;\r\nиюль-2700,допюместо-900;\r\nавгуст-2700,допюместо-900;\r\nсентябрь-1500,доп.место-500
1928	1	980191122	по требованию
1929	10	980191122	есть
1930	2	980191122	нет
1931	3	980191122	эфирное
1932	4	980191122	по требованию
1933	5	980191122	душ, туалет
1934	6	980191122	нет
1935	8	980191122	кондиционер
1936	11	980191122	нет
1937	15	980191122	односпальные кровати и кресло-кровать или двуспальная кровать и диван-кровать, шкаф, прикроватные тумбочки, стол
1938	13	980191123	0
1939	14	980191123	\r\nмай - 1800;\r\nиюнь-2000;\r\nиюль-3500;\r\nавгуст-3500;\r\nсентябрь-2000
1940	1	980191123	по требованию
1941	10	980191123	есть
1942	2	980191123	нет
1943	3	980191123	эфирное
1944	4	980191123	по требованию
1945	5	980191123	душ, туалет
1946	6	980191123	нет
1947	8	980191123	односпальные кровати, шкаф, прикроватные тумбочки, стол
1948	11	980191123	нет
1949	15	980191123	кондиционер
1950	13	980191124	0
2250	13	980191149	0
1951	14	980191124	\r\n1.05-31.05 - 1250;\r\n1.06-30.06 - 1450;\r\n1.07-31.08 - 1650;\r\n1.09-30.09 - 1450;\r\n1.10-30.04 - 1000
1952	1	980191124	1 раз в 5 дней
1953	10	980191124	есть
1954	2	980191124	есть
1955	3	980191124	спутниковое, LCD
1956	4	980191124	ежедневно
1957	5	980191124	душ, туалет
1958	6	980191124	нет
1959	8	980191124	полутороспальная кровать, прикроватные тумбочки, двустворчатый шкаф, телефон, жк-телевизор, сплит-система, санузел (душевая кабина, умывальник, фен, туал.принадлежности)
1960	11	980191124	есть
1961	15	980191124	сплит-система
1962	13	980191125	0
1963	14	980191125	\r\n1.05-31.05 - 1700;\r\n1.06-30.06 - 2200;\r\n1.07-31.08 - 2800;\r\n1.09-30.09 - 2200;\r\n1.10-30.04 - 1200
1964	1	980191125	1 раз в 5 дней
1965	10	980191125	есть
1966	2	980191125	есть
1967	3	980191125	спутниковое, LCD
1968	4	980191125	ежедневно
1969	5	980191125	душ, туалет
1970	6	980191125	нет
1971	8	980191125	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, двустворчатый шкаф, телефон, мини-бар, сплит-система, санузел (душевая кабина, умывальник, фен, туал.принадлежности)
1972	11	980191125	есть
1973	15	980191125	
1974	13	980191126	0
1975	14	980191126	\r\n1.05-31.05 - 2000;\r\n1.06-30.06 - 2500;\r\n1.07-31.08 - 3000;\r\n1.09-30.09 - 2500;\r\n1.10-30.04 - 1500
1976	1	980191126	1 раз в 5 дней
1977	10	980191126	есть
1978	2	980191126	есть
1979	3	980191126	спутниковое, LCD
1980	4	980191126	ежедневно
1981	5	980191126	душ, туалет
1982	6	980191126	оборудован мебелью.
1983	8	980191126	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, двустворчатый шкаф, телефон, сплит-система, санузел (душевая кабина, умывальник, фен, туал.принадлежности) 
1984	11	980191126	есть
1985	15	980191126	сплит-система
1986	13	980191127	0
1988	1	980191127	1 раз в 5 дней
1989	10	980191127	есть
1990	2	980191127	есть
1991	3	980191127	спутниковое, LCD
1992	4	980191127	ежедневно
1993	5	980191127	душ, туалет
1994	6	980191127	нет
1995	8	980191127	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, раскладной диван, двустворчатый шкаф, телефон, сплит-система, санузел (душевая кабина, умывальник, фен, туал.принадлежности)
1996	11	980191127	есть
1997	15	980191127	сплит-система
1987	14	980191127	\r\n\r\n\r\n1.05-31.05 - 2550;\r\n1.06-30.06 - 3050;\r\n1.07-31.08 - 3550;\r\n1.09-30.09 - 3050;\r\n1.10-30.04 - 1800
1998	13	980191128	750
2000	1	980191128	1 раз в 5 дней
2001	10	980191128	есть
2002	2	980191128	есть
2003	3	980191128	спутниковое, LCD
2004	4	980191128	ежедневно
2005	5	980191128	душ, туалет
2006	6	980191128	нет
2007	8	980191128	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, раскладной диван, двустворчатый шкаф, телефон, санузел (душевая кабина, умывальник, фен, туал.принадлежности)
2008	11	980191128	есть
2009	15	980191128	сплит-система
1999	14	980191128	\r\n1.05-31.05 - 2750,доп.место-750;\r\n1.06-30.06 - 3250,доп.место-750;\r\n1.07-31.08 - 3750,доп.место-750;\r\n1.09-30.09 - 3250,доп.место-750;\r\n1.10-30.04 - 2000,доп.место-750
2010	13	980191129	750
2011	14	980191129	\r\n1.05-31.05 - 2750,доп.место-750;\r\n1.06-30.06 - 3250,доп.место-750;\r\n1.07-31.08 - 3750,доп.место-750;\r\n1.09-30.09 - 3250,доп.место-750;\r\n1.10-30.04 - 2000,доп.место-750
2012	1	980191129	1 раз в 5 дней
2013	10	980191129	есть
2014	2	980191129	есть
2015	3	980191129	спутниковое, LCD
2016	4	980191129	ежедневно
2017	5	980191129	душ, туалет
2018	6	980191129	нет
2019	8	980191129	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, раскладной диван, двустворчатый шкаф, телефон, санузел (душевая кабина, умывальник, фен, туал.принадлежности)
2020	11	980191129	есть
2021	15	980191129	сплит-система
2022	13	980191130	750
2023	14	980191130	\r\n1.05-31.05 - 4000,доп.место-750;\r\n1.06-30.06 - 4500,доп.место-750;\r\n1.07-31.08 - 5500,доп.место-750;\r\n1.09-30.09 - 4000,доп.место-750;\r\n1.10-30.04 - 3500,доп.место-750
2024	1	980191130	1 раз в 5 дней
2025	10	980191130	есть
2026	2	980191130	есть
2027	3	980191130	спутниковое, LCD
2028	4	980191130	ежедневно
2029	5	980191130	душ, туалет
2030	6	980191130	есть
2339	3	980191156	эфирное
2340	4	980191156	по требованию
2341	5	980191156	душ, туалет
2342	6	980191156	нет
2344	11	980191156	нет
2345	15	980191156	сплит-система
2550	13	980191174	
2031	8	980191130	двуспальная кровать, прикроватные тумбочки, журнальный столик, два полукресла, раскладной диван, двустворчатый шкаф, телефон, два санузла (джакузи, умывальник, фен, туал.принадлежности, халат, тапочки)
2032	11	980191130	есть
2033	15	980191130	сплит-система
2034	13	980191131	750
2035	14	980191131	\r\n1.05-31.05 - 5500,доп.место-750;\r\n1.06-30.06 - 5500,доп.место-750;\r\n1.07-31.08 - 5500,доп.место-750;\r\n1.09-30.09 - 5500,доп.место-750;\r\n1.10-30.04 - 5500,доп.место-750
2036	1	980191131	1 раз в 5 дней
2037	10	980191131	есть
2038	2	980191131	есть
2039	3	980191131	спутниковое, LCD
2040	4	980191131	ежедневно
2041	5	980191131	джакузи, туалет
2042	6	980191131	нет
2043	8	980191131	Эксклюзивное оформление интерьера. Круглая кровать, джакузи непосредственно в номере, создает романтическую атмосферу.
2044	11	980191131	есть
2045	15	980191131	сплит-система
2046	13	980191132	0
2047	14	980191132	\r\n1.06-20.06 - 900;\r\n21.06-30.06 - 1200;\r\n1.07-20.07 - 1500;\r\n21.07-31.07 - 1500;\r\n1.08-25.08 - 1500;\r\n26.08-10.09 - 1200;\r\n11.09-30.09 - 900
2048	1	980191132	1 раз в 5 дней
2049	10	980191132	на 2 номера
2050	2	980191132	нет
2051	3	980191132	спутниковое
2052	4	980191132	по требованию
2053	5	980191132	душ, туалет, на два номера
2054	6	980191132	нет
2055	8	980191132	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
2056	11	980191132	нет
2057	15	980191132	кондиционер
2058	13	980191133	Дополнительные места - бесплатно
2059	14	980191133	\r\n1.06-20.06 - 1500;\r\n21.06-30.06 - 1800;\r\n1.07-20.07 - 2200;\r\n21.07-31.07 - 2500;\r\n1.08-25.08 - 3000;\r\n26.08-10.09 - 2000;\r\n11.09-30.09 - 1500
2060	1	980191133	1 раз в 5 дней
2061	10	980191133	есть
2062	2	980191133	нет
2063	3	980191133	спутниковое
2064	4	980191133	по требованию
2065	5	980191133	душ, туалет
2066	6	980191133	есть
2067	8	980191133	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
2068	11	980191133	нет
2069	15	980191133	сплит-система, электрочайник
2070	13	980191134	Дополнительные места - бесплатно
2071	14	980191134	\r\n1.06-20.06 - 1000;\r\n21.06-30.06 - 1500;\r\n1.07-20.07 - 1800;\r\n21.07-31.07 - 2000;\r\n1.08-25.08 - 2200;\r\n26.08-10.09 - 1500;\r\n11.09-30.09 - 1000
2072	1	980191134	1 раз в 5 дней
2073	10	980191134	есть
2074	2	980191134	нет
2075	3	980191134	спутниковое
2076	4	980191134	по требованию
2077	5	980191134	душ, туалет
2078	6	980191134	нет
2079	8	980191134	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, журнальный столик, зеркало
2080	11	980191134	нет
2081	15	980191134	сплит-система, электрочайник
2082	13	980191135	0
2083	14	980191135	\r\n1.05-31.05 - 700;\r\n1.06-20.06 - 1000;\r\n21.06-15.07 - 1500;\r\n16.07-25.07 - 1900;\r\n26.07-25.08 - 2100;\r\n26.08-15.09 -1000;\r\n16.09-30.09 - 700
2084	1	980191135	1 раз в 7 дней
2085	10	980191135	есть
2086	2	980191135	нет
2087	3	980191135	НТВ+
2088	4	980191135	1 раз в 3 дня
2089	5	980191135	душ, туалет
2090	6	980191135	есть
2091	8	980191135	
2092	11	980191135	нет
2093	15	980191135	сплит-система, чайник, посуда
2094	13	980191136	0
2095	14	980191136	\r\n1.05-31.05 - 900;\r\n1.06-20.06 - 1200;\r\n21.06-15.07 - 1800;\r\n16.07-25.07 - 2100;\r\n26.07-25.08 - 2400;\r\n26.08-15.09 -1300;\r\n16.09-30.09 - 900
2096	1	980191136	1 раз в 7 дней
2097	10	980191136	есть
2098	2	980191136	нет
2099	3	980191136	НТВ+
2100	4	980191136	1 раз в 3 дня
2101	5	980191136	душ, туалет
2102	6	980191136	есть
2103	8	980191136	
2104	11	980191136	нет
2105	15	980191136	сплит-система, чайник, посуда
2106	13	980191137	0
2107	14	980191137	\r\n1.05-31.05 - 1100;\r\n1.06-20.06 - 1500;\r\n21.06-15.07 - 2100;\r\n16.07-25.07 - 2300;\r\n26.07-25.08 - 2800;\r\n26.08-15.09 -1600;\r\n16.09-30.09 - 1000
2108	1	980191137	1 раз в 7 дней
2109	10	980191137	есть
2110	2	980191137	нет
2111	3	980191137	НТВ+
2112	4	980191137	1 раз в 3 дня
2113	5	980191137	душ, туалет
2114	6	980191137	есть
2115	8	980191137	
2116	11	980191137	нет
2117	15	980191137	сплит-система, чайник, посуда
2120	1	980191138	1 раз в 6 дней
2121	10	980191138	есть
2122	2	980191138	нет
2123	3	980191138	эфирное
2124	4	980191138	1 раз в 5 дней
2125	5	980191138	душ, туалет
2126	6	980191138	есть
2127	8	980191138	
2128	11	980191138	нет
2118	13	980191138	25% стоимости номера
2129	15	980191138	вентилятор
2119	14	980191138	\r\n1.05-9.06 - 900;\r\n10.06-9.07 - 1350;\r\n10.08-20.08 - 1800;\r\n21.08-20.09 - 1500;\r\n20.09-30.09 - 900
2130	13	980191139	25% стоимости номера
2131	14	980191139	\r\n1.05-9.06 - 700;\r\n10.06-9.07 - 1100;\r\n10.08-20.08 - 1400;\r\n21.08-20.09 - 1200;\r\n20.09-30.09 - 700
2132	1	980191139	1 раз в 6 дней
2133	10	980191139	есть
2134	2	980191139	нет
2135	3	980191139	эфирное
2136	4	980191139	1 раз в 5 дней
2137	5	980191139	душ, туалет
2138	6	980191139	нет
2139	8	980191139	
2140	11	980191139	
2141	15	980191139	вентилятор
2154	13	980191141	25% стоимости номера
2155	14	980191141	\r\n1.05-9.06 - 800;\r\n10.06-9.07 - 1200;\r\n10.08-20.08 - 1600;\r\n21.08-20.09 - 1350;\r\n20.09-30.09 - 800
2156	1	980191141	1 раз в 6 дней
2157	10	980191141	есть
2158	2	980191141	нет
2159	3	980191141	эфирное
2160	4	980191141	1 раз в 5 дней
2161	5	980191141	душ, туалет
2162	6	980191141	нет
2163	8	980191141	
2164	11	980191141	нет
2165	15	980191141	кондиционер
2166	13	980191142	25% стоимости номера
2167	14	980191142	\r\n1.05-9.06 - 900;\r\n10.06-9.07 - 1300;\r\n10.08-20.08 - 1800;\r\n21.08-20.09 - 1500;\r\n20.09-30.09 - 900
2168	1	980191142	1 раз в 6 дней
2169	10	980191142	есть
2170	2	980191142	нет
2171	3	980191142	эфирное
2172	4	980191142	1 раз в 5 дней
2173	5	980191142	душ, туалет
2174	6	980191142	есть
2175	8	980191142	
2176	11	980191142	нет
2177	15	980191142	вентилятор
2178	13	980191143	25% стоимости номера
2179	14	980191143	\r\n1.05-9.06 - 1000;\r\n10.06-9.07 - 1500;\r\n10.08-20.08 - 2000;\r\n21.08-20.09 - 1700;\r\n20.09-30.09 - 1000
2180	1	980191143	1 раз в 6 дней
2181	10	980191143	есть
2182	2	980191143	нет
2183	3	980191143	эфирное
2184	4	980191143	1 раз в 5 дней
2185	5	980191143	душ, туалет
2186	6	980191143	есть
2187	8	980191143	
2188	11	980191143	нет
2189	15	980191143	кондиционер
2190	13	980191144	25% стоимости номера
2191	14	980191144	\r\n1.05-9.06 - 1600;\r\n10.06-9.07 - 2400;\r\n10.08-20.08 - 3200;\r\n21.08-20.09 - 2800;\r\n20.09-30.09 - 1600
2192	1	980191144	1 раз в 6 дней
2193	10	980191144	есть
2194	2	980191144	нет
2195	3	980191144	эфирное
2196	4	980191144	1 раз в 5 дней
2197	5	980191144	душ, туалет
2198	6	980191144	нет
2199	8	980191144	кухонная и обеденная зоны со всем оборудованием и посудой
2200	11	980191144	нет
2201	15	980191144	кондиционер
2202	13	980191145	0
2203	14	980191145	\r\nиюнь - 500;\r\nиюль - 1000;\r\nавгуст - 1000;\r\nсетябрь - 500
2204	1	980191145	1 раз в 5 дней
2205	10	980191145	есть
2206	2	980191145	нет
2207	3	980191145	эфирное
2208	4	980191145	по требованию
2209	5	980191145	душ, туалет еа два номера
2210	6	980191145	нет
2211	8	980191145	односпальные кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка
2212	11	980191145	нет
2213	15	980191145	вентилятор
2214	13	980191146	0
2215	14	980191146	\r\nиюнь - 600;\r\nиюль - 1200;\r\nавгуст - 1200;\r\nсетябрь - 500
2216	1	980191146	1 раз в 5 дней
2217	10	980191146	есть
2218	2	980191146	нет
2219	3	980191146	эфирное
2220	4	980191146	по требованию
2221	5	980191146	душ, туалет
2222	6	980191146	нет
2223	8	980191146	односпальные или двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка, зеркало, посуда
2224	11	980191146	нет
2225	15	980191146	вентилятор
2226	13	980191147	по согласованию
2227	14	980191147	\r\nиюнь - 1400;\r\nиюль - 2000;\r\nавгуст - 2000;\r\nсетябрь - 800
2228	1	980191147	1 раз в 5 дней
2229	10	980191147	есть
2230	2	980191147	нет
2231	3	980191147	эфирное
2232	4	980191147	по требованию
2233	5	980191147	душ, туалет
2234	6	980191147	нет
2235	8	980191147	односпальные и двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка, посуда
2236	11	980191147	нет
2237	15	980191147	кондиционер
2238	13	980191148	0
2239	14	980191148	\r\nиюнь - 1200;\r\nиюль - 1800;\r\nавгуст - 1800;\r\nсетябрь - 700
2240	1	980191148	1 раз в 5 дней
2241	10	980191148	есть
2242	2	980191148	нет
2243	3	980191148	эфирное
2244	4	980191148	по требованию
2245	5	980191148	душ, туалет
2246	6	980191148	нет
2247	8	980191148	односпальные и двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка
2248	11	980191148	нет
2249	15	980191148	кондиционер
2251	14	980191149	\r\nиюнь - 900;\r\nиюль - 1500;\r\nавгуст - 1500;\r\nсетябрь - 600
2252	1	980191149	1 раз в 5 дней
2253	10	980191149	есть
2254	2	980191149	нет
2255	3	980191149	эфирное
2256	4	980191149	по требованию
2257	5	980191149	душ, туалет
2258	6	980191149	есть
2259	8	980191149	односпальные или двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка, посуда
2260	11	980191149	нет
2261	15	980191149	кондиционер
2271	8	980191150	
2262	13	980191150	300
2263	14	980191150	1.05-31.05 - 700,д.м-300;\r\n1.06-20.06 - 1000,д.м-300;\r\n21.06-15.07 - 1500,д.м-300;\r\n16.07-25.07 - 1900,д.м-300;\r\n26.07-25.08 - 2000,д.м-300;\r\n26.08-31.08 - 1500,д.м-300;\r\n1.09-15.09 - 1000,д.м-300;\r\n16.09-31.10 - 700,д.м-300
2264	1	980191150	1раз в 7 дней
2265	10	980191150	есть
2266	2	980191150	нет
2267	3	980191150	эфирное
2268	4	980191150	1 раз в 3 дня
2269	5	980191150	ванна, туалет,
2270	6	980191150	есть, но не во всех номерах
2272	11	980191150	нет
2273	15	980191150	сплит-система
2274	13	980191151	0
2275	14	980191151	\r\n1.05-1.06 - 700;\r\n2.06-15.06 - 1200;\r\n16.06-30.06 - 1500;\r\n1.07-25.07 - 1800;\r\n26.07-26.08 - 2200;\r\n27.08-10.09 - 1200;\r\n11.09-30.09 - 900
2276	1	980191151	1 раз в 5 дней
2277	10	980191151	есть
2278	2	980191151	нет
2279	3	980191151	эфирное
2280	4	980191151	по требованию
2281	5	980191151	душ, туалет
2282	6	980191151	нет
2283	8	980191151	две односпальные или одна двуспальная кровать с ортопедическими матрасами, стол, стулья, платяной шкаф, зеркало, полотенца, туалетная бумага, мыло, посуда первой необходимости.
2284	11	980191151	нет
2285	15	980191151	сплит-система
2286	13	980191152	0
2287	14	980191152	\r\n1.05-1.06 - 800;\r\n2.06-15.06 - 1300;\r\n16.06-30.06 - 1600;\r\n1.07-25.07 - 1900;\r\n26.07-26.08 - 2300;\r\n27.08-10.09 - 1300;\r\n11.09-30.09 - 1000
2288	1	980191152	1 раз в 5 дней
2289	10	980191152	есть
2290	2	980191152	нет
2291	3	980191152	эфирное
2292	4	980191152	по требованию
2293	5	980191152	душ, туалет
2294	6	980191152	есть
2295	8	980191152	две односпальные или одна двуспальная кровать с ортопедическими матрасами, стол, стулья, платяной шкаф, зеркало, полотенца, туалетная бумага, мыло, посуда первой необходимости
2296	11	980191152	нет
2297	15	980191152	сплит-система
2298	13	980191153	0
2299	14	980191153	\r\n1.05-1.06 - 900;\r\n2.06-15.06 - 1400;\r\n16.06-30.06 - 1700;\r\n1.07-25.07 - 2100;\r\n26.07-26.08 - 2500;\r\n27.08-10.09 - 1400;\r\n11.09-30.09 - 1100
2300	1	980191153	1 раз в 5 дней
2301	10	980191153	есть
2302	2	980191153	нет
2303	3	980191153	эфирное
2304	4	980191153	по требованию
2305	5	980191153	душ, туалет
2306	6	980191153	нет
2307	8	980191153	три односпальные кровати с ортопедическими матрасами, либо одна двуспальная и одна односпальная, стол, стулья, платяной шкаф, зеркало, полотенца, туалетная бумага, мыло, посуда первой необходимости
2308	11	980191153	нет
2309	15	980191153	сплит-система
2310	13	980191154	0
2311	14	980191154	\r\n1.05-1.06 - 1000;\r\n2.06-15.06 - 1500;\r\n16.06-30.06 - 1800;\r\n1.07-25.07 - 2300;\r\n26.07-26.08 - 2600;\r\n27.08-10.09 - 1500;\r\n11.09-30.09 - 1200
2312	1	980191154	1 раз в 5 дней
2313	10	980191154	есть
2314	2	980191154	нет
2315	3	980191154	эфирное
2316	4	980191154	по требованию
2317	5	980191154	душ, туалет
2318	6	980191154	есть
2319	8	980191154	три односпальные кровати с ортопедическими матрасами, либо одна двуспальная и одна односпальная, стол, стулья, платяной шкаф, зеркало, полотенца, туалетная бумага, мыло, посуда первой необходимости.
2320	11	980191154	нет
2321	15	980191154	сплит-система
2322	13	980191155	0
2323	14	980191155	\r\n1.05-1.06 - 1100;\r\n2.06-15.06 - 1600;\r\n16.06-30.06 - 2000;\r\n1.07-25.07 - 2400;\r\n26.07-26.08 - 2700;\r\n27.08-10.09 - 1600;\r\n11.09-30.09 - 1400
2324	1	980191155	1 раз в 5 дней
2325	10	980191155	есть
2326	2	980191155	нет
2327	3	980191155	эфирное
2328	4	980191155	по требованию
2329	5	980191155	душ, туалет
2330	6	980191155	есть
2331	8	980191155	широкая двуспальная кровать, широкий раскладной диван, стол, стулья, платяной шкаф, зеркало, полотенца, туалетная бумага, мыло, посуда первой необходимости
2332	11	980191155	нет
2333	15	980191155	сплит-система
2334	13	980191156	0
2335	14	980191156	\r\n1.05-1.06 - 1500;\r\n2.06-15.06 - 2000;\r\n16.06-30.06 - 2600;\r\n1.07-25.07 - 3800;\r\n26.07-26.08 - 4800;\r\n27.08-10.09 - 2200;\r\n11.09-30.09 - 2000
2336	1	980191156	1 раз в 5 дней
2337	10	980191156	есть
2338	2	980191156	нет
2358	13	980191158	0
2343	8	980191156	в одной комнате – три односпальные кровати с ортопедическими матрасами, во второй комнате – одна двуспальная и одна односпальная кровати, в каждой комнате - стол, стулья, платяной шкаф, зеркало, полотенца, мыло, посуда, телевизор в каждой комнате.
2346	13	980191157	0
2347	14	980191157	\r\n1.05-1.06 - 1100;\r\n2.06-15.06 - 1600;\r\n16.06-30.06 - 2000;\r\n1.07-25.07 - 2400;\r\n26.07-26.08 - 2700;\r\n27.08-10.09 - 1600;\r\n11.09-30.09 - 1400
2348	1	980191157	1 раз в 5 дней
2349	10	980191157	есть
2350	2	980191157	нет
2351	3	980191157	эфирное
2352	4	980191157	по требованию
2353	5	980191157	душ, туалет
2354	6	980191157	есть
2355	8	980191157	в одной комнате – три односпальные кровати с ортопедическими матрасами, во второй комнате – одна двуспальная и одна односпальная кровати, в каждой комнате - стол, стулья, платяной шкаф, зеркало, полотенца, мыло, посуда, телевизор в каждой комнате.
2356	11	980191157	нет
2357	15	980191157	сплит-система
2370	13	980191159	
2371	14	980191159	1.05-31.05 - 1000\r\n1.06-30.06 - 1200\r\n1.06-31.08 - 1700\r\n1.09-30.09 - 1200
2372	1	980191159	раз в 5 дней
2373	10	980191159	в номере
2374	2	980191159	нет
2375	3	980191159	эфирное
2376	4	980191159	ежедневно
2377	5	980191159	душ, раковина, туалет
2378	6	980191159	нет
2379	8	980191159	кондиционер
2380	11	980191159	нет
2381	15	980191159	
2418	13	980191163	400
2419	14	980191163	15.05-14.06 - 1000\r\n15.06-29.06 - 1300\r\n30.06-14.07 - 2000\r\n15.07-25.08 - 2500\r\n26.08-15.09 - 1600\r\n16.09-30.09  - 900
2420	1	980191163	раз в 5 дней, смена полотенец - через день
2421	10	980191163	в номере
2422	2	980191163	нет
2423	3	980191163	эфирное
2424	4	980191163	ежедневно
2425	5	980191163	душ, раковина, туалет
2426	6	980191163	на номер
2428	11	980191163	нет
2429	15	980191163	двуспальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2430	13	980191164	400
2431	14	980191164	15.05-14.06 - 900\r\n15.06-29.06 - 1200\r\n30.06-14.07 - 1800\r\n15.07-25.08 - 2300\r\n26.08-15.09 - 1400\r\n16.09-30.09  - 800
2432	1	980191164	раз в 5 дней, смена полотенец - через день
2433	10	980191164	в номере
2434	2	980191164	нет
2435	3	980191164	эфирное
2436	4	980191164	ежедневно
2437	5	980191164	душ, раковина, туалет
2438	6	980191164	нет
2440	11	980191164	нет
2441	15	980191164	двуспальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2442	13	980191165	400
2443	14	980191165	15.05-14.06 - 800\r\n15.06-29.06 - 1100\r\n30.06-14.07 - 1600\r\n15.07-25.08 - 2000\r\n26.08-15.09 - 1200\r\n16.09-30.09  - 700
2444	1	980191165	раз в 5 дней, смена полотенец - через день
2445	10	980191165	в номере
2446	2	980191165	нет
2447	3	980191165	эфирное
2448	4	980191165	ежедневно
2449	5	980191165	душ, раковина, туалет
2450	6	980191165	нет
2452	11	980191165	нет
2453	15	980191165	двуспальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2454	13	980191166	
2455	14	980191166	15.05-14.06 - 1400\r\n15.06-29.06 - 1600\r\n30.06-14.07 - 2500\r\n15.07-25.08 - 2700\r\n26.08-15.09 - 1700\r\n16.09-30.09  - 1100
2456	1	980191166	раз в 5 дней, смена полотенец - через день
2457	10	980191166	в номере
2458	2	980191166	нет
2459	3	980191166	эфирное
2460	4	980191166	ежедневно
2461	5	980191166	душ, раковина, тупалет
2462	6	980191166	на номер
2464	11	980191166	нет
2465	15	980191166	двуспальная + односпальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2466	13	980191167	
2467	14	980191167	15.05-14.06 - 1200\r\n15.06-29.06 - 1500\r\n30.06-14.07 - 2200\r\n15.07-25.08 - 2500\r\n26.08-15.09 - 1600\r\n16.09-30.09  - 1000
2468	1	980191167	раз в 5 дней, смена полотенец - через день
2469	10	980191167	в номере
2470	2	980191167	нет
2471	3	980191167	эфирное
2472	4	980191167	ежедневно
2473	5	980191167	душ, раковина, туалет
2474	6	980191167	нет
2476	11	980191167	нет
2427	8	980191163	Сплит-система, интернет
2439	8	980191164	Сплит-система, интернет
2546	6	980191173	нет
2547	8	980191173	Вентилятор, набор туалетных принадлежностей 
2548	11	980191173	нет
2549	15	980191173	Кровати, шкаф, зеркало, тумбочка
2359	14	980191158	\r\n1.05-1.06 - 3000;\r\n2.06-15.06 - 4000;\r\n16.06-30.06 - 5000;\r\n1.07-25.07 - 5000;\r\n26.07-26.08 - 5000;\r\n27.08-10.09 - 3000;\r\n11.09-30.09 - 3000
2360	1	980191158	1 раз в 5 дней
2361	10	980191158	есть
2362	2	980191158	мини-бар (соки, мин. вода, пиво, вино, конфеты, фрукты )
2363	3	980191158	эфирное, большой экран
2364	4	980191158	по требованию
2365	5	980191158	душ, туалет, душ "Шарко"
2366	6	980191158	есть
2367	8	980191158	расположен на 5-м этаже, деревянная двуспальная кровать, 2 балкона ( с видом на фасад и на море ). платяной шкаф, туалетный столик, комод, мягкий уголок, тумбочки, стол, стулья, эл. чайник, полотенца. 
2368	11	980191158	нет
2369	15	980191158	Барная стойка, посуда первой необходимости. Обслуживание в номер. Сплит-система
2382	13	980191160	
2383	14	980191160	1.05-31.05 - 1350\r\n1.06-30.06 - 1550\r\n1.06-31.08 - 1950\r\n1.09-30.09 - 1550
2384	1	980191160	раз в 5 дней
2385	10	980191160	в номере
2386	2	980191160	нет
2387	3	980191160	эфирное
2388	4	980191160	ежедневно
2389	5	980191160	душ, раковина, туалет
2390	6	980191160	нет
2391	8	980191160	кондиционер
2392	11	980191160	нет
2393	15	980191160	
2394	13	980191161	
2395	14	980191161	1.05-31.09 - 2500
2396	1	980191161	раз в 5 дней
2397	10	980191161	в номере
2398	2	980191161	нет
2399	3	980191161	эфирное
2400	4	980191161	ежедневно
2401	5	980191161	душ, раковина, туалет
2402	6	980191161	нет
2403	8	980191161	кондиционер
2404	11	980191161	нет
2405	15	980191161	
2406	13	980191162	
2407	14	980191162	1.05-31.05 - 1300\r\n1.06-30.06 - 1500\r\n1.06-31.08 - 1700\r\n1.09-30.09 - 1500
2408	1	980191162	раз в 5 дней
2409	10	980191162	в номере
2410	2	980191162	нет
2411	3	980191162	эфирное
2412	4	980191162	ежедневно
2413	5	980191162	душ, раковина, туалет
2414	6	980191162	нет
2415	8	980191162	кондиционер
2416	11	980191162	нет
2417	15	980191162	
2477	15	980191167	двуспальная + односпальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2478	13	980191168	
2479	14	980191168	15.05-14.06 - 1100\r\n15.06-29.06 - 1300\r\n30.06-14.07 - 2000\r\n15.07-25.08 - 2300\r\n26.08-15.09 - 1500\r\n16.09-30.09  - 900
2480	1	980191168	раз в 5 дней, смена полотенец - через день
2481	10	980191168	в номере
2482	2	980191168	нет
2483	3	980191168	эфирное
2484	4	980191168	ежедневно
2485	5	980191168	душ, раковина, туалет
2486	6	980191168	нет
2488	11	980191168	нет
2489	15	980191168	двуспальная + односпальная кровать, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2490	13	980191169	400
2491	14	980191169	15.05-14.06 - 1500\r\n15.06-29.06 - 1800\r\n30.06-14.07 - 2600\r\n15.07-25.08 - 3200\r\n26.08-15.09 - 1800\r\n16.09-30.09  - 1300
2492	1	980191169	раз в 5 дней, смена полотенец - через день
2493	10	980191169	в номере
2494	2	980191169	нет
2495	3	980191169	эфирное
2496	4	980191169	ежедневно
2497	5	980191169	душ, раковина, туалет
2498	6	980191169	нет
2500	11	980191169	нет
2501	15	980191169	двуспальная кровать + диван “книжка”, прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2451	8	980191165	Сплит-система, интернет
2463	8	980191166	Сплит-система, интернет
2475	8	980191167	Сплит-система, интернет
2487	8	980191168	Сплит-система, интернет
2499	8	980191169	Сплит-система, интернет
2502	13	980191170	
2503	14	980191170	15.05-14.06 - 1800\r\n15.06-29.06 - 2300\r\n30.06-14.07 - 3000\r\n15.07-25.08 - 4500\r\n26.08-15.09 - 2300\r\n16.09-30.09  - 1800
2504	1	980191170	раз в 5 дней, смена полотенец - через день
2505	10	980191170	в номере
2506	2	980191170	нет
2507	3	980191170	эфирное
2508	4	980191170	ежедневно
2509	5	980191170	душ, раковина, туалет
2510	6	980191170	нет
2511	8	980191170	Сплит-система, интернет
2512	11	980191170	нет
2513	15	980191170	В гостиной два кресла, диван-раскладушка; в спальне двуспальная + односпальная кровать; прикроватные тумбочки, платяной шкаф, зеркало, журнальный столик, туалетный столик, обувница, вешалка, стулья, полы застелены ковролином
2514	13	980191171	1500
2515	14	980191171	\t                 ВВ\tНВ\r\n01.05.-31.05.\t3500\t4500\r\n01.06.-20.06.\t4500\t5500\r\n21.06.-30.06.\t5000\t6000\r\n01.07.-15.07.\t6000\t7000\r\n16.07.-25.08.\t6000\t7000\r\n26.08.-30.09.\t5000\t6000\r\n01.10.-15.10.\t3500\t4500
2516	1	980191171	раз в 3 дня 
2517	10	980191171	в номере
2518	2	980191171	в номере
2519	3	980191171	кабельное 
2520	4	980191171	ежедневно
2521	5	980191171	душ, раковина, туалет
2522	6	980191171	на втором этаже балкон с видом на море
2523	8	980191171	Сплит система Телефон Туалетные принадлежности Халаты Комплект банных полотенец Пляжные полотенца Приспособление для сушки одежды Детская кроватка ,(по заезду при наличии)
2524	11	980191171	нет
2525	15	980191171	Одна двуспальная кровать,  одно дополнительное место в виде кресла-кровати. На первом этаже перед каждым номером стоит удобная мебель из искусственного ротанга.
2527	14	980191172	\t                    ВВ\t    НВ\r\n01.05.-15.09.\t15000\t18000\r\n16.09.2012-30.04.2013\t7000\t-
2534	6	980191172	 балкон с видом на пляж,  а также замечательная  огороженная  двадцати метровая терраса на первом этаже
2526	13	980191172	 скидка 30%  от стоимости основного места
2531	3	980191172	кабельное
2532	4	980191172	ежедневно
2535	8	980191172	Сплит система Телефон Туалетные принадлежности Халаты Комплект банных полотенец Пляжные полотенца Приспособление для сушки одежды Детская кроватка ,(по заезду при наличии)
2537	15	980191172	Две спальни, гостиная с мягкой мебелью и телевизором, оборудованная  мини кухня. В каждой из спален: двуспальная кровать, прикроватные тумбочки, телевизор,  шкаф, зеркало, туалетный столик.
2528	1	980191172	раз
2529	10	980191172	в номере
2530	2	980191172	в номере
2533	5	980191172	душ, раковина, туалет
2536	11	980191172	нет
2538	13	980191173	
2539	14	980191173	01.06-14.06 - 1500\r\n15.06-30.06 - 1800\r\n01.07-31.08 - 2250\r\n01.09-15.09 - 1950\r\n16.09-30.09 - 1800
2540	1	980191173	
2541	10	980191173	в номере
2542	2	980191173	нет
2543	3	980191173	эфирное
2544	4	980191173	ежедневно
2545	5	980191173	душ, раковина, туалет
2552	1	980191174	
2551	14	980191174	01.06-14.06 - 1100\r\n15.06-30.06 - 1300\r\n01.07-31.08 - 1600\r\n01.09-15.09 - 1400\r\n16.09-30.09 - 1300
2553	10	980191174	в номере
2554	2	980191174	нет
2555	3	980191174	эфирное
2556	4	980191174	ежедневно
2557	5	980191174	душ, раковина, туалет
2558	6	980191174	нет
2559	8	980191174	Вентилятор, набор туалетных принадлежностей 
2560	11	980191174	нет
2561	15	980191174	Кровати, шкаф, зеркало, тумбочка, для доп. места предлагается кресло-кровать
2562	13	980191175	
2563	14	980191175	01.06-14.06 - 750\r\n15.06-30.06 - 850\r\n01.07-31.08 - 900\r\n01.09-15.09 - 850\r\n16.09-30.09 - 750
2564	1	980191175	
2565	10	980191175	в номере
2566	2	980191175	нет
2567	3	980191175	эфирное
2568	4	980191175	ежедневно
2569	5	980191175	душ, раковина, туалет
2570	6	980191175	нет
2571	8	980191175	Вентилятор, набор туалетных принадлежностей 
2572	11	980191175	нет
2573	15	980191175	Кровать, шкаф, зеркало, тумбочка
2574	13	980191176	
2575	14	980191176	01.06-10.06 - 1000\r\n11.06-30.06 - 1400\r\n01.07-15.07 - 1800\r\n16.07-25.08 - 2000\r\n26.08-15.09 - 1100\r\n16.09-30.09 - 900\r\n
2576	1	980191176	
2577	10	980191176	в номере
2578	2	980191176	нет
2579	3	980191176	эфирное
2580	4	980191176	
2581	5	980191176	душ, раковина, туалет
2582	6	980191176	на номер
2583	8	980191176	Сплит-система
2584	11	980191176	нет
2585	15	980191176	Двуспальная или односпальные кровати
2586	13	980191177	
2587	14	980191177	01.06-10.06 - 1100\r\n11.06-30.06 - 1600\r\n01.07-15.07 - 2400\r\n16.07-25.08 - 2400\r\n26.08-15.09 - 1200\r\n16.09-30.09 - 1000\r\n
2588	1	980191177	
2589	10	980191177	в номере
2590	2	980191177	нет
2591	3	980191177	жк-телевизор, эфирное
2592	4	980191177	
2593	5	980191177	душ, раковина, туалет
2594	6	980191177	просторный балкон на фасадной части гостиницы
2595	8	980191177	Сплит-система
2596	11	980191177	нет
2597	15	980191177	Двуспальная кровать
2598	13	980191178	
2599	14	980191178	01.06-10.06 - 1300\r\n11.06-30.06 - 1800\r\n01.07-25.08 - 2700\r\n26.08-15.09 - 1400\r\n16.09-30.09 - 1200\r\n
2600	1	980191178	
2601	10	980191178	в номере
2602	2	980191178	нет
2603	3	980191178	жк-телевизор, эфирное
2604	4	980191178	
2605	5	980191178	душ, раковина, туалет
2606	6	980191178	два балкона – на фасадную часть и во двор.
2607	8	980191178	Сплит-ситстема
2608	11	980191178	нет
2609	15	980191178	Кровати; диван и кресла
2610	13	980191179	
2611	14	980191179	01.06-10.06 - 1600\r\n11.06-30.06 - 2500\r\n01.07-25.08 - 3200\r\n26.08-15.09 - 2000\r\n16.09-30.09 - 1500
2612	1	980191179	
2613	10	980191179	в номере
2614	2	980191179	нет
2615	3	980191179	жк-телевизор, эфирное
2616	4	980191179	
2617	5	980191179	душ, раковина, туалет
2618	6	980191179	два балкона – на фасадную часть и во двор.
2619	8	980191179	Сплит-система
2620	11	980191179	нет
2621	15	980191179	кровати; диван и кресла
2624	1	980191180	
2628	4	980191180	ежедневно
2633	15	980191180	
2706	13	980191187	
2622	13	980191180	360-680
2623	14	980191180	01.06-15.06 - 1800\r\n16.06-30.06 - 2200\r\n01.07-15.07 - 2600\r\n16.07-31.07 - 3000\r\n01.08-25.08 - 3400\r\n26.08-15.09 - 2200\r\n16.09-30.09 - 1800
2625	10	980191180	в номере
2626	2	980191180	нет
2627	3	980191180	эфирное
2629	5	980191180	душ, раковина, туалет
2630	6	980191180	на номер
2631	8	980191180	Кондиционер
2632	11	980191180	нет
2634	13	980191181	480-900
2635	14	980191181	01.06-15.06 - 2400\r\n16.06-30.06 - 3000\r\n01.07-15.07 - 3600\r\n16.07-31.07 - 4200\r\n01.08-25.08 - 4500\r\n26.08-15.09 - 3000\r\n16.09-30.09 - 2400
2636	1	980191181	
2637	10	980191181	в номере
2638	2	980191181	нет
2639	3	980191181	эфирное
2640	4	980191181	ежедневно
2641	5	980191181	душ, раковина, туалет
2642	6	980191181	на номер
2643	8	980191181	
2644	11	980191181	нет
2645	15	980191181	
2646	13	980191182	480-840
2647	14	980191182	01.06-15.06 - 3200\r\n16.06-30.06 - 4000\r\n01.07-15.07 - 4800\r\n16.07-31.07 - 5200\r\n01.08-25.08 - 5600\r\n26.08-15.09 - 3600\r\n16.09-30.09 - 3200
2648	1	980191182	
2649	10	980191182	в номере
2650	2	980191182	нет
2651	3	980191182	эфирное
2652	4	980191182	ежедневно
2653	5	980191182	душ, раковина, туалет
2654	6	980191182	на номер
2655	8	980191182	
2656	11	980191182	нет
2657	15	980191182	
2658	13	980191183	
2659	14	980191183	01.05-15.06 - 800\r\n16.06-30.06 - 900\r\n01.07-25.07 - 1250\r\n26.07-26.08 - 1500\r\n27.08-10.09 - 750\r\n11.09-30.09 - 700
2660	1	980191183	раз в 5 дней 
2661	10	980191183	в номере
2662	2	980191183	нет
2663	3	980191183	эфирное
2664	4	980191183	по запросу
2665	5	980191183	душ, раковина, туалет
2666	6	980191183	нет
2667	8	980191183	Сплит-система
2668	11	980191183	нет
2669	15	980191183	двуспальная или две односпальные кровати, платяной шкаф, прикроватные тумбочки, стол, стулья
2671	14	980191184	01.05-15.06 - 900\r\n16.06-30.06 - 1200\r\n01.07-25.07 - 1400\r\n26.07-26.08 - 1650\r\n27.08-10.09 - 850\r\n11.09-30.09 - 800
2672	1	980191184	раз в 5 дней
2673	10	980191184	в номере
2674	2	980191184	нет
2675	3	980191184	эфирное
2676	4	980191184	по требованию
2677	5	980191184	душ, раковина, туалет
2678	6	980191184	нет
2679	8	980191184	сплит-система
2680	11	980191184	нет
2681	15	980191184	три односпальные или одна двуспальная + односпальная кровати, платяной шкаф, прикроватные тумбочки, стол, стулья
2670	13	980191184	200
2682	13	980191185	200
2683	14	980191185	01.05-15.06 - 1200\r\n16.06-30.06 - 1300\r\n01.07-25.07 - 1900\r\n26.07-26.08 - 1950\r\n27.08-10.09 - 1250\r\n11.09-30.09 - 1125
2684	1	980191185	раз в 5 дней
2685	10	980191185	в номере
2686	2	980191185	нет
2687	3	980191185	эфирное
2688	4	980191185	по требованию
2689	5	980191185	душ, раковина, туалет
2690	6	980191185	нет
2691	8	980191185	Сплит-ситстема
2692	11	980191185	нет
2693	15	980191185	четыре односпальные кровати, платяной шкаф, прикроватные тумбочки, стол, стулья
2694	13	980191186	
2695	14	980191186	Тип питания: Завтрак\r\n15.06. - 20.06.\t 1200\r\n 21.06. - 30.06.\t 1400\r\n 01.07. - 15.07.\t 1650\r\n 16.07. - 25.08.\t 1800\r\n 26.08. - 30.09.\t 1400\r\n 01.10. - 15.10.\t 900\r\n\r\n
2696	1	980191186	смена полотенец - ежедневно
2697	10	980191186	в номере
2698	2	980191186	нет
2699	3	980191186	эфирное
2700	4	980191186	раз в 3 дня
2701	5	980191186	душ, раковина, туалет
2702	6	980191186	нет
2703	8	980191186	 кондиционер
2704	11	980191186	в номере
2705	15	980191186	односпальная кровать, платяной шкаф,\r\n телефон, туалетные принадлежности, фен, комплект банных полотенец, пляжные полотенца, приспособление для сушки одежды.
2707	14	980191187	Тип питания: Завтрак\r\n15.06. - 20.06.\t 2200\r\n 21.06. - 30.06.\t 2800\r\n 01.07. - 15.07.\t 3300\r\n 16.07. - 25.08.\t 3600\r\n 26.08. - 30.09.\t 2800\r\n 01.10. - 15.10.\t 1800\r\n
2708	1	980191187	смена полотенец - ежедневно
2709	10	980191187	в номере
2710	2	980191187	нет
2711	3	980191187	эфирное
2712	4	980191187	раз в 3 дня
2713	5	980191187	ванна, раковина, туалет
2714	6	980191187	на номер
2715	8	980191187	Сплит-система
2716	11	980191187	в номере
2786	6	980191193	на номер
2787	8	980191193	Сплит-система, фен, интернет
2788	11	980191193	нет
2789	15	980191193	двуспальная кровать, два кресло-кровати, шкаф-купе, прикроватные тумбочки, туалетный столик с зеркалом, журнальный столик, пуфик, на балконе – стол, стулья
2790	13	980191194	
2717	15	980191187	туалетные принадлежности, фен, одна двуспальная либо две односпальные кровати, дополнительное место
2718	13	980191188	
2719	14	980191188	Тип питания: Завтрак\r\n15.06. - 20.06.\t 2400\r\n 21.06. - 30.06.\t 2800\r\n 01.07. - 15.07.\t 3300\r\n 16.07. - 25.08.\t 3600\r\n 26.08. - 30.09.\t 2800\r\n 01.10. - 15.10.\t 1800\r\n
2720	1	980191188	смена полотенец - ежедневно
2721	10	980191188	в номере
2747	3	980191190	эфирное (ЖК телевизор)
2722	2	980191188	нет
2723	3	980191188	эфирное
2724	4	980191188	раз в 3 дня
2725	5	980191188	душ, раковина, туалет
2726	6	980191188	нет
2727	8	980191188	Сплит-система
2728	11	980191188	в номере
2729	15	980191188	В этом номере объединены два стандартных номера, с единым сан. узлом, для большой семьи или большой компании. Оплата берется как за стандартный номер, остальные места рассчитываются по прейскуранту, как за дополнительное место. Комнаты изолированные.
2730	13	980191189	
2731	14	980191189	Тип питания: Завтрак\r\n15.06. - 20.06.\t 3500\r\n 21.06. - 30.06.\t 3800\r\n 01.07. - 15.07.\t 4200\r\n 16.07. - 25.08.\t 4500\r\n 26.08. - 30.09.\t 3800\r\n 01.10. - 15.10.\t 2800\r\n
2732	1	980191189	смена полотенец - ежедневно
2733	10	980191189	в номере
2734	2	980191189	нет
2735	3	980191189	плазменный телевизор, эфирное
2736	4	980191189	раз в 3 дня
2737	5	980191189	ванна, раковина, туалет
2738	6	980191189	на номер
2739	8	980191189	Сплит-система
2740	11	980191189	в номере
2741	15	980191189	Просторный номер включает в себя гостиную с мягкой мебелью, спальню, большую ванную комнату, туалетными принадлежностями, халатом и тапочками.\r\nВ спальне - двуспальная кровать, вместительный шкаф, зеркало, туалетный столик. Два дополнительных места.
2742	13	980191190	
2743	14	980191190	01.05.-31.05   1100\r\n01.06.-20.06   1600\r\n21.06.-30.06    2000\r\n01.07.-20.07    2600\r\n21.07.-24.08    3000\r\n25.08.-25.09    2000
2744	1	980191190	раз в 5 дней 
2745	10	980191190	в номере
2746	2	980191190	нет
2748	4	980191190	по требованию
2749	5	980191190	душ, раковина, туалет
2750	6	980191190	на номер
2752	11	980191190	нет
2753	15	980191190	двуспальная или две односпальные кровати, шкаф-купе, прикроватные тумбочки, туалетный столик с зеркалом, журнальный столик, пуфик, на балконе – стол, стулья
2754	13	980191191	
2755	14	980191191	01.05.-31.05   1300\r\n01.06.-20.06   1800\r\n21.06.-30.06    2300\r\n01.07.-20.07    2800\r\n21.07.-24.08    3200\r\n25.08.-25.09    2200
2756	1	980191191	раз в 5 дней
2757	10	980191191	в номере
2758	2	980191191	нет
2760	4	980191191	по требованию
2761	5	980191191	душ, раковина, туалет
2762	6	980191191	на номер
2764	11	980191191	нет
2765	15	980191191	двуспальная или две односпальные кровати, шкаф-купе, прикроватные тумбочки, туалетный столик с зеркалом, журнальный столик, пуфик, на балконе – стол, стулья
2751	8	980191190	Сплит-система, фен, интернет
2763	8	980191191	Сплит-система, фен, интернет
2766	13	980191192	
2767	14	980191192	01.05.-31.05   1500\r\n01.06.-20.06   2000\r\n21.06.-30.06    2500\r\n01.07.-20.07    3000\r\n21.07.-24.08    3400\r\n25.08.-25.09    2400
2768	1	980191192	раз в 5 дней
2769	10	980191192	в номере
2770	2	980191192	нет
2773	5	980191192	душ, раковина, туалет
2774	6	980191192	на номер
2775	8	980191192	Сплит-система, фен, интернет
2776	11	980191192	нет
2777	15	980191192	двуспальная кровать, кресло-кровать, шкаф-купе, прикроватные тумбочки, туалетный столик с зеркалом, журнальный столик, пуфик, на балконе – стол, стулья
2778	13	980191193	
2779	14	980191193	01.05.-31.05   1400\r\n01.06.-20.06   2300\r\n21.06.-30.06    2600\r\n01.07.-20.07    3300\r\n21.07.-24.08    3500\r\n25.08.-25.09    2300
2780	1	980191193	раз в 5 дней
2781	10	980191193	в номере
2782	2	980191193	нет
2784	4	980191193	по требовавнию
2785	5	980191193	душ, раковина, туалет
2759	3	980191191	эфирное (ЖК-телевизор)
2783	3	980191193	эфирное (ЖК телевизор)
2771	3	980191192	эфирное (ЖК телевизор)
2772	4	980191192	по требованию
2791	14	980191194	01.05.-31.05   1600\r\n01.06.-20.06   2500\r\n21.06.-30.06    2800\r\n01.07.-20.07    3500\r\n21.07.-24.08    3700\r\n25.08.-25.09    2500
2792	1	980191194	раз в 5 дней
2793	10	980191194	в номере
2794	2	980191194	нет
2796	4	980191194	по требованию
2797	5	980191194	душ, раковина, туалет
2798	6	980191194	на номер
2799	8	980191194	Сплит-система, фен, интернет
2800	11	980191194	нет
2801	15	980191194	двуспальная кровать, два кресло-кровати, шкаф-купе, прикроватные тумбочки, туалетный столик с зеркалом, журнальный столик, пуфик, на балконе – стол, стулья
2802	13	980191195	
2803	14	980191195	01.05.-31.05   2500\r\n01.06.-20.06   3500\r\n21.06.-30.06    3800\r\n01.07.-20.07    5500\r\n21.07.-24.08    5500\r\n25.08.-25.09    3500
2804	1	980191195	раз в 5 дней
2805	10	980191195	в номере
2806	2	980191195	нет
2808	4	980191195	по требованию
2809	5	980191195	душ, раковина, туалет
2810	6	980191195	на номер
2811	8	980191195	Сплит-система, фен, интернет
2812	11	980191195	нет
2813	15	980191195	спальня – двуспальная кровать, гостиная – двуспальный диван, кресло-кровать
2814	13	980191196	
2815	14	980191196	01.05-31.05  800\r\n01.06-31.08  1000\r\n01.09-30.09   800\r\n01.10-30.04   600
2816	1	980191196	раз в 7 дней
2817	10	980191196	в номере
2818	2	980191196	нет
2819	3	980191196	эфирное
2820	4	980191196	по требованию
2821	5	980191196	душ, раковина, туалет
2822	6	980191196	нет
2823	8	980191196	кондиционер 
2824	11	980191196	нет
2825	15	980191196	односпальные кровати, шкаф, прикроватные тумбочки, кресло, журнальный столик
2826	13	980191197	
2827	14	980191197	01.05-31.05  900\r\n01.06-31.08  1500\r\n01.09-30.09   900\r\n01.10-30.04   900
2828	1	980191197	раз в 7 дней
2829	10	980191197	в номере
2830	2	980191197	нет
2832	4	980191197	по требованию
2833	5	980191197	душ, раковина, туалет
2834	6	980191197	нет
2835	8	980191197	Кондиционер
2836	11	980191197	нет
2837	15	980191197	односпальные кровати, шкаф, прикроватные тумбочки, кресло-кровать
2838	13	980191198	
2839	14	980191198	01.05-31.05  1200\r\n01.06-31.08  2000\r\n01.09-30.09   1200\r\n01.10-30.04   1000
2840	1	980191198	раз в 7 дней
2841	10	980191198	в номере
2842	2	980191198	нет
2844	4	980191198	по требованию
2845	5	980191198	душ, раковина, туалет
2846	6	980191198	нет
2847	8	980191198	кондиционер
2848	11	980191198	нет
2849	15	980191198	две односпальные кровати, двухъярусная кровать, шкаф, прикроватные тумбочки, журнальный столик
2831	3	980191197	эфирное
2843	3	980191198	эфирное
2850	13	980191199	500
2851	14	980191199	01.05-31.05  1200\r\n01.06-31.08  2000\r\n01.09-30.09   1500\r\n01.10-30.04   1000
2852	1	980191199	раз в 7 дней
2853	10	980191199	в номере
2854	2	980191199	нет
2855	3	980191199	эфирное
2856	4	980191199	по требованию
2857	5	980191199	душ, раковина, туалет
2858	6	980191199	нет
2859	8	980191199	кондиционер
2860	11	980191199	нет
2861	15	980191199	односпальные кровати, шкаф, прикроватные тумбочки, мягкая мебель
2862	13	980191200	
2863	14	980191200	01.06-14.06    1000\r\n15.06-30.06    1500\r\n01.07-14.07    1800\r\n15.07-25.08    2200\r\n26.08-15.09    1400\r\n16.09-25.09    1000
2864	1	980191200	раз в 5 дней или  по требованию
2865	10	980191200	в номере
2866	2	980191200	нет
2867	3	980191200	эфирное
2868	4	980191200	ежедневно
2869	5	980191200	ванна, раковина, туалет
2870	6	980191200	на номер
2871	8	980191200	сплит-система
2872	11	980191200	нет
2873	15	980191200	двуспальные или односпальные кровати, тумбочки, платяной шкаф
2874	13	980191201	
2875	14	980191201	01.06-14.06    1500\r\n15.06-30.06    1800\r\n01.07-14.07    2200\r\n15.07-25.08    2600\r\n26.08-15.09    1600\r\n16.09-25.09    1200
2876	1	980191201	раз в 5 дней или  по требованию
2877	10	980191201	в номере
2878	2	980191201	нет
2879	3	980191201	эфирное
2880	4	980191201	ежедневно
2881	5	980191201	ванна, раковина, туалет
2882	6	980191201	на номер
2883	8	980191201	сплит-система
2884	11	980191201	нет
2885	15	980191201	двуспальная  и односпальная кровати, тумбочки, платяной шкаф
2886	13	980191202	
2887	14	980191202	01.06-14.06    2000\r\n15.06-30.06    3000\r\n01.07-14.07    3500\r\n15.07-25.08    4000\r\n26.08-15.09    2600\r\n16.09-25.09    1800
2888	1	980191202	раз в 5 дней или  по требованию
2898	13	980191203	
3202	2	980191228	нет
3203	3	980191228	эфирное
2889	10	980191202	в номере
2890	2	980191202	нет
2891	3	980191202	эфирное
2892	4	980191202	ежедневно
2893	5	980191202	ванна, раковина, туалет
2894	6	980191202	нет
2895	8	980191202	сплит-система
2896	11	980191202	нет
2897	15	980191202	смежными комнаты, каждая из которых закрывается и имеет свой вход из небольшого коридорчика. В каждой комнате две односпальные или одна двуспальная кровати, прикроватные тумбочки, шкаф для одежды
2899	14	980191203	01.06-14.06    1600\r\n15.06-30.06    2000\r\n01.07-14.07    2400\r\n15.07-25.08    2600\r\n26.08-15.09    1600\r\n16.09-25.09    1600
2900	1	980191203	раз в 5 дней или  по требованию
2901	10	980191203	в номере
2902	2	980191203	нет
2903	3	980191203	эфирное
2904	4	980191203	ежедневно
2905	5	980191203	ванна, раковина, туалет
2906	6	980191203	нет
2907	8	980191203	сплит-система
2908	11	980191203	нет
2909	15	980191203	две односпальные или одна двуспальная кровати, прикроватные тумбочки, шкаф для одежды
2910	13	980191204	
2911	14	980191204	01.06-20.06   1000\r\n21.06-10.07   1300\r\n11.07-25.08   1600\r\n26.08-10.09   1300\r\n11.09-10.10   1000
2912	1	980191204	раз в 4 дня
2913	10	980191204	в номере
2914	2	980191204	нет
2915	3	980191204	эфирное
2916	4	980191204	ежедневно
2917	5	980191204	душ, раковина, туалет
2918	6	980191204	на номер
2919	8	980191204	Сплит-система, набор посуды
2920	11	980191204	нет
2921	15	980191204	двуспальная или две полутороспальные кровати, платяной шкаф, прикроватные тумбочки, вешалка для одежды, обувница, на балконе – стол, стулья
2922	13	980191205	
2923	14	980191205	01.06-20.06   1500\r\n21.06-10.07   1900\r\n11.07-25.08   2400\r\n26.08-10.09   1900\r\n11.09-10.10   1500
2924	1	980191205	раз в 4 дня
2925	10	980191205	в номере
2926	2	980191205	нет
2927	3	980191205	эфирное
2928	4	980191205	ежедневно
2929	5	980191205	душ, раковина, туалет
2930	6	980191205	на номер
2931	8	980191205	Сплит-система, набор посуды
2932	11	980191205	нет
2933	15	980191205	двуспальная + полутороспальная или три полутороспальные кровати, платяной шкаф, прикроватные тумбочки, вешалка для одежды, обувница, на балконе – стол, стулья
2934	13	980191206	
2935	14	980191206	01.06-20.06   2000\r\n21.06-10.07   2500\r\n11.07-25.08   3000\r\n26.08-10.09   2500\r\n11.09-10.10   2000
2936	1	980191206	раз в 4 дня
2937	10	980191206	в номере
2938	2	980191206	нет
2939	3	980191206	эфирное
2940	4	980191206	ежедневно
2941	5	980191206	душ, раковина, туалет
2942	6	980191206	на номер
2943	8	980191206	Сплит-система в каждой комнате, набор посуды
2944	11	980191206	нет
2945	15	980191206	спальня – двуспальная кровать + полутороспальная кровать, прикроватные тумбочки, платяной шкаф, пуфик; гостиная – двуспальный диван, туалетный столик с зеркалом, журнальный столик; комнаты смежные, на балконе – стол, стулья
2946	13	980191207	
2947	14	980191207	01.06-20.06   3000\r\n21.06-10.07   3500\r\n11.07-25.08   4500\r\n26.08-10.09   3500\r\n11.09-10.10   3000
2948	1	980191207	раз в 4 дня
2949	10	980191207	в номере
2950	2	980191207	нет
2951	3	980191207	эфирное
2952	4	980191207	ежедневно
2953	5	980191207	душ, раковина, туалет, биде
2954	6	980191207	на номер, выход на балкон из каждой комнаты, на балконе – стол, стулья
2955	8	980191207	Сплит-система в каждой комнате, набор посуды
2956	11	980191207	нет
2957	15	980191207	спальня – двуспальная кровать + полутороспальная кровать, прикроватные тумбочки, платяной шкаф, пуфик; гостиная – двуспальный диван, двуспальная кровать, туалетный столик с зеркалом, журнальный столик; комнаты раздельные
2958	13	980191208	
2959	14	980191208	20.05-31.05   700\r\n01.06-15.06   900\r\n16.06-30.06   1400\r\n01.07-15.07   1600\r\n16.07-25.08   2000\r\n26.08-20.09   1200
2960	1	980191208	от заезда до заезда
2961	10	980191208	в номере
2962	2	980191208	нет
2963	3	980191208	эфирное
2964	4	980191208	от заезда до заезда
2965	5	980191208	душ, раковина, туалет
2966	6	980191208	нет
2967	8	980191208	кондиционер, набор посуды
2968	11	980191208	нет
2969	15	980191208	
2971	14	980191209	20.05-31.05   900\r\n01.06-15.06   1200\r\n16.06-30.06   1800\r\n01.07-15.07   2100\r\n16.07-25.08   2400\r\n26.08-20.09   1500
2981	15	980191209	
2970	13	980191209	300-800
2972	1	980191209	от заезда до заезда
2973	10	980191209	в номере
2974	2	980191209	нет
2975	3	980191209	эфирное
2976	4	980191209	от заезда до заезда
2977	5	980191209	душ, раковина, туалет
2978	6	980191209	нет
2979	8	980191209	Кондиционер, набор посуды
2980	11	980191209	нет
2982	13	980191210	
2983	14	980191210	20.05-31.05   1050\r\n01.06-15.06   1350\r\n16.06-30.06   2100\r\n01.07-15.07   2400\r\n16.07-25.08   3000\r\n26.08-20.09   1800
2984	1	980191210	от заезда до заезда
2985	10	980191210	в номере
2986	2	980191210	нет
2987	3	980191210	эфирное
2988	4	980191210	от заезда до заезда
2989	5	980191210	душ, раковина, туалет
2990	6	980191210	нет
2991	8	980191210	кондиционер
2992	11	980191210	нет
2993	15	980191210	кондиционер
2994	13	980191211	
2995	14	980191211	20.05-31.05   1400\r\n01.06-15.06   1800\r\n16.06-30.06   2800\r\n01.07-15.07   3200\r\n16.07-25.08   4000\r\n26.08-20.09   2400
2996	1	980191211	от заезда до заезда
2997	10	980191211	в номере
2998	2	980191211	нет
2999	3	980191211	эфирное
3000	4	980191211	от заезда до заезда
3001	5	980191211	душ, раковина, туалет
3002	6	980191211	нет
3003	8	980191211	кондиционер
3004	11	980191211	нет
3005	15	980191211	кондиционер
3006	13	980191212	
3007	14	980191212	при бронировании цены уточнять!
3008	1	980191212	через 10 дней
3009	10	980191212	нет
3010	2	980191212	нет
3011	3	980191212	нет
3012	4	980191212	по желанию (за доп. плату)
3013	5	980191212	общий санузел на 2 номера - душ, раковина, туалет
3014	6	980191212	нет
3015	8	980191212	кондиционер
3016	11	980191212	нет
3017	15	980191212	шкаф; прикроватная тумба
3018	13	980191213	
3019	14	980191213	при бронировании цены уточнять!
3020	1	980191213	через 10 дней
3021	10	980191213	нет (общий на этаже)
3022	2	980191213	нет
3023	3	980191213	эфирное
3024	4	980191213	по желанию (за доп. плату)
3025	5	980191213	общий санузел на 3 номера - душ, раковина, туалет
3026	6	980191213	нет
3027	8	980191213	вентилятор
3028	11	980191213	нет
3029	15	980191213	шкаф; прикроватная тумба
3030	13	980191214	
3031	14	980191214	при бронировании цены уточнять!
3032	1	980191214	через 10 дней
3033	10	980191214	в номере
3034	2	980191214	нет
3035	3	980191214	эфирное
3036	4	980191214	по желанию (за доп. плату)
3037	5	980191214	душ, раковина, туалет
3038	6	980191214	общий на несколько номеров
3039	8	980191214	Сплит-система
3040	11	980191214	кондиционер
3041	15	980191214	шкаф; прикроватная тумба
3042	13	980191215	
3043	14	980191215	01.06-30.06   2300\r\n01.07-31.08   2800\r\n01.09-30.09   2300\r\n
3044	1	980191215	
3045	10	980191215	в номере
3046	2	980191215	нет
3047	3	980191215	триколор
3048	4	980191215	ежедневно
3049	5	980191215	ванна, раковина, туалет
3050	6	980191215	нет
3051	8	980191215	Сплит-система, фен, туалетные принадлежности, халат, тапочки, городской телефон, WiFi, электрочайник, набор посуды
3052	11	980191215	нет
3053	15	980191215	
3054	13	980191216	
3055	14	980191216	01.06-30.06   2500\r\n01.07-31.08   3000\r\n01.09-30.09   2500\r\n
3056	1	980191216	
3057	10	980191216	в номере
3058	2	980191216	нет
3059	3	980191216	триколор
3060	4	980191216	ежедневно
3061	5	980191216	ванна, раковина, туалет
3062	6	980191216	нет
3063	8	980191216	Сплит-система, фен, туалетные принадлежности, халат, тапочки, городской телефон, WiFi, электрочайник, набор посуды
3064	11	980191216	нет
3065	15	980191216	
3066	13	980191217	200-300
3067	14	980191217	01.06-14.06   900\r\n15.06-01.07   1300\r\n01.07-20.07   1800\r\n21.07-26.08   2200\r\n27.08-10.09   1300\r\n11.09-30.09    900  
3068	1	980191217	раз в 5 дней
3069	10	980191217	в номере
3070	2	980191217	нет
3071	3	980191217	эфирное
3072	4	980191217	раз в два дня
3073	5	980191217	душ, раковина, туалет
3074	6	980191217	на номер
3076	11	980191217	нет
3077	15	980191217	Двуспальная кровать, прикроватные тумбочки, столик, стулья, шкаф-купе для одежды
3078	13	980191218	200-300
3079	14	980191218	01.06-14.06   1200\r\n15.06-01.07   1700\r\n01.07-20.07   2300\r\n21.07-26.08   2800\r\n27.08-10.09   1700\r\n11.09-30.09   1200  
3080	1	980191218	раз в 5 дней
3081	10	980191218	в номере
3082	2	980191218	нет
3083	3	980191218	эфирное
3084	4	980191218	раз в 2 дня
3085	5	980191218	душ, раковина, туалет
3086	6	980191218	на номер с видом на море
3088	11	980191218	нет
3075	8	980191217	Сплит-система, электрочайник 
3089	15	980191218	Двуспальная кровать, раскладной диван, шкаф для одежды, прикроватные тумбочки, стол, стулья
3090	13	980191219	
3091	14	980191219	01.06-14.06   1800\r\n15.06-01.07   2000\r\n01.07-20.07   2500\r\n21.07-26.08   3000\r\n27.08-10.09   2000\r\n11.09-30.09   1800  
3092	1	980191219	раз в 5 дней
3093	10	980191219	в номере
3094	2	980191219	нет
3095	3	980191219	эфирное
3096	4	980191219	раз в 2 дня
3097	5	980191219	душ, раковина, туалет
3098	6	980191219	на номер с видом на море
3100	11	980191219	нет
3101	15	980191219	Двуспальная кровать, раскладной диван, шкаф для одежды, прикроватные тумбочки, стол, стулья
3087	8	980191218	Сплит-система, электрочайник 
3099	8	980191219	Сплит-система, электрочайник 
3102	13	980191220	
3103	14	980191220	01.06-14.06   2000\r\n15.06-01.07   2500\r\n01.07-20.07   3000\r\n21.07-26.08   3600\r\n27.08-10.09   2400\r\n11.09-30.09   2000  
3104	1	980191220	раз в 5 дней
3105	10	980191220	в номере
3106	2	980191220	нет
3107	3	980191220	эфирное
3108	4	980191220	раз в 2 дня
3109	5	980191220	ванна, раковина, туалет
3110	6	980191220	на номер
3111	8	980191220	Сплит-система, электрочайник 
3112	11	980191220	нет
3113	15	980191220	Двуспальная кровать, мягкий раскладной уголок, кресло-кровать, журнальный столик, шкаф для одежды
3114	13	980191221	
3115	14	980191221	01.06-15.06   500\r\n16.06-30.06   800\r\n01.07-15.07   1200\r\n16.07-31.08   1400
3116	1	980191221	раз в 5 дней
3117	10	980191221	в номере
3118	2	980191221	нет
3119	3	980191221	эфирное
3120	4	980191221	по требованию (за доп. плату)
3121	5	980191221	душ, раковина, туалет
3122	6	980191221	нет
3123	8	980191221	
3124	11	980191221	нет
3125	15	980191221	
3126	13	980191222	
3127	14	980191222	01.06-30.06   1050\r\n01.07-15.07   1650\r\n16.07-31.07   1950\r\n01.08-31.08   1800\r\n
3128	1	980191222	раз в 5 дней
3129	10	980191222	в номере
3130	2	980191222	нет
3131	3	980191222	эыфирное
3132	4	980191222	по требованию (за доп. плату)
3133	5	980191222	душ, раковина, туалет
3134	6	980191222	нет
3135	8	980191222	
3136	11	980191222	нет
3137	15	980191222	
3138	13	980191223	
3139	14	980191223	01.06-30.06   1400\r\n01.07-15.07   2200\r\n16.07-31.07   2600\r\n01.08-31.08   2400\r\n
3140	1	980191223	раз в 5 дней
3141	10	980191223	в номере
3142	2	980191223	нет
3143	3	980191223	эфирное
3144	4	980191223	по требованию (за доп. плату)
3145	5	980191223	душ, раковина, туалет
3146	6	980191223	нет
3147	8	980191223	
3148	11	980191223	нет
3149	15	980191223	
3150	13	980191224	
3151	14	980191224	01.06-15.06   700\r\n16.06-30.06   1000\r\n01.07-15.07   1400\r\n16.07-31.08   1600
3152	1	980191224	раз в 5 дней
3153	10	980191224	в номере
3154	2	980191224	нет
3155	3	980191224	эфирное
3156	4	980191224	по требованию (за доп. плату)
3159	8	980191224	
3161	15	980191224	
3157	5	980191224	душ, раковина, туалет
3158	6	980191224	нет
3160	11	980191224	нет
3162	13	980191225	
3163	14	980191225	01.05-31.05   400\r\n01.06-15.06   600\r\n16.06-30.06   800\r\n01.07-15.07   1000\r\n16.07-31.08   1200\r\n27.08-30.09    600
3164	1	980191225	раз в 10 дней
3165	10	980191225	в номере
3166	2	980191225	нет
3167	3	980191225	эфирное
3168	4	980191225	нет
3169	5	980191225	душ, раковина, туалет
3170	6	980191225	нет
3171	8	980191225	
3172	11	980191225	нет
3173	15	980191225	
3174	13	980191226	
3175	14	980191226	01.05-31.05   540\r\n01.06-15.06   750\r\n16.06-30.06   900\r\n01.07-15.07   1050\r\n16.07-31.08   1350\r\n27.08-30.09    750
3176	1	980191226	раз в 10 дней
3177	10	980191226	в номере
3178	2	980191226	нет
3179	3	980191226	эфирное
3180	4	980191226	нет
3181	5	980191226	душ, раковина, туалет
3182	6	980191226	нет
3183	8	980191226	
3184	11	980191226	нет
3185	15	980191226	
3186	13	980191227	
3187	14	980191227	01.05-31.05   720\r\n01.06-15.06   1000\r\n16.06-30.06   1200\r\n01.07-15.07   1400\r\n16.07-31.08   1800\r\n27.08-30.09   1000
3188	1	980191227	раз в 10 дней
3189	10	980191227	в номере
3190	2	980191227	нет
3191	3	980191227	эфирное
3192	4	980191227	нет
3193	5	980191227	душ, раковина, туалет
3194	6	980191227	нет
3195	8	980191227	
3196	11	980191227	нет
3197	15	980191227	
3198	13	980191228	
3199	14	980191228	01.05-31.05   500\r\n01.06-15.06   700\r\n16.06-30.06   800\r\n01.07-15.07   1000\r\n16.07-31.08   1400\r\n27.08-30.09    700
3200	1	980191228	раз в 10 дней
3201	10	980191228	в номере
3204	4	980191228	нет
3205	5	980191228	душ, раковина, туалет
3206	6	980191228	нет
3208	11	980191228	нет
3209	15	980191228	
3222	13	980191230	
3223	14	980191230	01.05-31.05   690\r\n01.06-15.06   900\r\n16.06-30.06   1050\r\n01.07-15.07   1200\r\n16.07-31.08   1500\r\n27.08-30.09    900
3224	1	980191230	раз в 10 дней
3225	10	980191230	в номере
3226	2	980191230	нет
3227	3	980191230	эфирное
3228	4	980191230	нет
3229	5	980191230	душ, раковина, туалет
3230	6	980191230	нет
3231	8	980191230	кондиционер
3232	11	980191230	нет
3233	15	980191230	
3234	13	980191231	
3235	14	980191231	01.05-31.05   920\r\n01.06-15.06   1200\r\n16.06-30.06   1400\r\n01.07-15.07   1600\r\n16.07-31.08    2000\r\n27.08-30.09    1200
3236	1	980191231	раз в 10 дней
3237	10	980191231	в номере
3238	2	980191231	нет
3239	3	980191231	эфирное
3240	4	980191231	нет
3241	5	980191231	душ, раковина, туалет
3242	6	980191231	нет
3243	8	980191231	кондиционер
3244	11	980191231	нет
3245	15	980191231	
3207	8	980191228	кондиционер
3246	13	980191232	
3247	14	980191232	01.05-31.05   1080\r\n01.06-15.06   1380\r\n16.06-30.06   1620\r\n01.07-15.07   2100\r\n16.07-31.08   2400\r\n27.08-30.09   1500
3248	1	980191232	раз в 10 дней
3249	10	980191232	в номере
3250	2	980191232	нет
3251	3	980191232	эфирное
3252	4	980191232	нет
3253	5	980191232	душ, раковина, туалет
3254	6	980191232	нет
3255	8	980191232	
3256	11	980191232	нет
3257	15	980191232	
3258	13	980191233	
3259	14	980191233	01.05-31.05   720\r\n01.06-15.06   1120\r\n16.06-30.06   1520\r\n01.07-15.07   1920\r\n16.07-31.08   2280\r\n27.08-30.09   1000
3260	1	980191233	раз в 10 дней
3261	10	980191233	в номере
3262	2	980191233	нет
3263	3	980191233	эфирное
3264	4	980191233	нет
3265	5	980191233	душ, раковина, туалет
3266	6	980191233	нет
3267	8	980191233	
3268	11	980191233	нет
3269	15	980191233	
3271	14	980191234	01.05-31.05\t1200\r\n01.06-31.06 \t1400\r\n01.07-15.07\t1800 \r\n16.07-31.07\t2100 \r\n01.08-25.08\t2200\r\n26.08-31.08       1900 \r\n01.09-30.09       1200\r\n01.10-30.04\t1100 
3277	5	980191234	ванна, раковина, туалет
3279	8	980191234	кондиционер
3270	13	980191234	500
3273	10	980191234	в номере
3274	2	980191234	нет
3275	3	980191234	эфирное
3278	6	980191234	нет
3280	11	980191234	нет
3282	13	980191235	500
3283	14	980191235	01.05-31.05\t1500\r\n01.06-31.06 \t1600\r\n01.07-15.07\t2200\r\n16.07-31.07\t2500\r\n01.08-25.08\t2500\r\n26.08-31.08       2200\r\n01.09-30.09       1500\r\n01.10-30.04\t1300 
3284	1	980191235	раз в 7 дней
3285	10	980191235	в номере
3286	2	980191235	нет
3287	3	980191235	эфирное
3288	4	980191235	через день
3289	5	980191235	ванна, раковина, туалет
3290	6	980191235	нет
3291	8	980191235	 сплит-система, электрочайник, набор посуды
3292	11	980191235	нет
3296	1	980191236	раз в 3 дня и по просьбе клиента
3272	1	980191234	раз в 7 дней
3276	4	980191234	через день
3293	15	980191235	двуспальная кровать, прикроватные тумбочки, шкаф, стол, стулья, доп. место - еврораскладушка
3281	15	980191234	 односпальная кровать 2шт, прикроватные тумбочки, шкаф, стол, стулья, доп. место - еврораскладушка
3294	13	980191236	
3297	10	980191236	в номере
3298	2	980191236	нет
3299	3	980191236	эфирное
3300	4	980191236	ежедневно
3302	6	980191236	на номер
3303	8	980191236	сплит - система
3304	11	980191236	в номере
3305	15	980191236	стол, стул, 2 прикроватные тумбочки, мягкое кресло-кровать, шкаф, багажница с зеркалом, фен, эл. чайник, чайная посуда, ЖК-телевизор, телефон
3491	3	980191252	эфирное
3301	5	980191236	душ, раковина, туалет
3295	14	980191236	01.05-10.06    1900\r\n10.06-20.06    2600\r\n20.06-30.06    3000  \r\n01.07-10.07    3200\r\n10.07-25.07    3600\r\n25.07-25.08    3800\r\n25.08-15.09    3000\r\n15.09-01.10    2600
3306	13	980191237	
3307	14	980191237	01.05-10.06    2000\r\n10.06-20.06    2700\r\n20.06-30.06    3200  \r\n01.07-10.07    3500\r\n10.07-25.07    3800\r\n25.07-25.08    4000\r\n25.08-15.09    3200\r\n15.09-01.10    2700
3309	10	980191237	в номере
3310	2	980191237	нет
3311	3	980191237	эфирное
3312	4	980191237	ежедневно
3308	1	980191237	раз в 3 дня и по просьбе клиента
3492	4	980191252	по требованию
3493	5	980191252	душ, раковина, туалет
3494	6	980191252	нет
3495	8	980191252	кондицинер
3496	11	980191252	нет
3497	15	980191252	двуспальная кровать, диван-кровать, 2 кресла-кровати, тумбочки прикроватные, шкафы, зеркало с пуфиком.
3498	13	980191253	
3313	5	980191237	душ/поддон, раковина, туалет, теплый пол
3314	6	980191237	на номер
3315	8	980191237	Сплит-система
3316	11	980191237	в номере
3317	15	980191237	Однокомнатный номер с двумя односпальными кроватями. В номере: стол, стул, 2 прикроватные тумбочки, мягкое кресло-кровать, шкаф, багажница с зеркалом, фен, эл. чайник, чайная посуда, ЖК-телевизор, телефон
3318	13	980191238	
3319	14	980191238	01.05-10.06    2400\r\n10.06-20.06    3000\r\n20.06-30.06    3400  \r\n01.07-10.07    3700\r\n10.07-25.07    4000\r\n25.07-25.08    4200\r\n25.08-15.09    3400\r\n15.09-01.10    3000
3320	1	980191238	раз в 3 дня и по просьбе клиента
3321	10	980191238	в номере
3322	2	980191238	нет
3323	3	980191238	эфирное
3324	4	980191238	ежедневно
3325	5	980191238	душ/ванна, раковина, туалет, теплый пол
3326	6	980191238	на номер
3327	8	980191238	сплит-система
3328	11	980191238	в номере
3329	15	980191238	Однокомнатный номер с одной двуспальной или двумя односпальными кроватями. В номере: стол, стул, 2 прикроватные тумбочки, мягкое кресло-кровать, шкаф, багажница с зеркалом, фен, эл. чайник, чайная посуда, ЖК-телевизор, телефон
3330	13	980191239	
3331	14	980191239	01.05-10.06    2550\r\n10.06-20.06    3600\r\n20.06-30.06    4200  \r\n01.07-10.07    4500\r\n10.07-25.07    4800\r\n25.07-25.08    5100\r\n25.08-15.09    4200\r\n15.09-01.10    3600
3332	1	980191239	раз в 3 дня и по просьбе клиента
3333	10	980191239	в номере
3334	2	980191239	нет
3335	3	980191239	эфирное
3336	4	980191239	ежедневно
3337	5	980191239	ванна, раковина, туалет, теплый пол
3338	6	980191239	на номер
3339	8	980191239	сплит-система
3340	11	980191239	в номере
3341	15	980191239	Однокомнатный номер с тремя односпальными кроватями. В номере: стол, стул, 3 прикроватные тумбочки, мягкое кресло-кровать, шкаф, багажница с зеркалом, фен, эл. чайник, чайная посуда, ЖК-телевизор, телефон
3342	13	980191240	
3343	14	980191240	01.05-10.06    3300\r\n10.06-20.06    3700\r\n20.06-30.06    4000  \r\n01.07-10.07    4200\r\n10.07-25.07    4400\r\n25.07-25.08    4600\r\n25.08-15.09    4000\r\n15.09-01.10    3700
3344	1	980191240	раз в 3 дня и по просьбе клиента
3345	10	980191240	в номере
3346	2	980191240	нет
3347	3	980191240	эфирное, 2 ЖК-телевизора (в гостиной и спальной комнате)
3348	4	980191240	ежедневно
3349	5	980191240	4 номера с одним сан. узлом, ванной и теплым полом, 2 номера с двумя сан. узлами, душевой кабиной и теплым полом.
3350	6	980191240	на номер
3351	8	980191240	2 сплит - системы,  фен, эл. чайник, чайная посуда, телефон 
3352	11	980191240	в номере
3353	15	980191240	Двухкомнатный номер с двуспальной кроватью. В номере: журнальный столик, туалетный столик, стул, 2 прикроватные тумбочки, мягкий диван-кровать, кресло, шкаф, багажница с зеркалом.
3354	13	980191241	
3355	14	980191241	01.05-10.06    4300\r\n10.06-20.06    4800\r\n20.06-30.06    5000  \r\n01.07-10.07    5500\r\n10.07-25.07    6000\r\n25.07-25.08    7000\r\n25.08-15.09    5000\r\n15.09-01.10    4800
3356	1	980191241	раз в 3 дня и по просьбе клиента
3357	10	980191241	в номере
3358	2	980191241	нет
3359	3	980191241	эфирное, , 2 ЖК-телевизора (в гостиной и спальной зоне)
3360	4	980191241	ежедневно
3361	5	980191241	ванна, раковина, туалет, теплый пол
3362	6	980191241	на номер, летняя мебель
3363	8	980191241	сплит-система
3364	11	980191241	в номере
3365	15	980191241	Однокомнатный номер с двуспальной кроватью, в романтическом стиле. В номере: журнальный столик, туалетный столик, 2 стула, прикроватные тумбочки, мягкий диван-кровать, кресло, шкаф-купе, зеркало, фен, эл. чайник, чайная посуда, телефон
3366	13	980191242	
3367	14	980191242	20.05-10.06   700\r\n10.06-20.06   1100\r\n20.06-30.06   1600\r\n30.06-01.07   1700\r\n10.07-20.07   1900\r\n20.07-25.08    2200\r\n25.08-01.09    1560\r\n01.09-15.09    1200\r\n15.09-10.10     900\r\n
3368	1	980191242	через 5 дней
3369	10	980191242	в номере
3370	2	980191242	нет
3371	3	980191242	эфирное
3372	4	980191242	по требованию
3373	5	980191242	душ, раковина, туалет
3374	6	980191242	общая терраса 
3375	8	980191242	сплит-система, посуда, эл. чайник
3376	11	980191242	нет
3377	15	980191242	двуспальная кровать, мебельная стенка, стулья, стол, зеркало
3378	13	980191243	
3379	14	980191243	20.05-10.06   840\r\n10.06-20.06   1260\r\n20.06-30.06   1800\r\n30.06-01.07   2040\r\n10.07-20.07    2250\r\n20.07-25.08    2400\r\n25.08-01.09    1890\r\n01.09-15.09    1440\r\n15.09-10.10     1050\r\n
3380	1	980191243	через 5 дней
3381	10	980191243	в номере
3382	2	980191243	нет
3383	3	980191243	в номере
3384	4	980191243	по требованию
3385	5	980191243	душ, раковина, туалет
3386	6	980191243	общая терраса
3387	8	980191243	сплит-система, посуда, эл. чайник
3388	11	980191243	нет
3389	15	980191243	двуспальная кровать, раскладной диванчик,  мебельная стенка, стулья, стол, зеркало
3390	13	980191244	
3391	14	980191244	25.05-30.06   600\r\n01.07-15.09   700\r\n15.09-30.09   600
3392	1	980191244	раз в 5 дней
3393	10	980191244	в номере
3394	2	980191244	нет
3395	3	980191244	эфирное
3396	4	980191244	по требованию
3397	5	980191244	общий на 4 комнаты (душ, раковина, туалет)
3398	6	980191244	нет
3399	8	980191244	Кондиционер
3400	11	980191244	нет
3401	15	980191244	Номер расположен на мансардном этаже. 
3402	13	980191245	
3403	14	980191245	25.05-30.06   550\r\n01.07-15.09   650\r\n15.09-30.09   550
3404	1	980191245	раз в 5 дней
3405	10	980191245	в холле
3406	2	980191245	нет
3407	3	980191245	в холле
3408	4	980191245	по требованию
3409	5	980191245	общий на 4 комнаты (душ, раковина, туалет)
3410	6	980191245	нет
3411	8	980191245	Кондиционер
3412	11	980191245	нет
3413	15	980191245	Номер расположен на мансардном этаже. 
3414	13	980191246	800-1200
3416	1	980191246	раз в 5 дней
3417	10	980191246	в номере
3418	2	980191246	нет
3419	3	980191246	эфирное
3420	4	980191246	по требованию
3421	5	980191246	душ, раковина, туалет
3422	6	980191246	на номер
3423	8	980191246	сплит-система
3424	11	980191246	нет
3425	15	980191246	
3415	14	980191246	25.05-30.06   2000\r\n01.07-15.07   2600\r\n16.07-25.08   3200\r\n26.08-15.09   2600\r\n15.09-30.09   2400\r\n
3426	13	980191247	950-1200
3427	14	980191247	25.05-30.06   2500\r\n01.07-15.07   3000\r\n16.07-25.08   4000\r\n26.08-15.09   3000\r\n15.09-30.09   1000
3428	1	980191247	раз в 5 дней
3429	10	980191247	в номере
3430	2	980191247	нет
3431	3	980191247	эфирное
3432	4	980191247	по требованию
3433	5	980191247	душ, раковина, туалет
3434	6	980191247	2 балкона на фасаде, с мебелью
3435	8	980191247	сплит-система
3436	11	980191247	нет
3437	15	980191247	мягкая мебель
3438	13	980191248	700-1100
3439	14	980191248	25.05-30.06   850\r\n01.07-15.07   1000\r\n16.07-25.08   1400\r\n26.08-15.09   1200\r\n15.09-30.09   1000
3440	1	980191248	раз в 5 дней
3441	10	980191248	в номере
3442	2	980191248	нет
3443	3	980191248	эфирное
3444	4	980191248	по требованию
3445	5	980191248	душ, раковина, туалет
3446	6	980191248	на номер
3447	8	980191248	сплит-система
3448	11	980191248	нет
3449	15	980191248	
3450	13	980191249	250
3451	14	980191249	01.06-16.06    700\r\n16.06-25.06    800\r\n26.06-10.07    1200\r\n11.07-26.08    1400\r\n27.08-15.09     800\r\n16.09-30.09     600
3452	1	980191249	раз в 7 дней
3453	10	980191249	в номере
3454	2	980191249	нет
3455	3	980191249	эфирное
3456	4	980191249	по требованию
3457	5	980191249	душ, раковина, туалет
3458	6	980191249	нет
3459	8	980191249	Сплит-система
3460	11	980191249	нет
3461	15	980191249	двуспальная или односпальные кровати, шкаф, прикроватные тумбочки, трюмо, стол, стулья
3462	13	980191250	250
3464	1	980191250	раз в 7 дней
3465	10	980191250	в номере
3466	2	980191250	нет
3467	3	980191250	эфирное
3468	4	980191250	по требованию
3469	5	980191250	душ, раковина, туалет
3470	6	980191250	нет
3471	8	980191250	кондиционер
3472	11	980191250	нет
3473	15	980191250	двуспальная и односпальная кровати, шкаф, прикроватные тумбочки
3474	13	980191251	250
3476	1	980191251	раз в 7 дней
3477	10	980191251	в номере
3478	2	980191251	нет
3479	3	980191251	эфирное
3480	4	980191251	по требованию
3481	5	980191251	душ, раковина, туалет
3482	6	980191251	нет
3483	8	980191251	кондиционер
3484	11	980191251	нет
3485	15	980191251	двуспальная и 2 односпальные кровати, шкаф, прикроватные тумбочки
3463	14	980191250	01.06-16.06    1000\r\n16.06-25.06    1100\r\n26.06-10.07    1500\r\n11.07-26.08    1800\r\n27.08-15.09    1100\r\n16.09-30.09     900
3475	14	980191251	01.06-16.06    1200\r\n16.06-25.06    1400\r\n26.06-10.07    1800\r\n11.07-26.08    2200\r\n27.08-15.09    1300\r\n16.09-30.09    1100
3486	13	980191252	250
3487	14	980191252	01.06-16.06    1400\r\n16.06-25.06    1800\r\n26.06-10.07    2200\r\n11.07-26.08    2700\r\n27.08-15.09    1800\r\n16.09-30.09    1400
3488	1	980191252	раз в 7 дней
3489	10	980191252	в номере
3490	2	980191252	нет
3499	14	980191253	
3500	1	980191253	
3501	10	980191253	в номере
3502	2	980191253	нет
3503	3	980191253	эфирное
3504	4	980191253	
3505	5	980191253	душ, раковина, туалет
3506	6	980191253	на номер
3507	8	980191253	Сплит-система
3508	11	980191253	нет
3509	15	980191253	двуспальная кровать
3510	13	980191254	
3511	14	980191254	
3512	1	980191254	
3513	10	980191254	в номере
3514	2	980191254	нет
3515	3	980191254	эфирное
3516	4	980191254	
3517	5	980191254	душ, раковина, туалет
3518	6	980191254	на номер
3519	8	980191254	Сплит-система
3520	11	980191254	нет
3521	15	980191254	3 односпальные кровати 
3522	13	980191255	
3523	14	980191255	
3524	1	980191255	
3525	10	980191255	в номере
3526	2	980191255	нет
3527	3	980191255	эфирное
3528	4	980191255	
3529	5	980191255	ванна, раковина, туалет
3530	6	980191255	на номер
3531	8	980191255	сплит-ситстема
3532	11	980191255	нет
3533	15	980191255	Две изолированные комнаты, в каждой комнате односпальные кровати 
3534	13	980191256	
3535	14	980191256	
3536	1	980191256	
3537	10	980191256	в номере
3538	2	980191256	нет
3539	3	980191256	эфирное
3540	4	980191256	
3541	5	980191256	ванна, раковина, туалет
3542	6	980191256	на номер
3543	8	980191256	сплит-система
3544	11	980191256	нет
3545	15	980191256	В спальне двуспальная кровать+кресло-кровать
3546	13	980191257	
3547	14	980191257	
3548	1	980191257	по требованию
3549	10	980191257	в номере
3550	2	980191257	нет
3552	4	980191257	по требованию
3553	5	980191257	душ, раковина, туалет
3554	6	980191257	
3555	8	980191257	кондиционер, Wi Fi
3556	11	980191257	нет
3557	15	980191257	две односпальные кровати(или двуспальная), прикроватные тумбы, шкаф для одежды, раскладной диван, стол, зеркало
3558	13	980191258	
3559	14	980191258	
3560	1	980191258	по требованию
3561	10	980191258	в номере
3562	2	980191258	нет
3564	4	980191258	по требованию
3565	5	980191258	душевая кабинка, раковина, туалет
3566	6	980191258	
3567	8	980191258	кондиционер, Wi Fi
3568	11	980191258	нет
3569	15	980191258	двуспальная кровать, прикроватные тумбы, шифоньер, раскладной диван, стол
3570	13	980191259	
3571	14	980191259	
3572	1	980191259	по требованию
3573	10	980191259	в номере
3574	2	980191259	нет
3576	4	980191259	по требованию
3577	5	980191259	душевая кабинка, раковина, туалет
3578	6	980191259	
3579	8	980191259	кондиционер в каждой комнате, Wi Fi
3580	11	980191259	нет
3581	15	980191259	кухонный гарнитур, двуспальная кровать\r\nприкроватные тумбы, раскладной диван,\r\nшифоньер, стол.
3582	13	980191260	
3583	14	980191260	
3584	1	980191260	по требованию
3585	10	980191260	в номере
3586	2	980191260	нет
3588	4	980191260	по требованию
3589	5	980191260	душевая кабинка, раковина, туалет
3590	6	980191260	
3591	8	980191260	кондиционер в каждой комнате, Wi Fi
3592	11	980191260	нет
3593	15	980191260	кухонный гарнитур, двуспальная кровать\r\nприкроватные тумбы, раскладной диван,\r\nшифоньер, стол.
3594	13	980191261	
3595	14	980191261	
3596	1	980191261	через 3 дня
3597	10	980191261	в номере
3598	2	980191261	нет
3599	3	980191261	эфирное
3600	4	980191261	ежедневно
3601	5	980191261	душ, раковина, туалет
3602	6	980191261	на номер
3603	8	980191261	кондиционер
3605	15	980191261	Две раздельные кровати
3606	13	980191262	
3607	14	980191262	
3608	1	980191262	через 3 дня
3609	10	980191262	в номере
3610	2	980191262	нет
3611	3	980191262	эфирное
3612	4	980191262	ежедневно
3613	5	980191262	душ, раковина, туалет
3614	6	980191262	на номер
3615	8	980191262	кондиционер
3617	15	980191262	Две раздельные кровати
3618	13	980191263	
3619	14	980191263	
3620	1	980191263	через 3 дня
3621	10	980191263	в номере
3604	11	980191261	в номере
3551	3	980191257	эфирное
3563	3	980191258	эфирное
3622	2	980191263	нет
3623	3	980191263	эфирное
3624	4	980191263	ежедневно
3625	5	980191263	душ, раковина, туалет
3626	6	980191263	нет
3627	8	980191263	кондиционер
3629	15	980191263	Одна двухспальная широкая кровать, диван, кресла
3616	11	980191262	в номере
3628	11	980191263	в номере
3632	1	980191264	
3633	10	980191264	в номере
3634	2	980191264	в номере
3635	3	980191264	эфирное
3637	5	980191264	душ/ванная, умывальник, два санузла, зеркало, фен.
3638	6	980191264	на номер
3639	8	980191264	климат-контроль,телефон, стол с зеркалом, на каждого гостя: полотенца, халат махровый, тапочки, продукция индивидуального пользования.
3641	15	980191264	Номер состоит из двух спальных комнат, гостиной, кухни. В комнате № 1: двуспальная кровать 160×200 см., ванная комната; В комнате № 2: две раздельные кровати 90×200 см.;\r\n В гостиной: мягкая мебель, душевая комната, выход на смотровую площадку. \r\n
3640	11	980191264	нет
3644	1	980191265	
3645	10	980191265	в номере
3646	2	980191265	в номере
3647	3	980191265	эфирное
3649	5	980191265	 душ, умывальник, санузел, зеркало, фен.
3650	6	980191265	на номер
3651	8	980191265	климат-контроль.
3652	11	980191265	нет
3653	15	980191265	Номер состоит из одной спальной, одной гостиной, ванной комнаты. В номере имеется:  телефон, стол с зеркалом, двуспальная кровать 160×200 см. (DR). На каждого гостя: полотенца, тапочки, продукция индивидуального пользования.
3656	1	980191266	
3657	10	980191266	в номере
3658	2	980191266	в номере
3659	3	980191266	эфирное
3661	5	980191266	 душ, умывальник, санузел, зеркало, фен.
3662	6	980191266	на номер
3663	8	980191266	климат-контроль
3664	11	980191266	нет
3665	15	980191266	В номере имеется: телефон, стол с зеркалом, двуспальная кровать 160×200 см. (DR) или две, раздельные кровати 90×200 см. (TWR). На каждого гостя: полотенца, продукция индивидуального пользования.
3666	13	980191267	
3668	1	980191267	
3669	10	980191267	в номере
3670	2	980191267	в номере
3671	3	980191267	эфирное
3673	5	980191267	 душ, умывальник, санузел, зеркало, фен.
3674	6	980191267	на номер
3675	8	980191267	климат-контроль
3676	11	980191267	нет
3677	15	980191267	В номере имеется: телефон, стол с зеркалом, двуспальная кровать 160×200 см. (DR) или две, раздельные кровати 90×200 см. (TWR). На каждого гостя: полотенца, продукция индивидуального пользования.
3678	13	980191268	
3679	14	980191268	
3680	1	980191268	
3681	10	980191268	в номере
3682	2	980191268	нет
3683	3	980191268	эфирное
3684	4	980191268	
3685	5	980191268	ванна, раковина, туалет,  туалетные принадлежности, фен. 
3686	6	980191268	на номер
3687	8	980191268	на номер
3688	11	980191268	нет
3689	15	980191268	двуспальная кровать, 2 прикроватные тумбочки, диван, 2 кресла, 2 пуфика, шкаф для одежды, комод с зеркалом,  телефон. Покрытие: ковролин
3690	13	980191269	
3691	14	980191269	
3692	1	980191269	
3693	10	980191269	в номере
3694	2	980191269	нет
3695	3	980191269	эфирное
3696	4	980191269	
3697	5	980191269	 ванна, раковина, туалет,  туалетные принадлежности, фен.
3698	6	980191269	на номер
3699	8	980191269	
3700	11	980191269	нет
3701	15	980191269	двуспальная кровать, 2 прикроватные тумбочки, кресло-кровать, 2 пуфика, шкаф для одежды, комод с зеркалом, телефон. Покрытие: ковролин
3702	13	980191270	
3703	14	980191270	
3704	1	980191270	
3705	10	980191270	в номере
3706	2	980191270	нет
3707	3	980191270	эфирное
3708	4	980191270	
3709	5	980191270	ванна, раковина, туалет, туалетные принадлежности, фен.
3710	6	980191270	на номер
3711	8	980191270	
3712	11	980191270	нет
3713	15	980191270	кровати, 2 прикроватные тумбочки, кресло-кровать, 2 пуфика, журнальный столик, шкаф для одежды,  телефон.  Покрытие: ковролин
3654	13	980191266	800
3655	14	980191266	01.01-31.05   2500\r\n01.06-31.08   3200
3714	13	980191271	
3715	14	980191271	
3716	1	980191271	
3717	10	980191271	в номере
3718	2	980191271	нет
3719	3	980191271	эфирное
3720	4	980191271	
3721	5	980191271	душ, раковина, туалет, туалетные принадлежности, фен.
3722	6	980191271	на номер
3723	8	980191271	
3724	11	980191271	
3725	15	980191271	двуспальная кровать, 2 прикроватные тумбочки, 2 пуфика, шкаф для одежды, комод с зеркалом, телефон. Покрытие: ковролин
3726	13	980191272	
3727	14	980191272	
3728	1	980191272	
3729	10	980191272	мини-холодильник
3730	2	980191272	нет
3731	3	980191272	эфирное
3732	4	980191272	
3733	5	980191272	ванна, раковина, туалет
3734	6	980191272	на номер
3735	8	980191272	электрический чайник, чайный набор, фен, предоставляются обычные и банные полотенца, халаты.
3736	11	980191272	
3737	15	980191272	Номер состоит из двух комнат и ванной комнаты. Оборудован двуспальной кроватью, двухтумбовым письменным столом, туалетным и журнальным столиками, платяным шкафом, вешалкой с обувницей, мягкой мебелью. Доп. места - диван-кровать и кресло-трансформер.
3738	13	980191273	
3739	14	980191273	
3740	1	980191273	
3741	10	980191273	мини-холодильник
3742	2	980191273	нет
3743	3	980191273	эфирное
3744	4	980191273	
3745	5	980191273	ванна, раковина, туалет
3746	6	980191273	на номер, терраса 
3747	8	980191273	электрический чайник, чайный набор, фен, предоставляются обычные и банные полотенца, халаты.
3748	11	980191273	
3749	15	980191273	Состоит из зала и спальной ниши. Оборудован двухтумбовым письменным столом, туалетным и журнальным столиками, платяным шкафом, вешалкой с обувницей, мягкой мебелью.  Доп. места - диван-кровать и кресло-трансформер.
3750	13	980191274	
3751	14	980191274	
3752	1	980191274	
3753	10	980191274	мини-холодильник
3754	2	980191274	нет
3755	3	980191274	эыфирное
3756	4	980191274	
3757	5	980191274	ванна, раковина, туалет
3758	6	980191274	на номер
3759	8	980191274	электрический чайник, чайный набор.
3760	11	980191274	нет
3761	15	980191274	номер состоит из зала и спальной ниши. Оборудован двуспальной кроватью, двухтумбовым письменным столом, туалетным и журнальными столиками, платяным шкафом, вешалкой с обувницей, мягкой мебелью. Доп. места - диван-кровать и кресло-трансформер. 
3762	13	980191275	
3763	14	980191275	
3764	1	980191275	
3765	10	980191275	мини-холодильник
3766	2	980191275	нет
3767	3	980191275	эфирное
3768	4	980191275	
3769	5	980191275	душевая кабинка, раковина, туалет
3770	6	980191275	нет
3771	8	980191275	 электрический чайник
3772	11	980191275	нет
3773	15	980191275	оборудован двумя односпальными кроватями, платяным шкафом, прикроватными тумбочками, однотумбовым письменным столом, вешалкой с обувницей. Доп.места - диван-кровать.
3774	13	980191276	
3775	14	980191276	
3776	1	980191276	
3777	10	980191276	мини-холодильник
3778	2	980191276	нет
3779	3	980191276	эфирное
3780	4	980191276	
3781	5	980191276	душевая кабинка, раковина, туалет
3782	6	980191276	нет
3783	8	980191276	 электрический чайник
3784	11	980191276	нет
3785	15	980191276	борудован двумя односпальными кроватями, платяным шкафом, прикроватными тумбочками, однотумбовым письменным столом, вешалкой с обувницей. Доп.места - диван-кровать.
3786	13	980191277	
3787	14	980191277	
3788	1	980191277	
3789	10	980191277	мини-холодильник
3790	2	980191277	нет
3791	3	980191277	эфирное
3792	4	980191277	
3793	5	980191277	душевая кабинка, раковина, туалет
3794	6	980191277	нет
3795	8	980191277	 электрический чайник
3796	11	980191277	нет
3797	15	980191277	борудован двумя односпальными кроватями, платяным шкафом, прикроватными тумбочками, однотумбовым письменным столом, вешалкой с обувницей. 
3798	13	980191278	
3799	14	980191278	
3800	1	980191278	
3804	4	980191278	
3801	10	980191278	в номере
3802	2	980191278	нет
3805	5	980191278	ванна/душ, раковина, туалет
3806	6	980191278	на номер
3807	8	980191278	сплит-система
3808	11	980191278	нет
3809	15	980191278	две односпальные кровати или двуспальная кровать, прикроватные тумбочки, комод, посудный шкаф, встроенный плательный шкаф, телефон с междугородной связью. Дополнительное место – кресло или еврораскладушка.
3810	13	980191279	
3811	14	980191279	
3812	1	980191279	
3813	10	980191279	в номере
3814	2	980191279	нет
3816	4	980191279	
3817	5	980191279	ванна, раковина, туалет
3819	8	980191279	сплит-система
3820	11	980191279	нет
3821	15	980191279	двуспальная кровать, комод, посудный шкаф, плательный шкаф, мягкая мебель (диван - дополнительное место), журнальный столик, телефон с междугородной связью.
3822	13	980191280	
3823	14	980191280	
3824	1	980191280	
3825	10	980191280	в номере
3828	4	980191280	
3829	5	980191280	ванна, раковина, туалет
3831	8	980191280	гладильная доска, утюг, чайник, телефон с междугородной связью, сплит- система
3832	11	980191280	нет
3833	15	980191280	двуспальная кровать, комод, посудный шкаф, плательный шкаф, мягкая мебель (диван – дополнительное место), журнальный столик
3834	13	980191281	
3835	14	980191281	
3836	1	980191281	
3837	10	980191281	в номере
3840	4	980191281	
3841	5	980191281	ванна, раковина, туалет
3845	15	980191281	двуспальная кровать, комод, посудный шкаф, плательный шкаф, мягкая мебель (диван – дополнительное место, два кресла) журнальный столик
3803	3	980191278	кабельное
3815	3	980191279	кабельное
3818	6	980191279	на номер
3826	2	980191280	в номере
3827	3	980191280	кабельное
3830	6	980191280	лоджия
3838	2	980191281	в номере
3839	3	980191281	ТВ - жидкокристаллический, кабельное
3842	6	980191281	лоджия
3843	8	980191281	сплит – система, фен, гладильная доска, утюг, чайник, телефон с междугородной связью
3844	11	980191281	нет
3846	13	980191282	
3847	14	980191282	
3848	1	980191282	
3849	10	980191282	в номере
3850	2	980191282	нет
3851	3	980191282	эфирное
3852	4	980191282	
3853	5	980191282	душевая кабинка, раковина, туалет
3854	6	980191282	
3855	8	980191282	сплит-система
3856	11	980191282	нет
3857	15	980191282	 2-х спальная кровать
3858	13	980191283	
3859	14	980191283	
3860	1	980191283	
3861	10	980191283	в номере
3862	2	980191283	нет
3863	3	980191283	эфирное
3864	4	980191283	
3865	5	980191283	душ, раковина, туалет
3866	6	980191283	
3867	8	980191283	сплит-система
3868	11	980191283	нет
3869	15	980191283	2-х спальная кровать, диван
3870	13	980191284	
3871	14	980191284	
3872	1	980191284	
3873	10	980191284	в номере
3874	2	980191284	нет
3875	3	980191284	эфирное
3876	4	980191284	
3877	5	980191284	душевая кабинка, раковина, туалет
3878	6	980191284	
3879	8	980191284	 сплит-система, набор посуды
3880	11	980191284	нет
3881	15	980191284	2-х спальная кровать, диван
3882	13	980191285	
3883	14	980191285	
3884	1	980191285	
3885	10	980191285	в номере
3886	2	980191285	нет
3887	3	980191285	эфирное
3888	4	980191285	
3889	5	980191285	 гидромассажная душевая кабина, биде, унитаз, раковина.
3890	6	980191285	
3891	8	980191285	
3892	11	980191285	 3-сплит-системы
3893	15	980191285	большая гостиная, 2 спальни, 2-двух спальных кровати, диван.
3894	13	980191286	
3895	14	980191286	
3896	1	980191286	
3897	10	980191286	в номере
3898	2	980191286	нет
3899	3	980191286	эфирное (4 телевизора)
3900	4	980191286	
3901	5	980191286	2 санузла, в 1 –м сан.узле – гидромассажная  душевая  кабина, унитаз,раковина, во втором санузле – джакузи, биде, раковина, унитаз.
3902	6	980191286	2 балкона на номер
3903	8	980191286	4 сплит- системы, электрочайник
3904	11	980191286	
3905	15	980191286	(3 спальни,гостиная (кухня) - в номере три  2-х спальных кровати,  диван, набор мебели для столовой , кухня с набором посуды
3906	13	980191287	
3907	14	980191287	
3908	1	980191287	
3909	10	980191287	
3910	2	980191287	
3911	3	980191287	
3912	4	980191287	
3913	5	980191287	
3914	6	980191287	
3915	8	980191287	
3916	11	980191287	
3917	15	980191287	
3918	13	980191288	
3919	14	980191288	
3920	1	980191288	
3921	10	980191288	
3922	2	980191288	
3923	3	980191288	
3924	4	980191288	
3925	5	980191288	
3926	6	980191288	
3927	8	980191288	
3928	11	980191288	
3929	15	980191288	
3930	13	980191289	
3931	14	980191289	
3932	1	980191289	
3933	10	980191289	
3934	2	980191289	
3935	3	980191289	
3936	4	980191289	
3937	5	980191289	
3938	6	980191289	
3939	8	980191289	
3940	11	980191289	
3941	15	980191289	
3942	13	980191290	
3943	14	980191290	
3944	1	980191290	
3945	10	980191290	
3946	2	980191290	
3947	3	980191290	
3948	4	980191290	
3949	5	980191290	
3950	6	980191290	
3951	8	980191290	
3952	11	980191290	
3953	15	980191290	
3954	13	980191291	
3955	14	980191291	
3956	1	980191291	
3957	10	980191291	в номере
3958	2	980191291	нет
3959	3	980191291	кабельное, ЖК-телевизор
3960	4	980191291	ежеденвно
3962	6	980191291	на номер
3964	11	980191291	нет
3965	15	980191291	одноместная кровать
3966	13	980191292	
3967	14	980191292	
3968	1	980191292	
3977	15	980191292	
3969	10	980191292	в номере
3970	2	980191292	нет
3971	3	980191292	кабельное, ЖК-телевизор
3973	5	980191292	душевая кабинка, раковина, туалет
3974	6	980191292	на номер
3975	8	980191292	кондиционер, телефон
3976	11	980191292	нет
3961	5	980191291	душевая кабинка, раковина, туалет
3963	8	980191291	кондиционер, телефон
3972	4	980191292	ежедневно
3978	13	980191293	
3979	14	980191293	
3980	1	980191293	
3981	10	980191293	в номере
3982	2	980191293	нет
3983	3	980191293	кабельное, ЖК-телевизор
3984	4	980191293	ежедневно
3985	5	980191293	душевая кабинка, раковина, туалет
3986	6	980191293	на номер
3987	8	980191293	кондиционер, телефон
3988	11	980191293	нет
3989	15	980191293	
3990	13	980191294	
3991	14	980191294	
3992	1	980191294	
3993	10	980191294	в номере
3994	2	980191294	
3995	3	980191294	
3998	6	980191294	
3999	8	980191294	сплит-система, фен
4000	11	980191294	в номере
4001	15	980191294	
4002	13	980191295	
4003	14	980191295	
4004	1	980191295	
4005	10	980191295	в номере
4006	2	980191295	
4007	3	980191295	
4010	6	980191295	на номер
4011	8	980191295	сплит-система, фен
4012	11	980191295	в номере
4013	15	980191295	
4014	13	980191296	
4015	14	980191296	
4016	1	980191296	
4017	10	980191296	в номере
4018	2	980191296	
4019	3	980191296	
4021	5	980191296	душ, раковина, туалет
4022	6	980191296	
4023	8	980191296	сплит-система, фен
4024	11	980191296	в номере
4025	15	980191296	
4026	13	980191297	
4027	14	980191297	
4028	1	980191297	
4029	10	980191297	в номере
4030	2	980191297	
4031	3	980191297	
4033	5	980191297	ванна, раковина, туалет
4034	6	980191297	
4035	8	980191297	сплит-система, фен
4036	11	980191297	в номере
4037	15	980191297	
4038	13	980191298	
4039	14	980191298	
4040	1	980191298	
4041	10	980191298	в номере
4042	2	980191298	
4043	3	980191298	
4045	5	980191298	ванна, раковина, туалет
4046	6	980191298	
4047	8	980191298	сплит-система, фен
4048	11	980191298	в номере
4049	15	980191298	
4050	13	980191299	
4051	14	980191299	
4052	1	980191299	
4054	2	980191299	
4055	3	980191299	
4053	10	980191299	в номере
3997	5	980191294	ванна, раковина, туалет
4009	5	980191295	ванна, раковина, туалет
3996	4	980191294	ежедневно
4008	4	980191295	ежедневно
4020	4	980191296	ежедневно
4032	4	980191297	ежедневно
4044	4	980191298	ежедневно
4056	4	980191299	ежедневно
4058	6	980191299	
4061	15	980191299	
4154	6	980191307	на номер
4059	8	980191299	сплит-система, фен
4060	11	980191299	в номере
4057	5	980191299	
4062	13	980191300	
4063	14	980191300	
4064	1	980191300	
4066	2	980191300	
4068	4	980191300	
4069	5	980191300	душ, раковина, туалет
4070	6	980191300	терраса
4071	8	980191300	 пепельница, 2 стакана, сплит-система, стул, телефон, трильяж с зеркалом.
4073	15	980191300	
4065	10	980191300	в номере
4067	3	980191300	эфирное
4072	11	980191300	нет
4074	13	980191301	
4075	14	980191301	
4076	1	980191301	
4077	10	980191301	в номере
4078	2	980191301	
4079	3	980191301	эфирное
4080	4	980191301	
4081	5	980191301	душ, раковина, туалет
4082	6	980191301	нет
4083	8	980191301	
4084	11	980191301	нет
4085	15	980191301	пепельница, 2 стакана, сплит-система, стул, телефон, трильяж с зеркалом.
4086	13	980191302	
4087	14	980191302	
4088	1	980191302	
4089	10	980191302	в номере
4090	2	980191302	
4091	3	980191302	эфирное
4092	4	980191302	
4093	5	980191302	душ, раковина, туалет
4094	6	980191302	на номер
4095	8	980191302	тапочки,  6 полотенец, мыло, гель для душа, пепельница, 2 стакана, сплит-система, стул, телефон, трильяж с зеркалом
4096	11	980191302	нет
4097	15	980191302	двуспальная кровать, 2 прикроватные тумбочки, гардероб с зеркалом 
4098	13	980191303	
4099	14	980191303	
4100	1	980191303	
4101	10	980191303	в номере
4102	2	980191303	
4103	3	980191303	эфирное
4104	4	980191303	
4105	5	980191303	душ, раковина, туалет
4106	6	980191303	нет
4107	8	980191303	
4108	11	980191303	нет
4109	15	980191303	 стул, телефон, трильяж с зеркалом, пепельница, 2 стакана, сплит-система .
4110	13	980191304	
4111	14	980191304	
4112	1	980191304	
4115	3	980191304	эфирное
4116	4	980191304	
4118	6	980191304	нет
4120	11	980191304	нет
4113	10	980191304	в номере
4114	2	980191304	нет
4117	5	980191304	душ, раковина, туалет
4122	13	980191305	
4123	14	980191305	
4124	1	980191305	
4125	10	980191305	в номере
4126	2	980191305	нет
4127	3	980191305	эфирное
4128	4	980191305	
4129	5	980191305	душ, раковина, туалет
4130	6	980191305	нет
4132	11	980191305	нет
4121	15	980191304	две односпальные кровати, две прикроватные тумбочки, шкаф, раскладной диван, туалетный столик с зеркалом, журнальный столик, телефон.
4133	15	980191305	две односпальные кровати, две прикроватные тумбочки, шкаф, раскладной диван, туалетный столик с зеркалом, журнальный столик, телефон.
4134	13	980191306	
4135	14	980191306	
4136	1	980191306	
4137	10	980191306	в номере
4138	2	980191306	нет
4139	3	980191306	эфирное
4140	4	980191306	
4141	5	980191306	душ, раковина, туалет
4142	6	980191306	нет
4144	11	980191306	нет
4145	15	980191306	две односпальные кровати, две прикроватные тумбочки, шкаф, раскладной диван, туалетный столик с зеркалом, журнальный столик, телефон.
4146	13	980191307	
4147	14	980191307	
4148	1	980191307	
4149	10	980191307	в номере
4150	2	980191307	нет
4151	3	980191307	эфирное
4152	4	980191307	
4153	5	980191307	душевая кабинка, раковина, туалет
4156	11	980191307	нет
4157	15	980191307	кондиционер, двуспальная кровать, две прикроватные тумбочки, шкаф, раскладной диван, талетный столик с зеркалом, журнальный столик, телефон
4158	13	980191308	
4159	14	980191308	
4160	1	980191308	
4161	10	980191308	в номере
4162	2	980191308	нет
4163	3	980191308	эфирное
4164	4	980191308	
4165	5	980191308	душевая кабинка, раковина, туалет
4166	6	980191308	на номер
4168	11	980191308	нет
4269	10	980191317	в номере
4270	2	980191317	нет
4271	3	980191317	эфирное
4272	4	980191317	
4273	5	980191317	душ и санузел на 2 номера, на этаже
4274	6	980191317	нет
4275	8	980191317	
4276	11	980191317	нет
4169	15	980191308	кондиционер, две односпальные кровати, две прикроватные тумбочки, шкаф, мягкая мебель, туалетный столик с зеркалом, журнальный столик,телефон. 
4170	13	980191309	
4171	14	980191309	
4172	1	980191309	
4173	10	980191309	в номере
4174	2	980191309	нет
4175	3	980191309	эфирное
4176	4	980191309	
4178	6	980191309	на номер
4180	11	980191309	нет
4181	15	980191309	кондиционер, две односпальные кровати, две прикроватные тумбочки, шкаф, мягкая мебель, туалетный столик с зеркалом, журнальный столик,телефон. 
4177	5	980191309	душевая кабинка, раковина, туалет
4182	13	980191310	
4183	14	980191310	
4184	1	980191310	
4185	10	980191310	2 на номер
4187	3	980191310	эфирное,  2 телевизора
4188	4	980191310	
4190	6	980191310	на номер
4192	11	980191310	
4193	15	980191310	Номер состоит из двух комнат, которые могут закрываться отдельно. В номере: 2 кондиционера, 2 двуспальные кровати - в разных комнатах, 4 прикроватные тумбочки, 2 шкафа,мягкая мебель, 2 туалетных столика с зеркалом, 2 журнальных столика, телефон.
4186	2	980191310	нет
4194	13	980191311	
4195	14	980191311	
4196	1	980191311	
4197	10	980191311	2 на номер
4198	2	980191311	нет
4199	3	980191311	эфирное,  2 телевизора
4200	4	980191311	
4201	5	980191311	душевая кабинка, раковина, туалет
4202	6	980191311	на номер
4204	11	980191311	нет
4205	15	980191311	Номер состоит из двух комнат, которые могут закрываться отдельно. В номере: 2 кондиционера, 2 двуспальные кровати - в разных комнатах, 4 прикроватные тумбочки, 2 шкафа,мягкая мебель, 2 туалетных столика с зеркалом, 2 журнальных столика, телефон.
4206	13	980191312	
4207	14	980191312	
4208	1	980191312	
4209	10	980191312	2 на номер
4210	2	980191312	нет
4211	3	980191312	эфирное,  2 телевизора
4212	4	980191312	
4213	5	980191312	душевая кабинка, раковина, туалет
4214	6	980191312	на номер
4216	11	980191312	нет
4217	15	980191312	Номер состоит из двух комнат, которые могут закрываться отдельно. В номере: 2 кондиционера, 2 двуспальные кровати - в разных комнатах, 4 прикроватные тумбочки, 2 шкафа,мягкая мебель, 2 туалетных столика с зеркалом, 2 журнальных столика, телефон.
4218	13	980191313	
4219	14	980191313	
4220	1	980191313	
4221	10	980191313	2 на номер
4222	2	980191313	нет
4223	3	980191313	эфирное,  2 телевизора
4224	4	980191313	
4225	5	980191313	душевая кабинка, раковина, туалет
4226	6	980191313	на номер
4228	11	980191313	нет
4229	15	980191313	Номер состоит из двух комнат, которые могут закрываться отдельно. В номере: 2 кондиционера, 2 двуспальные кровати - в разных комнатах, 4 прикроватные тумбочки, 2 шкафа,мягкая мебель, 2 туалетных столика с зеркалом, 2 журнальных столика, телефон.
4230	13	980191314	
4231	14	980191314	
4232	1	980191314	
4233	10	980191314	в номере
4234	2	980191314	нет
4235	3	980191314	эфирное
4236	4	980191314	
4237	5	980191314	душ, раковина, туалет
4238	6	980191314	на номер
4240	11	980191314	нет
4241	15	980191314	кондиционер, две односпальные кровати, две прикроватные тумбочки, шкаф, журнальный столик, телефон.
4242	13	980191315	
4243	14	980191315	
4244	1	980191315	
4245	10	980191315	в номере
4246	2	980191315	нет
4247	3	980191315	эфирнон
4248	4	980191315	
4249	5	980191315	душ, раковина, туалет
4250	6	980191315	на номер
4252	11	980191315	нет
4253	15	980191315	кондиционер, две односпальные кровати, две прикроватные тумбочки, шкаф, журнальный столик, телефон.
4254	13	980191316	
4255	14	980191316	
4256	1	980191316	
4257	10	980191316	в номере
4258	2	980191316	нет
4259	3	980191316	эфирное
4260	4	980191316	
4261	5	980191316	душ и санузел на 2 номера, на этаже
4262	6	980191316	нет
4263	8	980191316	
4264	11	980191316	нет
4266	13	980191317	
4267	14	980191317	
4268	1	980191317	
4277	15	980191317	доп.место -\r\nдиван, кресло-кровать или раскладушка
4265	15	980191316	доп.место -\r\nдиван, кресло-кровать или раскладушка
4143	8	980191306	доп.место - диван, кресло-кровать или раскладушка
4155	8	980191307	доп.место - диван, кресло-кровать или раскладушка
4167	8	980191308	доп.место - диван, кресло-кровать или раскладушка
4179	8	980191309	доп.место - диван, кресло-кровать или раскладушка
4119	8	980191304	доп.место - диван, кресло-кровать или раскладушка
4131	8	980191305	доп.место - диван, кресло-кровать или раскладушка
4239	8	980191314	доп.место - диван, кресло-кровать или раскладушка
4251	8	980191315	доп.место - диван, кресло-кровать или раскладушка
4203	8	980191311	доп.место - диван, кресло-кровать или раскладушка
4189	5	980191310	душевая кабинка, раковина, туалет
4191	8	980191310	доп.место - диван, кресло-кровать или раскладушка
4215	8	980191312	доп.место - диван, кресло-кровать или раскладушка
4227	8	980191313	доп.место - диван, кресло-кровать или раскладушка
4278	13	980191318	
4279	14	980191318	
4280	1	980191318	
4281	10	980191318	в номере
4282	2	980191318	нет
4283	3	980191318	эфирное
4284	4	980191318	
4285	5	980191318	душ, раковина, туалет
4286	6	980191318	
4287	8	980191318	
4288	11	980191318	нет
4289	15	980191318	кондиционер, две односпальные кровати или одна двуспальная, две прикроватные тумбочки, шкаф, туалетный столик с зеркалом, два стула, журнальный столик, телефон
4290	13	980191319	
4291	14	980191319	
4292	1	980191319	
4293	10	980191319	в номере
4294	2	980191319	нет
4295	3	980191319	эфирное
4296	4	980191319	
4297	5	980191319	ванна, раковина, туалет
4298	6	980191319	
4300	11	980191319	нет
4302	13	980191320	
4303	14	980191320	
4304	1	980191320	
4305	10	980191320	в номере
4306	2	980191320	нет
4307	3	980191320	эфирное
4308	4	980191320	
4309	5	980191320	ванна, раковина, туалет
4310	6	980191320	
4312	11	980191320	нет
4299	8	980191319	кондиционер
4311	8	980191320	кондиционер
4314	13	980191321	
4315	14	980191321	
4316	1	980191321	
4317	10	980191321	в номере
4318	2	980191321	нет
4319	3	980191321	эфирное
4320	4	980191321	
4321	5	980191321	ванна, раковина, туалет
4322	6	980191321	
4323	8	980191321	кондиционер
4324	11	980191321	нет
4326	13	980191322	
4327	14	980191322	
4328	1	980191322	
4329	10	980191322	в номере
4330	2	980191322	нет
4331	3	980191322	эфирное
4332	4	980191322	
4333	5	980191322	ванна, раковина, туалет
4334	6	980191322	лоджия
4335	8	980191322	кондиционер
4336	11	980191322	нет
4301	15	980191319	двуспальные кровати, двухместный диван (дополнительное место), 2 тумбочки, шкаф, стол, стулья, 
4313	15	980191320	двуспальные кровати, двухместный диван (дополнительное место), 2 тумбочки, шкаф, стол, стулья.
4325	15	980191321	двуспальные кровати, двухместный диван (дополнительное место), 2 тумбочки, шкаф, стол, стулья.
4337	15	980191322	двуспальные кровати, двухместный диван (дополнительное место), 2 тумбочки, шкаф, стол, стулья.
4338	13	980191323	
4339	14	980191323	
4341	10	980191323	в номере
4342	2	980191323	нет
4343	3	980191323	эфирное
4345	5	980191323	дешевая кабинка, раковина, туалет
4346	6	980191323	нет
4347	8	980191323	двуспальная кровать (или две односпальные кровати), прикроватные тумбочки, шкаф, диван-кровать, туалетный стол с зеркалом, кондиционер.
4348	11	980191323	нет
4349	15	980191323	
4350	13	980191324	
4351	14	980191324	
4353	10	980191324	в номере
4354	2	980191324	нет
4355	3	980191324	эфирное
4357	5	980191324	дешевая кабинка, раковина, туалет
4358	6	980191324	нет
4359	8	980191324	
4360	11	980191324	нет
4361	15	980191324	двуспальная кровать (или две односпальные кровати), прикроватные тумбочки, туалетный стол с зеркалом, тумба под телевизор, кресло-кровать, шкаф-купе, кондиционер. Регулируемое освещение.
4362	13	980191325	
4363	14	980191325	
4365	10	980191325	в номере
4366	2	980191325	нет
4367	3	980191325	эфирное
4369	5	980191325	дешевая кабинка, раковина, туалет
4370	6	980191325	на номер
4371	8	980191325	
4372	11	980191325	нет
4373	15	980191325	две спальни, двуспальная кровать, две односпальные кровати, прикроватные тумбочки, шкаф, журнальный столик, туалетный стол с зеркалом, кондиционер
4374	13	980191326	
4375	14	980191326	
4377	10	980191326	в номере
4378	2	980191326	нет
4379	3	980191326	эфирное
4381	5	980191326	ванна, раковина, туалет.
4382	6	980191326	на номер
4383	8	980191326	
4384	11	980191326	нет
4385	15	980191326	гостиная, спальня,  двуспальная кровать, прикроватные тумбочки, набор мягкой мебели, шкаф, туалетный стол с зеркалом,  кондиционер
4376	1	980191326	раз в 5 дней
4380	4	980191326	1 раз в день
4340	1	980191323	раз в 5 дней
4344	4	980191323	1 раз в день
4352	1	980191324	раз в 5 дней
4356	4	980191324	1 раз в день
4364	1	980191325	раз в 5 дней
4368	4	980191325	1 раз в день
4386	13	980191327	
4387	14	980191327	
4388	1	980191327	раз в 5 дней
4389	10	980191327	в номере
4390	2	980191327	нет
4391	3	980191327	эфирное
4392	4	980191327	ежедневно
4393	5	980191327	ванна, раковина, туалет
4394	6	980191327	нет
4395	8	980191327	спит-система
4396	11	980191327	нет
4397	15	980191327	
4398	13	980191328	
4399	14	980191328	
4400	1	980191328	раз в 5 дней
4401	10	980191328	в номере
4402	2	980191328	нет
4403	3	980191328	эфирное
4404	4	980191328	ежедневно
4405	5	980191328	ванна, раковина, туалет
4406	6	980191328	
4407	8	980191328	спит-система
4408	11	980191328	нет
4409	15	980191328	
4410	13	980191329	
4411	14	980191329	
4412	1	980191329	1 раз в 3 дня, смена полотенец ежедневно
4413	10	980191329	в номере
4414	2	980191329	нет
4415	3	980191329	эфирное
4416	4	980191329	1 раз в день
4418	6	980191329	на номер, оборудован сушилкой
4419	8	980191329	 room-сервис, Wi-Fi, услуги местной телефонной связи; сплит-система, телевизор, холодильник, телефон
4420	11	980191329	нет
4421	15	980191329	односпальная кровать, прикроватные тумбочки, шкаф, туалетный столик
4422	13	980191330	
4423	14	980191330	
4424	1	980191330	1 раз в 3 дня, смена полотенец ежедневно
4425	10	980191330	в номере
4426	2	980191330	нет
4427	3	980191330	эфирное
4428	4	980191330	1 раз в день
4433	15	980191330	двуспальная кровать бокс-спринг, прикроватные тумбочки, диван, шкаф, стол, вешалка, зеркало. Доп. место - раскладной диван, кресло-кровать
4431	8	980191330	room-сервис, Wi-Fi, услуги местной телефонной связи, сплит-система, телевизор, мини-холодильник, телефон.
4434	13	980191331	
4435	14	980191331	
4436	1	980191331	1 раз в 3 дня, смена полотенец ежедневно
4437	10	980191331	в номере
4438	2	980191331	нет
4439	3	980191331	эфирное
4440	4	980191331	1 раз в день
4441	5	980191331	ванна, раковина, туалет, фен, туалетные принадлежности.
4442	6	980191331	
4443	8	980191331	room-сервис, Wi-Fi, услуги местной телефонной связи, сплит-система, телевизор, мини-холодильник, телефон.
4444	11	980191331	нет
4445	15	980191331	 двуспальная кровать бокс-спринг, прикроватные тумбочки, диван, шкаф, стол, стулья, вешалка, зеркало. Доп. место - раскладной диван.
4446	13	980191332	
4447	14	980191332	
4448	1	980191332	1 раз в 3 дня, смена полотенец ежедневно
4449	10	980191332	в номере
4450	2	980191332	нет
4451	3	980191332	эфирное, 2 телевизора (в гостиной и спальне)
4452	4	980191332	1 раз в день
4453	5	980191332	оборудован ванной джакузи, раковиной, унитазом, биде и визион на необходимое количество человек, фен.
4454	6	980191332	на номер,  8 метров длиной с видом на море. 
4455	8	980191332	Каждая комната оборудована Сплит системой зима-лето.
4456	11	980191332	нет
4430	6	980191330	на номер
4876	11	980191367	нет
4877	15	980191367	двуспальная кровать, диван-кровать, кресло-кровать, шкаф, прикроватные тумбочки, журнальный столик, туалетный столик, зеркало.
4878	13	980191368	
4457	15	980191332	Прихожая: шкаф, зеркало, вешалка, обувница. Гостиная: мягкая мебель, журнальный столик, барная стойка,раковина, микроволновка, чайник, посуда. Спальня – большая двуспальная кровать с ортопедическим матрасом. Две тумбы. Туалетный столик с зеркалом.
4417	5	980191329	душ (поддон), раковина, туалет, фен, туалетные принадлежности, сушка для полотенец.
4429	5	980191330	ванна, раковина, туалет, фен, туалетные принадлежности, сушка для полотенец.
4432	11	980191330	нет
4458	13	980191333	
4459	14	980191333	
4460	1	980191333	раз в 5 дней
4461	10	980191333	в номере
4462	2	980191333	нет
4464	4	980191333	ежедневно
4465	5	980191333	 санузел в блоке.
4466	6	980191333	
4467	8	980191333	
4468	11	980191333	нет
4469	15	980191333	1-сп кровать – 2 шт., кондиционер, интернет Wi Fi, посуда, стол, стулья, зеркало.
4470	13	980191334	
4471	14	980191334	
4472	1	980191334	раз в 5 дней
4473	10	980191334	в номере
4474	2	980191334	нет
4476	4	980191334	ежедневно
4477	5	980191334	душ, раковина, туалет
4478	6	980191334	балкон-лоджия с балконной мебелью.
4479	8	980191334	
4480	11	980191334	нет
4481	15	980191334	2-сп. кровать, прикроватные тумбочки, кондиционер, интернет,  посуда, шкаф, зеркало, стол, стулья
4482	13	980191335	
4483	14	980191335	
4484	1	980191335	раз в 5 дней
4485	10	980191335	в номере
4486	2	980191335	нет
4488	4	980191335	ежедневно
4489	5	980191335	душ, раковина, туалет
4490	6	980191335	на номер
4491	8	980191335	
4492	11	980191335	нет
4493	15	980191335	1-сп. кровать – 2шт., прикроватные тумбочки, кондиционер, интернет, электрочайник, посуда, шкаф, зеркало, стол, стулья
4494	13	980191336	
4495	14	980191336	
4496	1	980191336	раз в 5 дней
4497	10	980191336	в номере
4498	2	980191336	нет
4500	4	980191336	ежедневно
4501	5	980191336	душ, раковина, туалет
4502	6	980191336	на номер
4503	8	980191336	
4504	11	980191336	нет 
4505	15	980191336	2-сп. кровать, прикроватные тумбочки, 2-сп. диван, кондиционер,  интернет, электрочайник, посуда, шкаф, зеркало, стол, стулья.
4506	13	980191337	
4507	14	980191337	
4508	1	980191337	раз в 5 дней
4509	10	980191337	в номере
4510	2	980191337	нет
4512	4	980191337	ежедневно
4513	5	980191337	душ, раковина,туалет
4514	6	980191337	
4515	8	980191337	
4516	11	980191337	нет
4517	15	980191337	2-сп. кровать – 2шт., прикроватные тумбочки, угловой раскладной диван, кондиционер, интернет, посуда, шкаф, зеркало, стол обеденный, журнальный стол, стол компьютерный, стулья, пуфики.
4518	13	980191338	
4519	14	980191338	
4520	1	980191338	раз в 5 дней
4521	10	980191338	в номере
4522	2	980191338	нет
4524	4	980191338	ежедневно
4525	5	980191338	душ, раковина, туалет
4526	6	980191338	
4527	8	980191338	
4528	11	980191338	нет
4529	15	980191338	1,5 сп. кровати – 2 шт., прикроватные тумбочки, комод, стол, стулья, шкаф, зеркало, интернет wi-fi, посуда.
4530	13	980191339	
4531	14	980191339	
4532	1	980191339	
4533	10	980191339	в номере
4534	2	980191339	нет
4536	4	980191339	ежедневно
4537	5	980191339	душ, раковина, туалет
4538	6	980191339	
4539	8	980191339	
4540	11	980191339	нет
4541	15	980191339	1,5 сп. кровати – 2 шт., 1 сп. кровать (кресло-кровать или диван-кровать) прикроватные тумбочки, комод, стол, стулья, шкаф, зеркало, интернет wi-fi,посуда.
4542	13	980191340	
4543	14	980191340	
4544	1	980191340	раз в 5 дней
4545	10	980191340	в номере
4546	2	980191340	нет
4548	4	980191340	ежедневно
4549	5	980191340	душ, раковина, туалет
4550	6	980191340	на номер (с мебелью), с видом на море.
4551	8	980191340	
4552	11	980191340	нет
4853	15	980191365	односпальные или двуспальная кровати, кресло-кровать, шкаф, прикроватные тумбочки, журнальный столик, зеркало.
4553	15	980191340	1,5 сп. кровати – 2 шт., 1 сп. кровать (или кресло-кровать, иди диван-кровать) прикроватные тумбочки, комод, стол, стулья, шкаф, зеркало,  интернет wi-fi,посуда.
4554	13	980191341	
4555	14	980191341	
4556	1	980191341	
4557	10	980191341	в номере
4558	2	980191341	нет
4559	3	980191341	кабельное
4560	4	980191341	
4561	5	980191341	ванна, раковина, туалет
4562	6	980191341	
4564	11	980191341	нет
4565	15	980191341	двуспальная или две раздельных кровати, тумбочка, шкаф, стулья, зеркало.
4563	8	980191341	кондиционер,  Wi-Fi интернет бесплатно.
4566	13	980191342	
4567	14	980191342	
4568	1	980191342	
4569	10	980191342	в номере
4570	2	980191342	нет
4571	3	980191342	кабельное
4572	4	980191342	
4573	5	980191342	 Отдельный санузел с ванной и туалетом, оснащен необходимыми принадлежностями. 
4574	6	980191342	
4575	8	980191342	кондиционер,  Wi-Fi интернет бесплатно.
4576	11	980191342	нет
4577	15	980191342	двуспальная кровать, отдельная кровать, диван, тумбочки, стол, стулья, вешалка, зеркало.
4578	13	980191343	
4579	14	980191343	
4580	1	980191343	
4581	10	980191343	в номере
4582	2	980191343	нет
4583	3	980191343	кабельное.
4584	4	980191343	
4585	5	980191343	ванна, раковина, туалет
4586	6	980191343	на номер.
4587	8	980191343	кондиционер,  Wi-Fi интернет бесплатно.
4588	11	980191343	нет
4589	15	980191343	двуспальная кровать, прикроватные тумбочки, диван, шкаф, стол, стулья, туалетный столик. 
4590	13	980191344	
4591	14	980191344	
4592	1	980191344	
4593	10	980191344	в номере
4594	2	980191344	нет
4595	3	980191344	кабельное, ЖК телевизор
4596	4	980191344	
4597	5	980191344	ванна, раковина, туалет
4598	6	980191344	на номер
4599	8	980191344	кондиционер,  Wi-Fi интернет бесплатно.
4600	11	980191344	нет
4601	15	980191344	двуспальная или 2 отдельных кровати, кресло, прикроватные тумбочки, шкаф, стулья, стол, туалетный столик.
4602	13	980191345	
4603	14	980191345	
4604	1	980191345	
4605	10	980191345	в номере
4606	2	980191345	нет
4607	3	980191345	эфирное
4608	4	980191345	ежедневно
4609	5	980191345	душ, раковина, туалет
4610	6	980191345	
4611	8	980191345	кондиционер
4612	11	980191345	нет
4613	15	980191345	две кровати, тумбочки, шкаф для одежды, стол, стулья.
4614	13	980191346	
4615	14	980191346	
4616	1	980191346	
4617	10	980191346	в номере
4618	2	980191346	нет
4619	3	980191346	эфирное
4620	4	980191346	ежедневно
4622	6	980191346	
4623	8	980191346	кондиционер
4624	11	980191346	нет
4625	15	980191346	две кровати, тумбочки, шкаф для одежды, стол, стулья.
4626	13	980191347	
4627	14	980191347	
4628	1	980191347	
4629	10	980191347	в номере
4630	2	980191347	нет
4631	3	980191347	эфирное
4632	4	980191347	ежедневно
4633	5	980191347	душ, раковина, туалет
4634	6	980191347	
4635	8	980191347	кондиционер
4636	11	980191347	нет
4637	15	980191347	мягкая мебель, две кровати, тумбочки, шкаф для одежды, стол, стулья.
4638	13	980191348	
4639	14	980191348	
4640	1	980191348	
4641	10	980191348	общий на этаже
4642	2	980191348	нет
4643	3	980191348	общий на этаже
4644	4	980191348	ежедневно
4645	5	980191348	 санузел и душ раздельный – общий на этаже.
4646	6	980191348	
4647	8	980191348	
4648	11	980191348	нет
4649	15	980191348	три кровати, тумбочки, стол, стулья. 
4650	13	980191349	
4651	14	980191349	
4652	1	980191349	
4653	10	980191349	общий на этаже
4654	2	980191349	нет
4655	3	980191349	общий на этаже
4656	4	980191349	ежедневно
4657	5	980191349	санузел и душ раздельный – общий на этаже.
4658	6	980191349	
4659	8	980191349	
4660	11	980191349	нет
4661	15	980191349	четыре кровати, тумбочки, стол, стулья. 
4621	5	980191346	ванна, раковина, туалет
4662	13	980191350	
4663	14	980191350	
4664	1	980191350	раз в 5 дней
4665	10	980191350	в номере
4666	2	980191350	нет
4667	3	980191350	эфирное
4668	4	980191350	ежедневно
4854	13	980191366	
4855	14	980191366	
4670	6	980191350	
4672	11	980191350	нет
4673	15	980191350	односпальная и двуспальная кровати, диван-кровать, шкаф, стулья, прикроватные тумбочки, столик, вешалка,.
4671	8	980191350	кондиционер, набор посуды
4674	13	980191351	
4675	14	980191351	
4676	1	980191351	раз в 5 дней
4677	10	980191351	в номере
4678	2	980191351	нет
4679	3	980191351	эфирное
4680	4	980191351	ежедневно
4681	5	980191351	душевая кабина, унитаз, раковина, полотенцесушитель, набор полотенец, туалетные принадлежности, пластиковый таз для стирки. 
4682	6	980191351	
4683	8	980191351	кондиционер, набор посуды.
4684	11	980191351	нет
4685	15	980191351	односпальная и двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка, зеркало
4686	13	980191352	
4687	14	980191352	
4688	1	980191352	раз в 5 дней.
4689	10	980191352	в номере
4690	2	980191352	нет
4691	3	980191352	эфирное
4692	4	980191352	ежедневно
4694	6	980191352	
4695	8	980191352	кондиционер, набор посуды.
4696	11	980191352	нет
4697	15	980191352	односпальная и двуспальная кровати, шкаф, стулья, прикроватные тумбочки, журнальный столик, вешалка, зеркало.
4698	13	980191353	
4699	14	980191353	
4700	1	980191353	раз в 5 дней
4701	10	980191353	в номере
4702	2	980191353	нет
4703	3	980191353	эфирное
4704	4	980191353	ежедневно
4706	6	980191353	
4707	8	980191353	кондиционер, набор посуды.
4708	11	980191353	нет
4709	15	980191353	двуспальная кровать, диван-кровать, шкаф, стулья, прикроватные тумбочки, журнальный столик, туалетный столик, вешалка, зеркало.
4669	5	980191350	душ, унитаз, раковина, полотенцесушитель, набор полотенец, туалетные принадлежности, пластиковый таз для стирки. 
4693	5	980191352	душ кабина, унитаз, раковина, полотенцесушитель, набор полотенец, туалетные принадлежности, пластиковый таз для стирки. 
4705	5	980191353	душ, унитаз, раковина, полотенцесушитель, набор полотенец, туалетные принадлежности, пластиковый таз для стирки. 
4710	13	980191354	
4711	14	980191354	
4712	1	980191354	раз в 5 дней
4713	10	980191354	в номере
4714	2	980191354	нет
4715	3	980191354	эфирное, ЖК телевизор
4716	4	980191354	ежедневно
4717	5	980191354	душ, туалет, раковина, туалетная полочка с зеркалом, туалетные принадлежности, комплект банных полотенец.
4718	6	980191354	на номер
4719	8	980191354	кондиционер
4720	11	980191354	нет
4721	15	980191354	двухспальная  и односпальная кровать, прикроватные тумбочки, платяной шкаф, туалетный столик. Доп. место – евро-раскладушка.
4722	13	980191355	
4723	14	980191355	
4724	1	980191355	
4725	10	980191355	в номере
4726	2	980191355	нет
4727	3	980191355	эфирное
4728	4	980191355	
4729	5	980191355	душевая кабинка, раковина, туалет.
4730	6	980191355	
4731	8	980191355	
4732	11	980191355	нет
4734	13	980191356	
4735	14	980191356	
4736	1	980191356	
4737	10	980191356	в номере
4738	2	980191356	нет
4739	3	980191356	эфирное
4740	4	980191356	
4741	5	980191356	душевая кабинка, раковина, туалет, фен.
4742	6	980191356	
4743	8	980191356	утюг, гладильная доска, сплит-система.
4744	11	980191356	нет
4733	15	980191355	мини-кухня, оборудованная гарнитуром с чайной и столовой посудой, сплит-система, платяной шкаф, прикроватные тумбочки, односпальные кровати (сдвигаются и раздвигаются), туалетный столик, зеркало, стол, стулья.
4856	1	980191366	
4857	10	980191366	в номере
4858	2	980191366	нет
4859	3	980191366	эфирное
4860	4	980191366	
4861	5	980191366	душ, раковина, туалет, сейф.
4862	6	980191366	
4863	8	980191366	кондиционер, посуда, интернет.
4864	11	980191366	нет
4865	15	980191366	односпальные или двуспальная кровати, шкаф, прикроватные тумбочки, зеркало.
4866	13	980191367	
4867	14	980191367	
4868	1	980191367	
4869	10	980191367	в номере
4745	15	980191356	Гостиная - раздвижной диван, шкаф-прихожая, оборудованная мини-кухня, стол, стулья. Спальня - двухспальная кровать, прикроватные тумбочки, платяной шкаф, комод, туалетный столик с зеркалом.
4746	13	980191357	
4747	14	980191357	
4748	1	980191357	
4752	4	980191357	
4755	8	980191357	сплит-система, музыкальный центр с «караоке».
4756	11	980191357	в номере
4757	15	980191357	Гостиная: шкаф, диван, мини-кухня, стол, стулья, кресло. 1-я Спальня: 2-х спальная кровать, прикроватные тумбочки, шкаф, комод, туалетный столик с зеркалом. 2-я Спальня: две односпальные кровати, прикроватные тумбочки, шкаф, туалетный столик с зеркалом.
4749	10	980191357	в номере
4750	2	980191357	нет
4751	3	980191357	эфирное, два телевизора в гостиной и спальне.
4753	5	980191357	душевая кабинка, раковина, туалет, фен.
4754	6	980191357	на номер, шезлонги.
4758	13	980191358	
4759	14	980191358	
4760	1	980191358	
4761	10	980191358	в номере
4762	2	980191358	нет
4763	3	980191358	эфирное
4764	4	980191358	
4765	5	980191358	душ, раковина, туалет.
4767	8	980191358	Сплит-система
4768	11	980191358	нет
4769	15	980191358	стол, тумбочка, шкаф для одежды.
4766	6	980191358	наномер
4770	13	980191359	
4771	14	980191359	
4772	1	980191359	
4773	10	980191359	в номере
4774	2	980191359	нет
4775	3	980191359	эфирное
4776	4	980191359	
4777	5	980191359	душ, раковина, туалет.
4778	6	980191359	нет
4779	8	980191359	сплит-система.
4780	11	980191359	нет
4781	15	980191359	
4782	13	980191360	
4783	14	980191360	
4784	1	980191360	
4785	10	980191360	в номере
4786	2	980191360	нет
4787	3	980191360	эфирное
4788	4	980191360	
4789	5	980191360	душ, раковина, туалет.
4790	6	980191360	на номер
4791	8	980191360	
4792	11	980191360	нет
4793	15	980191360	
4794	13	980191361	
4795	14	980191361	
4796	1	980191361	
4797	10	980191361	в номере
4798	2	980191361	нет
4799	3	980191361	эфирное
4800	4	980191361	
4801	5	980191361	душ, раковина, туалет.
4802	6	980191361	
4803	8	980191361	сплит-система, телефон внутренней и междугородней связи. 
4804	11	980191361	нет
4805	15	980191361	оснащен двухспальной кроватью, раскладным диваном и креслом. Стол, тумбочка, шкаф для одежды.
4806	13	980191362	
4807	14	980191362	
4808	1	980191362	раз в 5 дней
4809	10	980191362	в номере
4810	2	980191362	нет
4811	3	980191362	эфирное
4812	4	980191362	по запросу
4813	5	980191362	душ, раковина, туалет
4814	6	980191362	нет
4815	8	980191362	сплит-система, интернет
4816	11	980191362	нет
4817	15	980191362	двуспальная или две односпальные кровати\r\n
4818	13	980191363	
4819	14	980191363	
4820	1	980191363	раз в 5 дней
4821	10	980191363	в номере
4822	2	980191363	нет
4823	3	980191363	эфирное
4824	4	980191363	по требованию
4825	5	980191363	душ, раковина, туалет
4826	6	980191363	нет
4827	8	980191363	сплит-система, интернет
4828	11	980191363	нет
4829	15	980191363	двуспальная кровать + кресло-кровать
4830	13	980191364	
4831	14	980191364	
4832	1	980191364	раз в 5 дней
4833	10	980191364	в номере
4834	2	980191364	нет
4835	3	980191364	эфирное
4836	4	980191364	по требованию
4837	5	980191364	душ, раковина, туалет.
4838	6	980191364	два на номер
4839	8	980191364	сплит-система, интернет
4840	11	980191364	нет
4841	15	980191364	спальня – двуспальная кровать, гостиная – двуспальный диван, кресло-кровать; комнаты раздельные.
4842	13	980191365	
4843	14	980191365	
4844	1	980191365	
4845	10	980191365	в номере
4846	2	980191365	нет
4847	3	980191365	эфирное
4848	4	980191365	
4849	5	980191365	санузел и душ на 2 номера
4850	6	980191365	терраса с летней мебелью.
4851	8	980191365	кондиционер, посуда, интернет.
4852	11	980191365	нет
4870	2	980191367	нет
4871	3	980191367	эфирное
4872	4	980191367	
4873	5	980191367	душ, раковина, туалет, сейф.
4874	6	980191367	на номер
4875	8	980191367	кондиционер, посуда, интернет.
4879	14	980191368	
4880	1	980191368	1 раз в 5 дней, смена полотенец 1 раз в 3 дня
4881	10	980191368	в номере
4882	2	980191368	нет
4883	3	980191368	эфирное
4884	4	980191368	ежедневно
4885	5	980191368	ванна, раковина, туалет, фен. 
4887	8	980191368	 сплит-система, телефон
4888	11	980191368	нет
4886	6	980191368	на номер
4889	15	980191368	двуспальная кровать или 2 односпальные кровати, прикроватные тумбочки, кресло-кровать, шкаф, туалетный столик, стулья, зеркало. Доп. место - (кресло-кровать.
4890	13	980191369	
4891	14	980191369	
4892	1	980191369	1 раз в 5 дней, смена полотенец 1 раз в 3 дня
4893	10	980191369	в номере
4894	2	980191369	нет
4895	3	980191369	эфирное
4896	4	980191369	ежедневно
4897	5	980191369	ванна, раковина, туалет, фен. 
4898	6	980191369	на номер
4899	8	980191369	 сплит-система, телефон
4900	11	980191369	нер
4901	15	980191369	двуспальная кровать или 2 односпальные кровати, прикроватные тумбочки, шкаф, туалетный столик, стулья, зеркало.  Доп. место - кресло-кровать.
4902	13	980191370	
4903	14	980191370	
4904	1	980191370	1 раз в 5 дней, смена полотенец 1 раз в 3 дня
4905	10	980191370	мини-холодильник 
4906	2	980191370	нет
4907	3	980191370	эфирное
4908	4	980191370	ежедневно
4909	5	980191370	ванна, раковина, туалет, фен. 
4910	6	980191370	на номер
4911	8	980191370	 сплит-система, телефон
4912	11	980191370	нет
4913	15	980191370	односпальная кровать, двуспальная кровать, прикроватные тумбочки, набор мягкой мебели, шкаф, туалетный столик, зеркало.  Доп. место - раскладной диван.
4914	13	980191371	
4915	14	980191371	
4916	1	980191371	раз в 5 дней
4917	10	980191371	в номере
4918	2	980191371	нет
4919	3	980191371	спутниковое 
4920	4	980191371	ежедневно
4921	5	980191371	душевая кабинка, раковина, туалет
4922	6	980191371	
4923	8	980191371	сплит-система, DVD
4924	11	980191371	нет
4925	15	980191371	
4926	13	980191372	
4927	14	980191372	
4928	1	980191372	раз в 5 дней
4929	10	980191372	в номере
4930	2	980191372	нет
4931	3	980191372	спуиниковое
4932	4	980191372	ежедневно
4933	5	980191372	душевая кабинка, раковина, туалет
4934	6	980191372	
4935	8	980191372	сплит-система, DVD
4936	11	980191372	нет
4937	15	980191372	
4938	13	980191373	
4939	14	980191373	
4940	1	980191373	
4941	10	980191373	один на три комнаты.
4942	2	980191373	нет
4943	3	980191373	эфирное
4944	4	980191373	
4945	5	980191373	один на три комнаты.
4946	6	980191373	
4947	8	980191373	кондиционер 
4948	11	980191373	нет
4949	15	980191373	кровать односпальная, кресло-кровать,  стол, стулья, шифоньер, тумбочка.
4950	13	980191374	
4951	14	980191374	
4952	1	980191374	
4953	10	980191374	один на две комнаты
4954	2	980191374	нет
4955	3	980191374	эфирное
4956	4	980191374	
4957	5	980191374	один на две комнаты
4958	6	980191374	
4959	8	980191374	вентилятор
4960	11	980191374	нет
4961	15	980191374	две кровати одноместные, стол, стулья, шифоньер, тумбочка.
4962	13	980191375	
4963	14	980191375	
4964	1	980191375	
4965	10	980191375	один на две комнаты
4966	2	980191375	нет
4967	3	980191375	эфирное
4968	4	980191375	
4969	5	980191375	один на две комнаты
4970	6	980191375	
4971	8	980191375	вентилятор
4972	11	980191375	нет
4973	15	980191375	две кровати одноместные , диван-кровать, стол, стулья, шифоньер, тумбочки.
4974	13	980191376	
4975	14	980191376	
4976	1	980191376	
4977	10	980191376	в номере
4978	2	980191376	нет
4979	3	980191376	эфирное
4980	4	980191376	
4981	5	980191376	душ, раковина, туалет
4982	6	980191376	
4983	8	980191376	кондиционер
4984	11	980191376	нет
4985	15	980191376	две одноместные кровати, стол, стулья, шифоньер, тумбочки. 
4986	13	980191377	
4987	14	980191377	
4988	1	980191377	
4989	10	980191377	в номере
4990	2	980191377	нет
4991	3	980191377	эфирное
4992	4	980191377	
4993	5	980191377	душ, раковина, туалет
4994	6	980191377	
4995	8	980191377	кондиционер
4996	11	980191377	нет
4997	15	980191377	две одноместные кровати или одна двухместная кровать, диван, стол, стулья, шифоньер, тумбочки.
4998	13	980191378	
4999	14	980191378	
5000	1	980191378	
5001	10	980191378	в номере
5002	2	980191378	нет
5003	3	980191378	ЖК, спутниковое телевидение. 
5004	4	980191378	
5005	5	980191378	душ, раковина, туалет
5006	6	980191378	
5007	8	980191378	подключение к интернету (безлимитное), сплит система, микроволновка, стиральная машинка автомат.
5008	11	980191378	нет
5009	15	980191378	с отдельным входом, на земле, есть двор с детской площадкой, мангал. Оборудованная кухня.
5010	13	980191379	
5011	14	980191379	
5012	1	980191379	1 раз в 5 дней, смена полотенец 1 раз в 5 дней
5013	10	980191379	в номере
5014	2	980191379	нет
5015	3	980191379	эфирное
5016	4	980191379	ежедневно
5017	5	980191379	ванна, раковина, туалет, туалетные принадлежности, таз.
5018	6	980191379	
5019	8	980191379	сплит-система, телефон, чайный набор посуды. room-сервис, услуги телефонной связи по территории отеля, услуги местной телефонной связи.
5020	11	980191379	нет
5021	15	980191379	две односпальные кровати/одна двуспальная кровать, прикроватные тумбочки, кресло-кровать, шкаф, стол, туалетный столик, стулья, пуфик, зеркало. Доп. место - кресло-кровать.
5022	13	980191380	
5023	14	980191380	
5024	1	980191380	1 раз в 5 дней, смена полотенец 1 раз в 5 дней
5025	10	980191380	в номере
5026	2	980191380	нет
5027	3	980191380	эфирное
5028	4	980191380	ежедневно
5029	5	980191380	ванна, раковина, туалет, туалетные принадлежности, таз.
5030	6	980191380	
5031	8	980191380	сплит-система, телефон, чайный набор посуды. room-сервис, услуги телефонной связи по территории отеля, услуги местной телефонной связи.
5032	11	980191380	нет
5033	15	980191380	 односпальная кровать 2, двуспальная кровать, прикроватные тумбочки, раскладной диван, кресло-кровать, шкаф, стол, туалетный столик, стулья, пуфик, зеркало. Доп. место - кресло-кровать.
5034	13	980191381	
5035	14	980191381	
5036	1	980191381	1 раз в 5 дней, смена полотенец 1 раз в 5 дней
5037	10	980191381	в номере
5038	2	980191381	нет
5039	3	980191381	эфирное, телевизор в каждой комнате.
5040	4	980191381	ежедневно
5041	5	980191381	ванна, раковина, туалет, туалетные принадлежности, таз.
5042	6	980191381	лоджия, оборудована мебелью и сушилкой
5043	8	980191381	сплит-система, телефон, чайный набор посуды. room-сервис, услуги телефонной связи по территории отеля, услуги местной телефонной связи.
5044	11	980191381	нет
5045	15	980191381	спальня (с двумя раздельными или одной широкой кроватью), гостиная (диван), прикроватные тумбочки, шкаф, стенка, стол, туалетный столик, стулья, пуфик, зеркало.
3660	4	980191266	по запросу
3667	14	980191267	01.01-31.05    3700\r\n01.06-31.08    4300
3672	4	980191267	по запросу
3630	13	980191264	1000
3631	14	980191264	01.01-31.08   10400\r\n
3636	4	980191264	по требованию
3642	13	980191265	800
3643	14	980191265	01.01-31.05    5500\r\n01.06-31.08    6300
3648	4	980191265	по запросу
5046	13	980191382	
5047	14	980191382	
5048	1	980191382	раз в 5 дней
5049	10	980191382	в номере
5050	2	980191382	нет
5052	4	980191382	ежедневно
5053	5	980191382	душ, раковина, туалет.
5054	6	980191382	на номер
5056	11	980191382	в номере
5051	3	980191382	спутниковое 
5057	15	980191382	двуспальная кровать, платяной шкаф, прикроватные тумбочки, стол с зеркалом, стулья. 
5058	13	980191383	
5059	14	980191383	
5060	1	980191383	раз в 5 дней
5061	10	980191383	в номере
5062	2	980191383	нет
5063	3	980191383	спутниковое
5064	4	980191383	ежедневно
5065	5	980191383	душ. раковина, туалет.
5066	6	980191383	на номер (большой панорамный балкон, на балконе - летний стол и стулья)
5055	8	980191382	сплит-система, телефон – внутренний, фен.
5067	8	980191383	сплит-система, Wi fтелефон – внутренний, фен.
5068	11	980191383	в номере
5069	15	980191383	двуспальная кровать, платяной шкаф, прикроватные тумбочки, стол с зеркалом, кресло-кровать, стулья.
5070	13	980191384	
5071	14	980191384	
5072	1	980191384	раз в 5 дней
5073	10	980191384	в номере
5074	2	980191384	нет
5075	3	980191384	спутниковое
5076	4	980191384	ежедневно
5077	5	980191384	душ, раковина, туалет
5078	6	980191384	на номер
5080	11	980191384	в номере
5081	15	980191384	первая спальня – две раздельные кровати, платяной шкаф, стол с зеркалом, стулья; вторая спальня – двуспальная кровать, прикроватные тумбочки; комнаты смежные.
5079	8	980191384	сплит-система, телефон – внутренний, фен.
5082	13	980191385	
5083	14	980191385	
5084	1	980191385	раз в 5 дней
5085	10	980191385	в номере
5086	2	980191385	нет
5087	3	980191385	спутниковое
5088	4	980191385	ежедневно
5089	5	980191385	душ, раковина, туалет.
5090	6	980191385	на номер ( большой балкон, на балконе – стол, стулья)
5091	8	980191385	сплит-система, телефон – внутренний, фен.
5092	11	980191385	в номере
5093	15	980191385	первая спальня – две раздельные кровати, платяной шкаф, стол с зеркалом, стулья, вторая спальня– двуспальная кровать, прикроватные тумбочки; комнаты смежные.
5094	13	980191386	
5095	14	980191386	
5103	8	980191386	сплит-система, телефон – внутренний, фен.
5105	15	980191386	кровать или три односпальные кровати, платяной шкаф, прикроватные тумбочки, стол с зеркалом, стулья
5096	1	980191386	раз в 5 дней
5097	10	980191386	в номере
5098	2	980191386	нет
5099	3	980191386	спутниковое
5100	4	980191386	ежедневно
5101	5	980191386	душ, раковина, туалет.
5102	6	980191386	на номер
5104	11	980191386	в номере
5106	13	980191387	
5107	14	980191387	
5108	1	980191387	раз в 5 дней
5109	10	980191387	в номере
5110	2	980191387	нет
5111	3	980191387	спутниковое
5112	4	980191387	ежедневно
5113	5	980191387	душ, раковина, туалет.
5114	6	980191387	на номер
5115	8	980191387	сплит-система, телефон – внутренний, фен.
5116	11	980191387	в номере
5117	15	980191387	двуспальная кровать или две односпальные кровати, кресло-кровать, журнальный столик, шкаф, стулья, прикроватные тумбочки, туалетный столик, зеркало, прихожая, номер повышенной комфортности и улучшенной планировки (с прихожей).\r\n
5118	13	980191388	
5119	14	980191388	
5120	1	980191388	раз в 5 дней
5121	10	980191388	в номере
5122	2	980191388	нет
5124	4	980191388	ежедневно
5125	5	980191388	душ, раковина, туалет
5126	6	980191388	на номер
5127	8	980191388	сплит-система, телефон – внутренний, фен.
5128	11	980191388	в номере
5129	15	980191388	двуспальная кровать, шкаф, стулья, прикроватные тумбочки, туалетный столик, зеркало. Мансардные окна «Велюкс»
5123	3	980191388	спутниковое (телевизор ЖК)
5130	13	980191389	
5131	14	980191389	
5132	1	980191389	раз в 5 дней
5133	10	980191389	в номере
5134	2	980191389	нет
5135	3	980191389	спутниковое (телевизор ЖК 2 шт.)
5136	4	980191389	ежедневно
5137	5	980191389	душ, раковина, туалет.
5138	6	980191389	
5139	8	980191389	сплит-система, телефон – внутренний, фен.
5140	11	980191389	в номере
5141	15	980191389	двуспальная кровать, диван, обеденный стол + стулья, кухонный гарнитур, чайник, микроволновая печь, кухонные принадлежности, кровати, кресло-кровать, журнальный столик, шкаф, прикроватные тумбочки, туалетный столик, зеркало, прихожая. 
5142	13	980191390	
5143	14	980191390	
5144	1	980191390	раз в 4 дня
5145	10	980191390	в номере
5146	2	980191390	нет
5147	3	980191390	эфирное
5148	4	980191390	ежедневно
5149	5	980191390	душ, раковина, туалет.
5150	6	980191390	нет
5151	8	980191390	сплит-система
5152	11	980191390	нет
5153	15	980191390	одна полутороспальная кровать, платяной шкаф, прикроватные тумбочки, трюмо.
5154	13	980191391	
5155	14	980191391	
5156	1	980191391	раз в 4 дня
5157	10	980191391	в номере
5158	2	980191391	нет
5159	3	980191391	эфирное
5160	4	980191391	ежедневно
5161	5	980191391	душ, раковина, туалет.
5162	6	980191391	на номер, на балконе летний столик с креслами.
5163	8	980191391	сплит-система.
5164	11	980191391	нет
5165	15	980191391	две односпальные кровати, платяной шкаф, прикроватные тумбочки, трюмо.
5166	13	980191392	
5167	14	980191392	
5168	1	980191392	раз в 4 дня 
5169	10	980191392	в каждой комнате
5170	2	980191392	нет
5171	3	980191392	эфирное
5172	4	980191392	ежедневно
5173	5	980191392	душ, раковина, туалет.
5175	8	980191392	сплит-система
5176	11	980191392	
5177	15	980191392	первая спальня – две односпальные кровати, вторая спальня – три односпальные кровати, комнаты раздельные
5174	6	980191392	на номер
5178	13	980191393	
5179	14	980191393	
5180	1	980191393	раз в 4 дня
5181	10	980191393	в номере
5182	2	980191393	нет
5183	3	980191393	эфирное
5184	4	980191393	ежедневно
5185	5	980191393	душ, раковина, туалет.
5186	6	980191393	на номер
5187	8	980191393	сплит-ситсема
5188	11	980191393	нет
5189	15	980191393	спальня – двуспальная кровать, гостиная-кухня – мягкая мебель, кухонный гарнитур, газовая плита, стол, стулья, набор посуды; комнаты смежные
5190	13	980191394	
5191	14	980191394	
5192	1	980191394	раз в 4 дня
5193	10	980191394	в номере
5194	2	980191394	нет
5195	3	980191394	эфирное, в каждой комнате.
5196	4	980191394	ежедневно
5197	5	980191394	душ. раковина, туалет
5198	6	980191394	на номер
5199	8	980191394	сплит-система
5200	11	980191394	нет
5201	15	980191394	первая спальня – три односпальные кровати, вторая спальня – две односпальные кровати, гостиная-кухня – мягкая мебель, кухонный гарнитур, стол, стулья, газовая плита, набор посуды; спальни раздельные.
5202	13	980191395	
5203	14	980191395	
5204	1	980191395	раз в 4 дня
5205	10	980191395	в номере
5206	2	980191395	нет
5207	3	980191395	эфирное
5208	4	980191395	ежедневно
5209	5	980191395	душ, раковина, туалет.
5210	6	980191395	на номер
5211	8	980191395	сплит-система
5212	11	980191395	нет
5213	15	980191395	первая спальня - две односпальные кровати, вторая спальня - две односпальные кровати, третья спальня - две односпальные кровати, гостиная-кухня – мягкая мебель, кухонный гарнитур, газовая плита, набор посуды; спальни раздельные.
5214	13	980191396	
5215	14	980191396	
5216	1	980191396	раз в 4 дня
5217	10	980191396	в номере
5218	2	980191396	нет
5219	3	980191396	эфирное, телевизор ЖК
5220	4	980191396	ежедневно
5221	5	980191396	душ, раковина, туалет
5222	6	980191396	
5223	8	980191396	сплит-ситстема
5224	11	980191396	нет
5225	15	980191396	две полутороспальные кровати, платяной шкаф, прикроватные тумбочки, трюмо.
5226	13	980191397	
5227	14	980191397	
5228	1	980191397	раз в 4 дня
5229	10	980191397	в номере
5230	2	980191397	нет
5231	3	980191397	эфирное
5232	4	980191397	ежедневно
5233	5	980191397	душ, раковина, туалет.
5234	6	980191397	на номер, на балконе летний столик с креслами
5235	8	980191397	сплит-систеиа
5236	11	980191397	нет
5237	15	980191397	две полутороспальные кровати, платяной шкаф, прикроватные тумбочки, трюмо.
5238	13	980191398	
5239	14	980191398	
5240	1	980191398	раз в 4 дня
5241	10	980191398	в номере
5242	2	980191398	нет
5243	3	980191398	эфирное
5244	4	980191398	ежедневно
5245	5	980191398	душ, раковина, туалет.
5246	6	980191398	на номер,  на балконе летний столик с креслами
5247	8	980191398	сплит-система.
5248	11	980191398	нет
5249	15	980191398	двуспальная кровать, двуспальный диван, кресло, платяной шкаф, прикроватные тумбочки, трюмо.
5250	13	980191399	
5251	14	980191399	
5252	1	980191399	
5253	10	980191399	в номере
5254	2	980191399	нет
5255	3	980191399	эфирное, ЖК телевизор
5256	4	980191399	
5257	5	980191399	душ, раковина, туалет
5258	6	980191399	
5259	8	980191399	Wi-Fi интернет;  Сплит-система; Фен; Чайник эл.
5260	11	980191399	нет
5261	15	980191399	
5262	13	980191400	
5263	14	980191400	
5264	1	980191400	
5265	10	980191400	в номере
5266	2	980191400	нет
5267	3	980191400	эфирное, ЖК телевизор
5268	4	980191400	
5269	5	980191400	душ, раковина, туалет
5270	6	980191400	
5271	8	980191400	Wi-Fi интернет;  Сплит-система; Фен; Чайник эл.
5272	11	980191400	нет
5273	15	980191400	
5274	13	980191401	
5275	14	980191401	
5276	1	980191401	
5280	4	980191401	
5282	6	980191401	
5277	10	980191401	в номере
5278	2	980191401	нет
5279	3	980191401	эфирное, ЖК телевизор
5281	5	980191401	душ, раковина, туалет.
5283	8	980191401	Wi-Fi интернет;  Сплит-система; Фен; Чайник эл.
5284	11	980191401	нет
5285	15	980191401	Апартаменты располагают спальней, гостиной и полностью оборудованной мини-кухней.  Гостиный уголок, диван, кухонные принадлежности, микроволновая печь, плита, компьютер.
5286	13	980191402	
5287	14	980191402	
5288	1	980191402	
5289	10	980191402	в номере
5290	2	980191402	в номере
5291	3	980191402	спутниковое 
5292	4	980191402	
5293	5	980191402	душевая еврокабина, раковина, туалет, индивидуальные принадлежности, фен, вафельные халаты.
5294	6	980191402	небольшая терраса с видом на море.
5295	8	980191402	Климат контроль, бесплатный доступ в Интернет, телефон
5297	15	980191402	Буфетная стойка с полным набором посуды, электронный замок. Обставлены экологически чистой мебелью ручной работы, сделанной из ротанга и тропической сосны.
5296	11	980191402	в номере
5298	13	980191403	
5299	14	980191403	
5300	1	980191403	
5301	10	980191403	в номере
5302	2	980191403	в номере
5303	3	980191403	спутниковое
5304	4	980191403	
5305	5	980191403	душевая еврокабина, раковина, туалет, индивидуальные принадлежности, фен, вафельные халаты.
5306	6	980191403	небольшая терраса с видом на море.
5307	8	980191403	Климат контроль, бесплатный доступ в Интернет, телефон
5308	11	980191403	в номере
5309	15	980191403	Буфетная стойка с полным набором посуды, электронный замок. Обставлены экологически чистой мебелью ручной работы, сделанной из ротанга и тропической сосны.
5310	13	980191404	
5311	14	980191404	
5312	1	980191404	
5313	10	980191404	в номере
5314	2	980191404	в номере
5315	3	980191404	спутниковое
5316	4	980191404	
5317	5	980191404	душевая еврокабина, раковина, туалет, индивидуальные принадлежности, фен, вафельные халаты.
5318	6	980191404	небольшая терраса с видом на море.
5319	8	980191404	Климат контроль, бесплатный доступ в Интернет, телефон
5320	11	980191404	в номере
5321	15	980191404	Буфетная стойка с полным набором посуды, электронный замок. Обставлены экологически чистой мебелью ручной работы, сделанной из ротанга и тропической сосны.
5322	13	980191405	
5323	14	980191405	
5324	1	980191405	
5325	10	980191405	в номере
5326	2	980191405	в номере
5327	3	980191405	спутниковое
5328	4	980191405	
5329	5	980191405	душевая еврокабина, раковина, туалет, индивидуальные принадлежности, фен, вафельные халаты.
5330	6	980191405	небольшая терраса с видом на море.
5331	8	980191405	Климат контроль, бесплатный доступ в Интернет, телефон
5332	11	980191405	в номере
5333	15	980191405	Буфетная стойка с полным набором посуды, электронный замок. Обставлены экологически чистой мебелью ручной работы, сделанной из ротанга и тропической сосны.
5334	13	980191406	
5335	14	980191406	
5336	1	980191406	
5337	10	980191406	в номере
5338	2	980191406	в номере
5339	3	980191406	спутниковое
5340	4	980191406	
5341	5	980191406	душевая еврокабина, раковина, туалет, индивидуальные принадлежности, фен, вафельные халаты.
5342	6	980191406	небольшая терраса с видом на море.
5343	8	980191406	Климат контроль, бесплатный доступ в Интернет, телефон
5344	11	980191406	в номере
5345	15	980191406	посуды, электронный замок. Обставлены экологически чистой мебелью ручной работы, сделанной из ротанга и тропической сосны.
5346	13	980191407	
5347	14	980191407	
5348	1	980191407	
5349	10	980191407	в номере
5350	2	980191407	
5351	3	980191407	эфирное
5352	4	980191407	ежедневно
5353	5	980191407	душ, раковина, туалет
5354	6	980191407	
5355	8	980191407	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5356	11	980191407	в номере
5357	15	980191407	полуторная кровать, номер расположен на 2-м и 4-м этаже. Вид из окна номера на внутренний двор отеля.
5358	13	980191408	
5359	14	980191408	
5360	1	980191408	
5361	10	980191408	в номере
5362	2	980191408	
5363	3	980191408	эфирное
5364	4	980191408	еждневно
5365	5	980191408	душ, раковина, туалет
5366	6	980191408	
5367	8	980191408	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5368	11	980191408	в номере
5370	13	980191409	
5371	14	980191409	
5372	1	980191409	
5378	6	980191409	
5379	8	980191409	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5382	13	980191410	
5383	14	980191410	
5384	1	980191410	
5386	2	980191410	
5388	4	980191410	
5390	6	980191410	
5391	8	980191410	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5394	13	980191411	
5395	14	980191411	
5396	1	980191411	
5398	2	980191411	
5403	8	980191411	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5406	13	980191412	
5407	14	980191412	
5408	1	980191412	
5410	2	980191412	
5414	6	980191412	
5415	8	980191412	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5418	13	980191413	
5419	14	980191413	
5420	1	980191413	
5426	6	980191413	
5427	8	980191413	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5385	10	980191410	в номере
5387	3	980191410	эфирное
5389	5	980191410	душ, раковина, туалет
5392	11	980191410	в номере
5393	15	980191410	Одна широкая кровать. Номера с видом на море расположены в «патио» - внутреннем дворике отеля на 2-м и 3-м этажах.
5397	10	980191411	в номере
5399	3	980191411	эфирное
5400	4	980191411	ежедневно
5401	5	980191411	душ, раковина, туалет
5402	6	980191411	на номер
5404	11	980191411	в номере
5405	15	980191411	две раздельные или одна широкая кровать площадью 24-27м2. Номера с французскими окнами, балконом и прекрасным видом на сосновый парк расположены на 4-м этаже. 
5409	10	980191412	в номере
5411	3	980191412	эфирное
5412	4	980191412	ежедневно
5413	5	980191412	душ, раковина, туалет
5416	11	980191412	в номере
5417	15	980191412	однокомнатный номер с двумя раздельными кроватями, площадью 27м2. Номера с видом на море расположены в «патио» - внутреннем дворике отеля на 2-м и 3-м этажах
5421	10	980191413	в номере
5422	2	980191413	в номере
5423	3	980191413	эфирное
5424	4	980191413	ежедневно
5428	11	980191413	в номере
5373	10	980191409	в номере
5374	2	980191409	в номере
5375	3	980191409	эфирное
5376	4	980191409	ежедневно
5369	15	980191408	две раздельные или одна широкая кровать площадью 20-22м2. Номер расположен на 1, 2, 3, 4-м этаже. Из окон большинства номеров открывается прекрасный вид на многолетний сосновый парк.
5425	5	980191413	ванна, раковина, туалет, фен, набор фирменных принадлежностей, махровые халаты и тапочки с логотипом отеля.
5429	15	980191413	Двухкомнатный номер с видом на море, и выходом на внутренний дворик отеля,  расположен на 2-м и 3-м этаже;\r\nВключает в себя гостиную комнату,  телефон; спальную комнату с французской кроватью.
5377	5	980191409	ванна, раковина, туалет, фен, набор фирменных принадлежностей, махровые халаты и тапочки с логотипом отеля.
5380	11	980191409	в номере
5381	15	980191409	двухкомнатный номер с видом на море, расположен на 3-м этаже; включает в себя спальную комнату с французской кроватью, туалетным столиком, телефоном; гостиную, обставленную мягкой кожаной мебелью.
5430	13	980191414	
5431	14	980191414	
5432	1	980191414	
5433	10	980191414	в номере
5434	2	980191414	в номере.
5435	3	980191414	 спутниковое TV в гостиной и спальне
5436	4	980191414	ежедневно
5437	5	980191414	ванна, раковина, туалет, фен, набор фирменных принадлежностей, махровые халаты и тапочки с логотипом отеля. В ванной комнате подогреваемые полы, телефон, а также турецкая и финская сауна. Джакузи в спальне
5438	6	980191414	
5439	8	980191414	предоставление швейного набора Побудка к определенному времени Доставка в номер корреспонденции Предоставление  комплекта посуды, столовых приборов,утюга и гладильной доски в номер по желанию гостя Телефонный звонок по вызову скорой помощи
5440	11	980191414	в номере
5441	15	980191414	с видом на море,  гостиная поделена на специальные зоны - гостиная и кабинет. В спальне большая двухместная кровать. Дополнительно предусмотрены гостевые спальня и санузел. Индивидуальная система кондиционирования.
5442	13	980191415	
5443	14	980191415	
5444	1	980191415	
5445	10	980191415	в номере
5446	2	980191415	нет
5447	3	980191415	эфирное
5448	4	980191415	
5450	6	980191415	на номер, с видом на море
5451	8	980191415	сплит-система, телефон
5452	11	980191415	в номере
5453	15	980191415	одна большая кровать или две раздельные.
5449	5	980191415	дешевая кабинка, раковина, туалет, фен.
5454	13	980191416	
5455	14	980191416	
5456	1	980191416	
5457	10	980191416	в номере
5458	2	980191416	нет
5459	3	980191416	эфирное
5460	4	980191416	
5461	5	980191416	дешевая кабинка, раковина, туалет, фен.
5462	6	980191416	нет
5463	8	980191416	сплит-система, телефон
5464	11	980191416	в номере
5465	15	980191416	одна большая кровать. В номере нет окон, сдается на короткие сроки.
3575	3	980191259	эфирное
3587	3	980191260	эфирное
2795	3	980191194	эфирное (ЖК-телевизор)
2807	3	980191195	эфирное (ЖК-телевизор)
5466	13	980191417	
5467	14	980191417	
5468	1	980191417	
5469	10	980191417	нет
5470	2	980191417	нет
5471	3	980191417	эфирное
5472	4	980191417	
5473	5	980191417	душ, раковина, таулет
5474	6	980191417	не номер
5475	8	980191417	сплит-ситсема
5476	11	980191417	нет
5477	15	980191417	двухспальная или две односпальные кровати, тумбочки, шкаф для одежды
5478	13	980191418	
5479	14	980191418	
5480	1	980191418	
5481	10	980191418	в номере
5482	2	980191418	нет
5483	3	980191418	эфирное
5484	4	980191418	
5485	5	980191418	душ, раковина, туалет
5486	6	980191418	на номер
5487	8	980191418	сплит-система
5488	11	980191418	нет
5489	15	980191418	двухспальная кровать, односпальная кровать, шкаф, тумбочки
5490	13	980191419	
5491	14	980191419	
5492	1	980191419	
5493	10	980191419	в номере
5494	2	980191419	нет
5495	3	980191419	эфирное
5496	4	980191419	
5497	5	980191419	душ, раковина, туалет
5498	6	980191419	
5499	8	980191419	сплит-система
5500	11	980191419	нет
5501	15	980191419	двуспальная кровать, диван, шкаф для одежды, стол и стулья
4463	3	980191333	кабельное
4475	3	980191334	кабельное
4487	3	980191335	кабельное.
4499	3	980191336	кабельное
4511	3	980191337	кабельное, 2 телевизора
4523	3	980191338	кабельное, (телевизор ЖК)
4535	3	980191339	кабельное (телевизор ЖК)
4547	3	980191340	кабельное (телевизор ЖК)
\.


--
-- Data for Name: hotel_room_fields; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_fields (id, name, default_value, only_signed, multiline, include_to_print, "position") FROM stdin;
13	Стоимость доп. места		f	f	t	1
1	Смена белья		f	f	t	3
14	Прайс-лист		f	t	t	2
15	Описание номера	\N	\N	t	\N	12
11	Сейф		f	f	t	11
8	Дополнительное описание	\N	\N	\N	\N	10
6	Балкон		f	f	t	9
5	Санузел		f	f	t	8
4	Уборка		f	f	t	7
3	Телевизор		f	f	t	6
2	Минибар	\N	\N	\N	\N	5
10	Холодильник		f	t	t	4
\.


--
-- Data for Name: hotel_room_list_items; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_list_items (id, list_id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: hotel_room_list_values; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_list_values (id, room_id, list_id, item_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: hotel_room_lists; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_lists (id, name, "position", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: hotel_room_photos; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_photos (id, room_id, attach_file_name, attach_content_type, attach_file_size, attach_updated_at, description) FROM stdin;
131	980191028	phoca_thumb_l_pano2_readys_mini.jpg	image/jpeg	83136	2012-09-05 04:50:21.507551	Стандарт
133	980191028	phoca_thumb_l_img_1411_2_3_fused_mini.jpg	image/jpeg	38787	2012-09-05 04:51:41.644756	Стандарт
134	980191029	phoca_thumb_l_pano3_ready_mini.jpg	image/jpeg	75718	2012-09-05 05:04:16.699584	Студио
135	980191029	phoca_thumb_l_panor7_mini.jpg	image/jpeg	65181	2012-09-05 05:04:17.199278	Студио
136	980191029	phoca_thumb_l_pan_5_ready_mini.jpg	image/jpeg	68148	2012-09-05 05:04:17.808756	Студио
137	980191032	4ff173eade24c_12.jpg	image/jpeg	12533	2012-09-06 16:06:33.632545	Полулюкс
138	980191033	4ff16b6e97a1e_13.jpg	image/jpeg	10657	2012-09-06 16:06:34.234392	Двухместный стандарт
139	980191034	4ff174062c9d9_11.jpg	image/jpeg	11874	2012-09-06 16:06:34.68496	Трехместный стандарт
140	980191042	admiral3_1.jpg	image/jpeg	8832	2012-09-07 05:26:28.600769	
141	980191042	live_2.jpg	image/jpeg	11897	2012-09-07 05:26:29.09711	
142	980191042	live_9.jpg	image/jpeg	14334	2012-09-07 05:26:29.587332	
143	980191043	live_1.jpg	image/jpeg	14980	2012-09-07 05:26:30.147283	
144	980191043	live_9.jpg	image/jpeg	14334	2012-09-07 05:26:30.698129	
145	980191045	live_3.jpg	image/jpeg	11644	2012-09-07 05:26:31.295079	
146	980191045	admiral2.jpg	image/jpeg	2740	2012-09-07 05:26:31.770105	
147	980191044	live_4.jpg	image/jpeg	12968	2012-09-07 05:26:32.220178	
148	980191044	live_5.jpg	image/jpeg	15898	2012-09-07 05:26:32.695802	
149	980191044	live_6.jpg	image/jpeg	13799	2012-09-07 05:26:33.195185	
150	980191044	live_8.jpg	image/jpeg	19554	2012-09-07 05:26:33.684693	
151	980191044	live_9.jpg	image/jpeg	14334	2012-09-07 05:26:34.254898	
152	980191046	Image00003.jpg	image/jpeg	5359	2012-09-07 05:57:16.172206	
153	980191046	2660494_6.jpg	image/jpeg	20969	2012-09-07 05:57:16.599193	
154	980191046	Image00006.jpg	image/jpeg	6405	2012-09-07 05:57:17.040535	
155	980191047	12.jpg	image/jpeg	59113	2012-09-08 11:40:40.707247	
156	980191047	13.jpg	image/jpeg	59955	2012-09-08 11:40:41.304456	
157	980191047	15.jpg	image/jpeg	55248	2012-09-08 11:40:41.786046	
158	980191048	17.jpg	image/jpeg	77386	2012-09-08 11:40:42.313526	
159	980191048	18.jpg	image/jpeg	49635	2012-09-08 11:40:42.841374	
160	980191047	14.jpg	image/jpeg	64222	2012-09-08 11:41:53.522211	
161	980191048	16.jpg	image/jpeg	80170	2012-09-08 11:41:54.048664	
162	980191049	photo_Lwf1VPj1Vy_normal_1.jpg	image/jpeg	24134	2012-09-08 12:27:19.393033	
163	980191049	photo_Lwf1VPj1Vy_normal_2.jpg	image/jpeg	79394	2012-09-08 12:27:19.860972	
164	980191050	photo_Lwf1VPj1Vy_normal_1.jpg	image/jpeg	24134	2012-09-08 12:27:20.346346	
165	980191050	photo_Lwf1VPj1Vy_normal_2.jpg	image/jpeg	79394	2012-09-08 12:27:20.919307	
166	980191052	14.jpg	image/jpeg	83680	2012-09-08 13:42:07.00352	
167	980191052	25.jpg	image/jpeg	54646	2012-09-08 13:42:07.592925	
169	980191054	25.jpg	image/jpeg	54646	2012-09-08 13:43:49.30627	
172	980191055	18.jpg	image/jpeg	56536	2012-09-08 13:47:30.489456	
173	980191055	25.jpg	image/jpeg	54646	2012-09-08 13:47:31.026904	
174	980191051	18.jpg	image/jpeg	56536	2012-09-08 13:51:35.57607	
175	980191051	25.jpg	image/jpeg	54646	2012-09-08 13:51:36.275649	
170	980191053	24.jpg	image/jpeg	67022	2012-09-08 13:53:10.583699	
171	980191053	25.jpg	image/jpeg	54646	2012-09-08 13:53:11.23388	
168	980191054	22.jpg	image/jpeg	66862	2012-09-08 13:54:32.842128	
176	980191056	M9.jpg	image/jpeg	189096	2012-09-09 04:55:06.214233	
177	980191056	M11.jpg	image/jpeg	153524	2012-09-09 04:55:06.748615	
178	980191057	M8.jpg	image/jpeg	146668	2012-09-09 04:55:07.380806	
179	980191057	M11.jpg	image/jpeg	153524	2012-09-09 04:55:07.910737	
180	980191058	M9.jpg	image/jpeg	189096	2012-09-09 04:55:08.443131	
181	980191058	M11.jpg	image/jpeg	153524	2012-09-09 04:55:08.9641	
182	980191059	M7.jpg	image/jpeg	141620	2012-09-09 04:55:09.460943	
183	980191059	M11.jpg	image/jpeg	153524	2012-09-09 04:55:10.049548	
184	980191061	7.jpg	image/jpeg	118455	2012-09-09 05:59:43.113221	Стандарт
185	980191061	9.jpg	image/jpeg	143276	2012-09-09 05:59:43.653099	
186	980191062	6.jpg	image/jpeg	110928	2012-09-09 05:59:44.18977	Люкс
187	980191062	9.jpg	image/jpeg	143276	2012-09-09 05:59:44.960961	
188	980191060	1.jpg	image/jpeg	109568	2012-09-09 05:59:45.633983	Люкс
189	980191060	2.jpg	image/jpeg	119786	2012-09-09 05:59:46.196026	
190	980191060	3.jpg	image/jpeg	122472	2012-09-09 05:59:46.740273	
191	980191060	9.jpg	image/jpeg	143276	2012-09-09 05:59:47.311013	
192	980191064	__.jpg	image/jpeg	57977	2012-09-09 07:07:52.52325	
193	980191063	___.jpg	image/jpeg	62381	2012-09-09 07:07:53.045898	
194	980191065	_.jpg	image/jpeg	75719	2012-09-09 07:07:53.553434	
195	980191065	char_tree406_938.jpg	image/jpeg	25335	2012-09-09 07:07:54.090877	
198	980191066	12.jpg	image/jpeg	19373	2012-09-09 08:49:27.452849	
199	980191066	13.jpg	image/jpeg	3139535	2012-09-09 08:49:27.918829	
200	980191067	18.jpg	image/jpeg	16250	2012-09-09 08:58:14.578012	
201	980191067	19.jpg	image/jpeg	18328	2012-09-09 08:58:15.020446	
202	980191067	20.jpg	image/jpeg	20801	2012-09-09 08:58:15.500561	
203	980191068	9.jpg	image/jpeg	36287	2012-09-09 09:09:20.71277	
204	980191068	7.jpg	image/jpeg	20325	2012-09-09 09:09:21.160446	
205	980191071	377d6700__.jpg	image/jpeg	6009	2012-09-09 11:54:58.271339	
206	980191071	small__.jpg	image/jpeg	5863	2012-09-09 11:54:58.706442	
207	980191071	luxe.jpg	image/jpeg	7044	2012-09-09 11:54:59.188866	
208	980191072	377d6700_.jpg	image/jpeg	6009	2012-09-09 11:56:32.503646	
209	980191072	lux4_s.jpg	image/jpeg	5799	2012-09-09 11:56:32.944519	
210	980191072	1luxe1.jpg	image/jpeg	4444	2012-09-09 11:56:33.400227	
211	980191069	377d6694.jpg	image/jpeg	5860	2012-09-09 11:57:26.836412	
212	980191070	377d6693_.jpg	image/jpeg	5986	2012-09-09 11:59:04.395093	
213	980191070	2mn.jpg	image/jpeg	16003	2012-09-09 11:59:04.943866	
214	980191073	r406.jpg	image/jpeg	109365	2012-09-12 16:35:59.828506	
215	980191073	r409.jpg	image/jpeg	133834	2012-09-12 16:36:00.515586	
216	980191073	r305.jpg	image/jpeg	147960	2012-09-12 16:36:01.080173	
217	980191073	IMG_9998_600.jpg	image/jpeg	100649	2012-09-12 16:36:02.022133	
218	980191074	r308.jpg	image/jpeg	119397	2012-09-12 16:40:07.149961	
219	980191074	r408_1.jpg	image/jpeg	140069	2012-09-12 16:40:07.748367	
220	980191074	IMG_9989_600.jpg	image/jpeg	70672	2012-09-12 16:40:08.494296	
221	980191074	IMG_9991_600.jpg	image/jpeg	100684	2012-09-12 16:40:09.063763	
222	980191074	r106_2.jpg	image/jpeg	150955	2012-09-12 16:40:09.688176	
223	980191074	r106_1.jpg	image/jpeg	157816	2012-09-12 16:40:10.348192	
224	980191074	IMG_0004_600.jpg	image/jpeg	291948	2012-09-12 16:40:10.931722	
225	980191075	IMG_0017_600.jpg	image/jpeg	258596	2012-09-12 16:44:07.792001	
226	980191075	IMG_0011_600.jpg	image/jpeg	298238	2012-09-12 16:44:08.399743	
227	980191075	IMG_0021_600.jpg	image/jpeg	272252	2012-09-12 16:44:09.06437	
228	980191075	IMG_0024_600.jpg	image/jpeg	313365	2012-09-12 16:44:09.798543	
229	980191075	IMG_0028_600.jpg	image/jpeg	249730	2012-09-12 16:44:10.528056	
230	980191075	IMG_0036_600.jpg	image/jpeg	286080	2012-09-12 16:44:11.136173	
231	980191075	IMG_0043_600.jpg	image/jpeg	292059	2012-09-12 16:44:11.732981	
232	980191076	r305.jpg	image/jpeg	147960	2012-09-12 17:23:41.478284	
233	980191076	IMG_9998_600.jpg	image/jpeg	100649	2012-09-12 17:23:42.08242	
234	980191077	standart1.jpg	image/jpeg	25834	2012-09-13 05:36:22.653095	
235	980191077	standart2.jpg	image/jpeg	38369	2012-09-13 05:36:23.350733	
236	980191077	standart.jpg	image/jpeg	23872	2012-09-13 05:36:24.013114	
237	980191078	studio-2m1r-IMG_5229.jpg	image/jpeg	49041	2012-09-13 05:39:12.487772	
238	980191078	studio-2m1r-IMG_5230.jpg	image/jpeg	38852	2012-09-13 05:39:13.062085	
239	980191079	lux-2m2r-IMG_5223.jpg	image/jpeg	39926	2012-09-13 05:43:55.381569	
240	980191079	lux-2m2r-IMG_5225.jpg	image/jpeg	35395	2012-09-13 05:43:56.294332	
241	980191079	lux-2m2r-IMG_5226.jpg	image/jpeg	40624	2012-09-13 05:43:56.983095	
242	980191079	lux-2m2r-IMG_5222.jpg	image/jpeg	43111	2012-09-13 05:43:57.719513	
243	980191079	lux-2m2r-IMG_5227.jpg	image/jpeg	37830	2012-09-13 05:43:58.356354	
244	980191080	6.jpg	image/jpeg	28368	2012-09-13 07:07:51.200966	
245	980191080	balkon.jpg	image/jpeg	33118	2012-09-13 07:07:52.078439	
246	980191081	3.jpg	image/jpeg	31202	2012-09-14 04:39:41.520884	
247	980191081	su.jpg	image/jpeg	30197	2012-09-14 04:39:42.133767	
248	980191082	lux2.jpg	image/jpeg	27334	2012-09-14 04:41:24.889596	
249	980191082	lux1.jpg	image/jpeg	24139	2012-09-14 04:41:25.604548	
250	980191082	su.jpg	image/jpeg	30197	2012-09-14 04:41:26.32024	
251	980191083	lux2.jpg	image/jpeg	27334	2012-09-14 04:41:27.19275	
252	980191083	lux1.jpg	image/jpeg	24139	2012-09-14 04:41:27.839836	
253	980191083	su.jpg	image/jpeg	30197	2012-09-14 04:41:28.421846	
254	980191084	nomera05.jpg	image/jpeg	77450	2012-09-15 05:04:45.275588	
255	980191084	nomera06.jpg	image/jpeg	69348	2012-09-15 05:04:45.909732	
256	980191084	nomera07.jpg	image/jpeg	57455	2012-09-15 05:04:46.580144	
257	980191084	nomera08.jpg	image/jpeg	56103	2012-09-15 05:04:47.433316	
258	980191085	nomera01.jpg	image/jpeg	73784	2012-09-15 05:06:09.377065	
259	980191085	nomera02.jpg	image/jpeg	78434	2012-09-15 05:06:10.032115	
260	980191085	nomera03.jpg	image/jpeg	64493	2012-09-15 05:06:10.762629	
261	980191087	16.jpg	image/jpeg	188041	2012-09-15 06:46:41.990067	
262	980191087	25.jpg	image/jpeg	143406	2012-09-15 06:46:42.75946	
263	980191086	21.jpg	image/jpeg	173787	2012-09-15 06:46:43.5159	
264	980191086	23.jpg	image/jpeg	158686	2012-09-15 06:46:44.195053	
265	980191088	14.jpg	image/jpeg	188515	2012-09-15 06:46:44.98851	
266	980191088	20.jpg	image/jpeg	167404	2012-09-15 06:46:45.73227	
267	980191088	23.jpg	image/jpeg	158686	2012-09-15 06:46:46.51213	
268	980191089	18.jpg	image/jpeg	207426	2012-09-15 06:46:47.246369	
269	980191089	18.jpg	image/jpeg	207426	2012-09-15 06:46:47.893312	
270	980191089	23.jpg	image/jpeg	158686	2012-09-15 06:46:48.659387	
271	980191090	02.jpg	image/jpeg	19965	2012-09-15 12:07:16.298742	
272	980191090	02.jpg	image/jpeg	19965	2012-09-15 12:07:16.824751	
273	980191091	2-х-м-улучш1.jpg	image/jpeg	17696	2012-09-15 13:55:11.720121	
274	980191092	2-х-местный.jpg	image/jpeg	19733	2012-09-15 18:14:22.672346	
275	980191092	2-х-мест-1-комн.jpg	image/jpeg	40528	2012-09-15 18:14:23.378867	
276	980191092	2-х-м.jpg	image/jpeg	18091	2012-09-15 18:14:24.072869	
277	980191093	2-пк1.jpg	image/jpeg	16841	2012-09-15 18:27:58.577437	
278	980191093	2-х-м-пк.jpg	image/jpeg	17914	2012-09-15 18:27:59.378081	
279	980191094	3-х-мест..jpg	image/jpeg	19530	2012-09-15 18:34:57.450156	
280	980191094	3-х-м..jpg	image/jpeg	19370	2012-09-15 18:34:58.191211	
281	980191095	2-х-ком-гост.jpg	image/jpeg	28410	2012-09-15 18:47:30.532427	
282	980191095	гост.jpg	image/jpeg	29196	2012-09-15 18:47:31.291493	
283	980191097	4dc3f35986481.jpg	image/jpeg	59555	2012-09-15 19:46:28.737027	
284	980191097	buhta-radosti.jpg	image/jpeg	14663	2012-09-15 19:46:29.489466	
285	980191098	4dc3f35976e68.jpg	image/jpeg	61225	2012-09-15 19:52:34.458512	
286	980191098	buhta-radosti.jpg	image/jpeg	14663	2012-09-15 19:52:35.167219	
287	980191099	zhemchug_(3).jpg	image/jpeg	32111	2012-09-15 20:23:19.983603	
288	980191099	zhemchug_(5).jpg	image/jpeg	22813	2012-09-15 20:23:20.550304	
289	980191100	RU284-2.jpg	image/jpeg	128122	2012-09-15 20:31:03.686397	
290	980191100	zhemchug_(5).jpg	image/jpeg	22813	2012-09-15 20:31:04.290863	
291	980191101	RU284-4.jpg	image/jpeg	112265	2012-09-15 20:35:27.644401	
292	980191101	zhemchug_(5).jpg	image/jpeg	22813	2012-09-15 20:35:28.246324	
293	980191102	12.jpg	image/jpeg	194007	2012-09-16 04:54:11.621523	
294	980191103	12.jpg	image/jpeg	194007	2012-09-16 05:04:35.632216	
295	980191104	11.jpg	image/jpeg	176317	2012-09-16 05:04:36.432422	
296	980191108	14.jpg	image/jpeg	36322	2012-09-18 16:24:04.497202	
297	980191108	14.jpg	image/jpeg	36322	2012-09-18 16:24:05.220402	
298	980191108	17.jpg	image/jpeg	26407	2012-09-18 16:24:05.803321	
299	980191109	12.jpg	image/jpeg	39465	2012-09-18 16:24:06.400131	
300	980191109	10.jpg	image/jpeg	36145	2012-09-18 16:24:07.100734	
301	980191109	9.jpg	image/jpeg	30737	2012-09-18 16:24:07.688734	
302	980191110	evr_(1).jpg	image/jpeg	23857	2012-09-20 07:26:02.881882	
303	980191111	evr_(21).jpg	image/jpeg	26561	2012-09-20 07:48:26.213943	
304	980191111	evr_(22).jpg	image/jpeg	27860	2012-09-20 07:48:26.902016	
305	980191111	evr_(23).jpg	image/jpeg	10051	2012-09-20 07:48:27.538621	
306	980191112	evr_(17).jpg	image/jpeg	21466	2012-09-20 07:58:51.741243	
307	980191112	evr_(18).jpg	image/jpeg	19952	2012-09-20 07:58:52.415672	
308	980191113	evr_(13).jpg	image/jpeg	24389	2012-09-20 08:15:25.271735	
309	980191113	evr_(14).jpg	image/jpeg	26650	2012-09-20 08:15:25.888369	
310	980191113	europa9.jpg	image/jpeg	7002	2012-09-20 08:15:26.47947	
311	980191114	evr_(7).jpg	image/jpeg	26417	2012-09-20 08:25:28.617147	
312	980191114	evr_(8).jpg	image/jpeg	21204	2012-09-20 08:25:29.156889	
313	980191114	evr_(9).jpg	image/jpeg	27411	2012-09-20 08:25:29.720686	
314	980191118	16.jpg	image/jpeg	64743	2012-09-21 06:08:25.184637	
315	980191118	15.jpg	image/jpeg	75116	2012-09-21 06:08:26.237543	
316	980191119	15.jpg	image/jpeg	75116	2012-09-21 06:08:26.987465	
317	980191120	13.jpg	image/jpeg	75879	2012-09-21 06:08:27.859653	
318	980191120	12.jpg	image/jpeg	76292	2012-09-21 06:08:29.102997	
319	980191120	7.jpg	image/jpeg	82256	2012-09-21 06:08:30.033574	
320	980191122	55_big.jpg	image/jpeg	25459	2012-09-21 08:09:32.969746	
321	980191123	47_big.jpg	image/jpeg	34544	2012-09-21 08:09:33.747235	
322	980191124	k1-01.jpg	image/jpeg	54007	2012-09-22 18:15:40.034234	
323	980191125	k2-01.jpg	image/jpeg	39803	2012-09-22 18:15:40.835877	
324	980191125	k2-02.jpg	image/jpeg	42002	2012-09-22 18:15:41.512908	
325	980191126	k3-01.jpg	image/jpeg	43128	2012-09-22 18:15:42.265331	
326	980191126	k3-02.jpg	image/jpeg	59030	2012-09-22 18:15:42.952297	
327	980191127	k4-01.jpg	image/jpeg	39472	2012-09-22 18:15:43.74013	
328	980191128	k5-01.jpg	image/jpeg	36968	2012-09-22 18:20:19.394625	
329	980191128	k5-02.jpg	image/jpeg	57111	2012-09-22 18:20:20.124964	
330	980191128	k5-03.jpg	image/jpeg	62971	2012-09-22 18:20:20.865053	
331	980191129	k6-01.jpg	image/jpeg	41224	2012-09-22 18:20:21.511389	
332	980191129	k6-02.jpg	image/jpeg	43952	2012-09-22 18:20:22.078188	
333	980191129	k6-03.jpg	image/jpeg	49383	2012-09-22 18:20:22.809524	
334	980191130	k7-01.jpg	image/jpeg	32712	2012-09-22 18:20:23.549823	
335	980191130	k7-02.jpg	image/jpeg	42325	2012-09-22 18:20:24.259373	
336	980191130	k7-03.jpg	image/jpeg	41823	2012-09-22 18:20:25.070489	
337	980191130	k7-04.jpg	image/jpeg	53473	2012-09-22 18:20:25.693164	
338	980191131	08.jpg	image/jpeg	93367	2012-09-22 18:21:30.822664	
339	980191131	11.jpg	image/jpeg	103198	2012-09-22 18:21:31.799688	
340	980191131	12.jpg	image/jpeg	63173	2012-09-22 18:21:32.605726	
341	980191133	dsc_01580.jpg	image/jpeg	77117	2012-09-23 04:38:52.858126	
342	980191134	dsc_01580.jpg	image/jpeg	77117	2012-09-23 04:38:53.573478	
343	980191135	ijevachka_(4).jpg	image/jpeg	36219	2012-09-23 05:35:58.720046	
344	980191136	ijevachka_(2).jpg	image/jpeg	37216	2012-09-23 05:35:59.446175	
345	980191137	ijevachka_(2).jpg	image/jpeg	37216	2012-09-23 05:36:00.075653	
346	980191139	5058d52675139e0f4b063c14.jpg	image/jpeg	81987	2012-09-28 07:07:38.567953	
347	980191141	5058ca3875139e0f4b02712d.jpg	image/jpeg	75943	2012-09-28 07:07:39.563762	
348	980191138	5058ca3875139e0f4b02711d.jpg	image/jpeg	92588	2012-09-28 07:07:40.611895	
349	980191142	5058ca3875139e0f4b027131.jpg	image/jpeg	66298	2012-09-28 07:07:41.510716	
350	980191143	5058ca3875139e0f4b027131.jpg	image/jpeg	66298	2012-09-28 07:07:42.454155	
352	980191144	5058d52675139e0f4b063c0c.jpg	image/jpeg	58478	2012-09-28 07:07:44.310996	
353	980191144	5058d52675139e0f4b063c10.jpg	image/jpeg	96264	2012-09-28 07:08:56.408222	
354	980191147	19.jpg	image/jpeg	145738	2012-09-30 05:47:11.18475	
355	980191147	21.jpg	image/jpeg	135994	2012-09-30 05:47:11.877294	
356	980191145	15.jpg	image/jpeg	132098	2012-09-30 05:47:12.628189	
357	980191146	20.jpg	image/jpeg	141261	2012-09-30 05:47:13.32046	
358	980191146	21.jpg	image/jpeg	135994	2012-09-30 05:47:14.044397	
359	980191148	17.jpg	image/jpeg	143508	2012-09-30 05:47:14.713917	
360	980191148	21.jpg	image/jpeg	135994	2012-09-30 05:47:15.624526	
361	980191149	13.jpg	image/jpeg	35350	2012-09-30 05:47:16.439183	
362	980191149	21.jpg	image/jpeg	135994	2012-09-30 05:47:17.223076	
367	980191150	s014802.jpg	image/jpeg	4395	2012-09-30 08:22:15.741292	
368	980191150	b014805.jpg	image/jpeg	24927	2012-09-30 08:22:50.524542	
369	980191150	b014801.jpg	image/jpeg	34945	2012-09-30 08:22:51.283699	
371	980191157	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:21.540551	
372	980191152	char_tree912_2679.jpg	image/jpeg	15249	2012-09-30 12:19:22.156118	
373	980191152	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:22.849186	
374	980191153	char_tree912_2678.jpg	image/jpeg	18766	2012-09-30 12:19:23.503285	
375	980191153	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:24.039916	
376	980191156	char_tree912_2665.jpg	image/jpeg	15458	2012-09-30 12:19:24.720924	
377	980191156	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:25.265593	
378	980191154	char_tree912_2678.jpg	image/jpeg	18766	2012-09-30 12:19:26.024814	
379	980191154	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:26.627762	
380	980191155	char_tree912_2679.jpg	image/jpeg	15249	2012-09-30 12:19:27.232099	
381	980191155	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:27.890251	
382	980191151	char_tree912_2677.jpg	image/jpeg	20230	2012-09-30 12:19:28.496383	
383	980191151	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:29.143902	
384	980191158	char_tree912_2680.jpg	image/jpeg	23001	2012-09-30 12:19:29.723093	
385	980191158	char_tree912_2681.jpg	image/jpeg	24131	2012-09-30 12:19:30.506448	
370	980191157	char_tree912_2665.jpg	image/jpeg	15458	2012-09-30 12:21:31.695935	
386	980191159	2cLgZC.jpg	image/jpeg	92922	2012-10-24 09:54:50.586381	
387	980191159	00TnB6.jpg	image/jpeg	65200	2012-10-24 09:54:51.155712	
388	980191159	2nMXuH.jpg	image/jpeg	89756	2012-10-24 09:54:51.686825	
389	980191159	l5RtSV.jpg	image/jpeg	71870	2012-10-24 09:54:52.29226	
390	980191159	Pz9F6D.jpg	image/jpeg	28004	2012-10-24 09:54:52.968009	
391	980191159	qvDCm1.jpg	image/jpeg	91501	2012-10-24 09:54:53.496235	
392	980191159	SMrVWN.jpg	image/jpeg	134184	2012-10-24 09:54:54.118648	
394	980191163	char_tree1725_5109_(1).jpg	image/jpeg	22710	2012-10-25 07:50:23.484221	
395	980191163	char_tree1725_5110.jpg	image/jpeg	19691	2012-10-25 07:50:24.002244	
396	980191163	char_tree1725_5118.jpg	image/jpeg	15877	2012-10-25 07:50:24.592038	
397	980191163	char_tree1725_5119.jpg	image/jpeg	16040	2012-10-25 07:50:25.121032	
398	980191166	char_tree1725_5113.jpg	image/jpeg	18243	2012-10-25 08:18:02.366541	
399	980191166	char_tree1725_5114.jpg	image/jpeg	18850	2012-10-25 08:18:02.950415	
400	980191169	char_tree1725_5115.jpg	image/jpeg	21654	2012-10-25 08:26:29.396024	
401	980191169	char_tree1725_5116.jpg	image/jpeg	19458	2012-10-25 08:26:29.915753	
402	980191164	char_tree1725_5109_(1).jpg	image/jpeg	22710	2012-10-25 08:45:54.437681	
403	980191164	char_tree1725_5110.jpg	image/jpeg	19691	2012-10-25 08:45:54.971533	
404	980191164	char_tree1725_5118.jpg	image/jpeg	15877	2012-10-25 08:45:55.492099	
405	980191164	char_tree1725_5119.jpg	image/jpeg	16040	2012-10-25 08:45:56.012455	
406	980191166	char_tree1725_5118.jpg	image/jpeg	15877	2012-10-25 08:45:56.551438	
407	980191166	char_tree1725_5119.jpg	image/jpeg	16040	2012-10-25 08:45:57.045211	
408	980191167	char_tree1725_5113.jpg	image/jpeg	18243	2012-10-25 08:45:57.646297	
409	980191167	char_tree1725_5114.jpg	image/jpeg	18850	2012-10-25 08:45:58.178497	
410	980191167	char_tree1725_5118.jpg	image/jpeg	15877	2012-10-25 08:45:58.682801	
411	980191167	char_tree1725_5119.jpg	image/jpeg	16040	2012-10-25 08:45:59.210627	
412	980191169	char_tree1725_5118.jpg	image/jpeg	15877	2012-10-25 08:48:27.891319	
413	980191169	char_tree1725_5119.jpg	image/jpeg	16040	2012-10-25 08:48:28.396922	
414	980191171	img_7721.jpg	image/jpeg	481717	2012-10-25 12:06:35.253419	
415	980191171	img_7722.jpg	image/jpeg	533149	2012-10-25 12:06:35.932004	
416	980191171	img_7730.jpg	image/jpeg	520445	2012-10-25 12:06:36.50046	
417	980191171	img_9066.jpg	image/jpeg	336318	2012-10-25 12:06:37.113637	
418	980191171	img_9074.jpg	image/jpeg	363568	2012-10-25 12:06:37.680948	
419	980191171	standart1.jpg	image/jpeg	530829	2012-10-25 12:06:38.411929	
420	980191171	standart2.jpg	image/jpeg	564174	2012-10-25 12:06:39.058353	
421	980191171	standart3.jpg	image/jpeg	615645	2012-10-25 12:06:39.652909	
422	980191172	vip1.jpg	image/jpeg	504240	2012-10-25 12:27:09.180185	
423	980191172	vip2.jpg	image/jpeg	503385	2012-10-25 12:27:09.85968	
424	980191172	vip3.jpg	image/jpeg	565196	2012-10-25 12:27:10.452118	
425	980191172	vip4_0.jpg	image/jpeg	293160	2012-10-25 12:27:11.07698	
426	980191172	vip5.jpg	image/jpeg	509983	2012-10-25 12:27:11.627836	
427	980191172	vip9.jpg	image/jpeg	568771	2012-10-25 12:27:12.22009	
428	980191172	vip10.jpg	image/jpeg	309934	2012-10-25 12:27:12.912444	
429	980191172	vip11.jpg	image/jpeg	449635	2012-10-25 12:27:13.454666	
430	980191172	vip12.jpg	image/jpeg	557090	2012-10-25 12:27:14.046703	
431	980191172	vip13_0.jpg	image/jpeg	303032	2012-10-25 12:27:14.648735	
432	980191172	vip14_0.jpg	image/jpeg	300460	2012-10-25 12:27:15.197952	
433	980191172	vip15.jpg	image/jpeg	468407	2012-10-25 12:27:15.730136	
434	980191172	vip20_0.jpg	image/jpeg	377982	2012-10-25 12:27:16.407143	
435	980191176	3687.jpg	image/jpeg	30751	2012-10-26 07:03:31.063797	
436	980191176	3689.jpg	image/jpeg	31296	2012-10-26 07:03:31.589737	
437	980191176	3691.jpg	image/jpeg	28768	2012-10-26 07:03:32.109986	
438	980191176	3692.jpg	image/jpeg	33647	2012-10-26 07:03:32.608184	
439	980191177	3697.jpg	image/jpeg	30607	2012-10-26 07:21:45.440947	
440	980191177	3692.jpg	image/jpeg	33647	2012-10-26 07:21:45.904934	
441	980191178	3705.jpg	image/jpeg	26191	2012-10-26 07:21:46.364387	
442	980191178	3704.jpg	image/jpeg	30542	2012-10-26 07:21:46.80779	
443	980191178	3707.jpg	image/jpeg	31237	2012-10-26 07:21:47.381169	
444	980191179	3713.jpg	image/jpeg	28623	2012-10-26 07:21:47.841089	
445	980191179	3714.jpg	image/jpeg	31040	2012-10-26 07:21:48.28442	
446	980191179	3718.jpg	image/jpeg	30243	2012-10-26 07:21:48.743978	
447	980191179	3707.jpg	image/jpeg	31237	2012-10-26 07:21:49.187726	
448	980191180	2.jpg	image/jpeg	203627	2012-10-26 09:18:25.707809	
449	980191180	ap_03_0662.jpg	image/jpeg	82684	2012-10-26 09:18:26.356473	
450	980191181	dsc06824-1024.jpg	image/jpeg	83324	2012-10-26 09:23:55.724592	
451	980191181	ap_03_0662.jpg	image/jpeg	82684	2012-10-26 09:23:56.262454	
452	980191182	IMG_0251.jpg	image/jpeg	50897	2012-10-26 09:28:56.42526	
453	980191182	ap_03_0662.jpg	image/jpeg	82684	2012-10-26 09:28:56.940863	
454	980191183	char_tree918_5497.jpg	image/jpeg	16948	2012-10-26 10:31:41.57937	
455	980191183	char_tree918_5498.jpg	image/jpeg	18890	2012-10-26 10:31:42.061366	
456	980191184	char_tree918_5502.jpg	image/jpeg	22283	2012-10-26 10:37:28.944916	
457	980191184	char_tree918_5503.jpg	image/jpeg	22716	2012-10-26 10:37:29.452863	
458	980191184	char_tree918_5504.jpg	image/jpeg	13115	2012-10-26 10:37:30.032544	
459	980191184	char_tree918_5505.jpg	image/jpeg	16506	2012-10-26 10:37:30.509701	
460	980191183	char_tree918_5500.jpg	image/jpeg	18961	2012-10-26 10:46:09.361377	
461	980191183	char_tree918_5501.jpg	image/jpeg	20342	2012-10-26 10:46:09.876147	
462	980191184	char_tree918_5500.jpg	image/jpeg	18961	2012-10-26 10:46:10.389726	
463	980191184	char_tree918_5501.jpg	image/jpeg	20342	2012-10-26 10:46:10.993631	
464	980191185	char_tree918_5506.jpg	image/jpeg	18462	2012-10-26 10:46:11.527761	
465	980191185	char_tree918_5507.jpg	image/jpeg	20554	2012-10-26 10:46:12.0275	
466	980191185	char_tree918_5508.jpg	image/jpeg	18553	2012-10-26 10:46:12.527535	
467	980191185	char_tree918_5509.jpg	image/jpeg	21648	2012-10-26 10:46:13.03589	
468	980191185	char_tree918_5500.jpg	image/jpeg	18961	2012-10-26 10:46:13.662472	
469	980191185	char_tree918_5501.jpg	image/jpeg	20342	2012-10-26 10:46:14.21113	
470	980191186	2379701e5c.jpg	image/jpeg	193651	2012-10-30 15:10:49.664705	
471	980191186	6d2379701e.jpg	image/jpeg	209362	2012-10-30 15:10:50.260651	
472	980191186	e3190fd940.jpg	image/jpeg	200541	2012-10-30 15:10:50.84545	
473	980191187	1d15deca6f.jpg	image/jpeg	198774	2012-10-30 15:24:21.157489	
474	980191187	e252eb7852.jpg	image/jpeg	187507	2012-10-30 15:24:21.737532	
475	980191187	96073e252e.jpg	image/jpeg	187006	2012-10-30 15:24:22.333093	
476	980191188	1acd781b86.jpg	image/jpeg	202793	2012-10-30 15:38:40.930145	
477	980191188	37d90ee779.jpg	image/jpeg	214205	2012-10-30 15:38:41.55245	
478	980191188	47a1c15c82.jpg	image/jpeg	210103	2012-10-30 15:38:42.289272	
479	980191188	10456522b9.jpg	image/jpeg	183601	2012-10-30 15:38:42.900935	
480	980191188	e42dc14fde.jpg	image/jpeg	211824	2012-10-30 15:38:43.483369	
481	980191188	da82fe74ae.jpg	image/jpeg	208895	2012-10-30 15:38:44.095704	
482	980191189	540acec95f.jpg	image/jpeg	199331	2012-10-30 15:49:52.550756	
483	980191189	0141c46b33.jpg	image/jpeg	217132	2012-10-30 15:49:53.282829	
484	980191189	cd20217051.jpg	image/jpeg	225921	2012-10-30 15:49:53.861997	
485	980191189	990bbfe0a9.jpg	image/jpeg	223946	2012-10-30 15:49:54.558194	
486	980191189	a2540acec9.jpg	image/jpeg	227275	2012-10-30 15:49:55.191739	
487	980191189	70519c4e7b.jpg	image/jpeg	219246	2012-10-30 15:49:55.804894	
488	980191190	11.JPG	image/jpeg	256516	2012-10-31 06:39:20.960756	
489	980191190	12.JPG	image/jpeg	241949	2012-10-31 06:39:21.544511	
490	980191190	13.JPG	image/jpeg	250619	2012-10-31 06:39:22.099138	
491	980191190	27.JPG	image/jpeg	281676	2012-10-31 06:39:22.641265	
492	980191191	18.JPG	image/jpeg	238895	2012-10-31 06:46:09.168166	
493	980191191	19.JPG	image/jpeg	251487	2012-10-31 06:46:09.750931	
494	980191191	20.JPG	image/jpeg	256636	2012-10-31 06:46:10.345455	
495	980191191	28.JPG	image/jpeg	302071	2012-10-31 06:46:11.058511	
496	980191192	22.JPG	image/jpeg	298794	2012-10-31 07:27:27.451987	
497	980191192	28.JPG	image/jpeg	302071	2012-10-31 07:27:28.164084	
498	980191192	23.JPG	image/jpeg	230493	2012-10-31 07:27:28.757268	
499	980191193	21.JPG	image/jpeg	277770	2012-10-31 07:27:29.344783	
500	980191193	22.JPG	image/jpeg	298794	2012-10-31 07:27:29.938249	
501	980191193	23.JPG	image/jpeg	230493	2012-10-31 07:27:30.533481	
502	980191193	28.JPG	image/jpeg	302071	2012-10-31 07:27:31.101931	
503	980191194	21.JPG	image/jpeg	277770	2012-10-31 07:38:38.252336	
504	980191194	22.JPG	image/jpeg	298794	2012-10-31 07:38:38.81427	
505	980191194	23.JPG	image/jpeg	230493	2012-10-31 07:38:39.390446	
506	980191194	28.JPG	image/jpeg	302071	2012-10-31 07:38:39.954329	
507	980191195	14.JPG	image/jpeg	235318	2012-10-31 07:38:40.529889	
508	980191195	15.JPG	image/jpeg	269546	2012-10-31 07:38:41.218827	
509	980191195	16.JPG	image/jpeg	263037	2012-10-31 07:38:41.81143	
510	980191195	17.JPG	image/jpeg	237035	2012-10-31 07:38:42.36588	
515	980191195	19.JPG	image/jpeg	251487	2012-10-31 07:48:32.593661	
516	980191195	26.JPG	image/jpeg	300818	2012-10-31 07:48:33.162322	
517	980191204	загруженное_(15).jpg	image/jpeg	85511	2012-11-07 07:32:16.455738	
518	980191204	char_tree1714_5104.jpg	image/jpeg	14519	2012-11-07 07:32:17.025391	
519	980191204	char_tree1714_5107.jpg	image/jpeg	17973	2012-11-07 07:32:17.54507	
520	980191204	char_tree1714_5108.jpg	image/jpeg	30491	2012-11-07 07:32:18.146641	
522	980191205	char_tree1714_5106.jpg	image/jpeg	15692	2012-11-07 07:38:35.030674	
523	980191205	char_tree1714_5108.jpg	image/jpeg	30491	2012-11-07 07:38:35.547454	
528	980191207	загруженное_(18).jpg	image/jpeg	88688	2012-11-07 08:02:53.379936	
529	980191207	загруженное_(19).jpg	image/jpeg	83557	2012-11-07 08:02:53.954314	
530	980191207	загруженное_(24).jpg	image/jpeg	85255	2012-11-07 08:02:54.539993	
531	980191206	загруженное_(16).jpg	image/jpeg	84768	2012-11-07 08:11:48.623789	
532	980191206	char_tree1714_5101.jpg	image/jpeg	15831	2012-11-07 08:11:49.265711	
533	980191206	char_tree1714_5102.jpg	image/jpeg	21309	2012-11-07 08:11:49.907912	
534	980191206	char_tree1714_5103.jpg	image/jpeg	22805	2012-11-07 08:11:50.429108	
535	980191206	char_tree1714_5108.jpg	image/jpeg	30491	2012-11-07 08:11:50.929405	
536	980191217	1_1.jpg	image/jpeg	28633	2012-11-08 06:43:46.837325	
537	980191217	1_2.jpg	image/jpeg	25543	2012-11-08 06:43:47.413347	
538	980191217	1_3.jpg	image/jpeg	35737	2012-11-08 06:43:48.092186	
539	980191218	2_1.jpg	image/jpeg	28693	2012-11-08 06:56:22.556024	
540	980191218	2_2.jpg	image/jpeg	26833	2012-11-08 06:56:23.05083	
541	980191218	1_3.jpg	image/jpeg	35737	2012-11-08 06:56:23.705269	
545	980191219	2_1.jpg	image/jpeg	28693	2012-11-08 07:03:32.056294	
546	980191219	2_2.jpg	image/jpeg	26833	2012-11-08 07:03:32.593129	
547	980191219	1_3.jpg	image/jpeg	35737	2012-11-08 07:03:33.108579	
548	980191220	3_1.jpg	image/jpeg	30349	2012-11-08 07:08:55.133973	
549	980191220	3_2.jpg	image/jpeg	33480	2012-11-08 07:08:55.765667	
550	980191220	3_3.jpg	image/jpeg	31327	2012-11-08 07:08:56.29456	
551	980191220	17.jpg	image/jpeg	21599	2012-11-08 07:08:56.816482	
552	980191220	18.jpg	image/jpeg	18138	2012-11-08 07:08:57.375123	
553	980191220	15.jpg	image/jpeg	17501	2012-11-08 07:08:57.931886	
554	980191215	P6068512.jpg	image/jpeg	83112	2012-11-08 15:36:38.940527	
555	980191215	P6068513.jpg	image/jpeg	78090	2012-11-08 15:36:39.549836	
556	980191215	P6068515.jpg	image/jpeg	77879	2012-11-08 15:36:40.168943	
557	980191215	P6068514.jpg	image/jpeg	68653	2012-11-08 15:36:40.932767	
558	980191215	P6068517.jpg	image/jpeg	78627	2012-11-08 15:36:41.523052	
559	980191216	P6068507.jpg	image/jpeg	73171	2012-11-08 15:38:07.720195	
560	980191216	P6068508.jpg	image/jpeg	70155	2012-11-08 15:38:08.331472	
561	980191216	P6068509.jpg	image/jpeg	56151	2012-11-08 15:38:08.947892	
562	980191216	P6068510.jpg	image/jpeg	90243	2012-11-08 15:38:09.906083	
563	980191235	22635.jpg	image/jpeg	50116	2012-11-12 08:46:29.154232	
566	980191234	22630.jpg	image/jpeg	26450	2012-11-12 08:46:31.023902	
567	980191234	22634.jpg	image/jpeg	23501	2012-11-12 08:46:31.569106	
568	980191234	22633.jpg	image/jpeg	33712	2012-11-12 08:46:32.130291	
569	980191234	P4203524.JPG	image/jpeg	977329	2012-11-12 08:46:32.675509	
570	980191234	P4203525.JPG	image/jpeg	1111284	2012-11-12 08:46:34.2955	
571	980191235	22637.jpg	image/jpeg	43778	2012-11-12 08:48:33.847925	
572	980191235	22638.jpg	image/jpeg	35425	2012-11-12 08:48:34.500819	
573	980191236	8cf7f201-139c-4790-82dc-4b2633263028.jpg	image/jpeg	106076	2012-11-12 10:05:39.162429	
574	980191236	16afe28b-e878-4e3c-aa8a-265e419ba799.jpg	image/jpeg	78794	2012-11-12 10:05:39.796394	
575	980191236	899c4c5c-7767-4ae0-9ace-e24fad3b24b0.jpg	image/jpeg	91236	2012-11-12 10:05:40.416703	
576	980191237	9aedfb5a-5032-4c99-8d27-683b79e37205.jpg	image/jpeg	96351	2012-11-12 10:11:42.121023	
577	980191237	8732a830-c542-41ef-a8cb-b0490639f2d6.jpg	image/jpeg	113767	2012-11-12 10:11:42.680196	
578	980191237	a54c5d01-40ee-47b7-a5ae-6641aca78ae6.jpg	image/jpeg	93570	2012-11-12 10:11:43.273236	
579	980191237	56d5bb5e-2999-4840-ae69-ac499fbc97d0.jpg	image/jpeg	155449	2012-11-12 10:11:43.852935	
580	980191238	22265cc1-411b-4e44-85eb-04a8d793d29d.jpg	image/jpeg	72188	2012-11-12 10:24:41.144856	
581	980191238	86715b7b-6b07-45ac-90db-de6a31034076.jpg	image/jpeg	86534	2012-11-12 10:24:41.713763	
582	980191238	b6a0d107-b351-42fb-9fdc-f6642938a15a.jpg	image/jpeg	75894	2012-11-12 10:24:42.265987	
583	980191239	5ec9aa56-94e5-4299-b17f-1299a04cb2ad.jpg	image/jpeg	58959	2012-11-12 10:29:13.085052	
584	980191239	904baf9c-cb88-4928-8fa3-3b6b8b8675de.jpg	image/jpeg	73113	2012-11-12 10:29:13.658576	
585	980191239	7a06ed2e-5bd7-4e14-bde3-5496e1753d0b.jpg	image/jpeg	40385	2012-11-12 10:29:14.233353	
586	980191240	\N	\N	\N	\N	
587	980191240	\N	\N	\N	\N	
588	980191240	\N	\N	\N	\N	
589	980191240	\N	\N	\N	\N	
590	980191240	\N	\N	\N	\N	
591	980191240	\N	\N	\N	\N	
592	980191241	99b39a90-8869-423f-b1d3-02863ac89755.jpg	image/jpeg	137298	2012-11-12 10:44:40.136306	
593	980191241	d8e3e814-102f-4bfe-885b-4635650b84f3.jpg	image/jpeg	113988	2012-11-12 10:44:40.705454	
594	980191241	4095660b-7fe7-4e8b-9bf1-ddb7e9541ea1.jpg	image/jpeg	124961	2012-11-12 10:44:41.355984	
595	980191242	17.jpg	image/jpeg	45103	2012-11-12 12:24:03.342355	
596	980191242	21.jpg	image/jpeg	51448	2012-11-12 12:24:03.893811	
597	980191243	21.jpg	image/jpeg	51448	2012-11-12 12:24:04.452268	
598	980191243	23.jpg	image/jpeg	146850	2012-11-12 12:24:05.011016	
599	980191244	загруженное_(6).jpg	image/jpeg	73871	2012-11-13 10:28:30.798434	
600	980191245	2.jpg	image/jpeg	40127	2012-11-13 10:28:31.385864	
601	980191245	загруженное_(12).jpg	image/jpeg	70979	2012-11-13 10:28:31.926346	
603	980191246	7.jpg	image/jpeg	44611	2012-11-13 10:28:33.149833	
604	980191246	14.jpg	image/jpeg	36298	2012-11-13 10:28:33.754086	
605	980191247	3.jpg	image/jpeg	38575	2012-11-13 10:28:34.323034	
606	980191247	5.jpg	image/jpeg	45335	2012-11-13 10:28:35.10833	
607	980191247	6.jpg	image/jpeg	39992	2012-11-13 10:28:35.682523	
608	980191247	14.jpg	image/jpeg	36298	2012-11-13 10:28:36.258645	
609	980191248	4.jpg	image/jpeg	37407	2012-11-13 10:28:36.931704	
610	980191248	14.jpg	image/jpeg	36298	2012-11-13 10:28:37.527554	
611	980191249	pom-baturinux_(3).jpg	image/jpeg	52403	2012-11-14 05:59:51.674382	
612	980191249	pom-baturinux_(5).jpg	image/jpeg	12317	2012-11-14 05:59:52.216084	
613	980191250	pom-baturinux_(4).jpg	image/jpeg	47844	2012-11-14 05:59:52.732636	
614	980191250	pom-baturinux_(5).jpg	image/jpeg	12317	2012-11-14 05:59:53.269506	
615	980191251	pom-baturinux_(1).jpg	image/jpeg	59551	2012-11-14 05:59:53.801821	
616	980191251	pom-baturinux_(5).jpg	image/jpeg	12317	2012-11-14 05:59:54.317382	
617	980191252	\N	\N	\N	\N	
618	980191257	2_b.jpg	image/jpeg	39314	2012-11-19 10:55:51.278407	
619	980191257	3_b.jpg	image/jpeg	32796	2012-11-19 10:55:51.868069	
620	980191257	4_b.jpg	image/jpeg	33838	2012-11-19 10:55:52.430229	
621	980191257	ex1.jpg	image/jpeg	46434	2012-11-19 10:55:52.998764	
622	980191258	2_n_b.jpg	image/jpeg	28068	2012-11-19 11:01:59.677301	
623	980191258	3_n_b.jpg	image/jpeg	26501	2012-11-19 11:02:00.204336	
624	980191258	4_n_b.jpg	image/jpeg	29880	2012-11-19 11:02:00.743997	
625	980191259	1_b.jpg	image/jpeg	33407	2012-11-19 11:09:20.968749	
626	980191259	2_b.jpg	image/jpeg	38085	2012-11-19 11:09:21.618834	
627	980191259	3_b.jpg	image/jpeg	30576	2012-11-19 11:09:22.201018	
628	980191259	4_b.jpg	image/jpeg	33228	2012-11-19 11:09:22.739643	
633	980191260	10.jpg	image/jpeg	48010	2012-11-19 11:22:39.693434	
634	980191260	11.jpg	image/jpeg	51571	2012-11-19 11:22:40.243909	
635	980191260	12.jpg	image/jpeg	54992	2012-11-19 11:22:40.772124	
636	980191260	14.jpg	image/jpeg	65295	2012-11-19 11:22:41.301296	
637	980191260	16.jpg	image/jpeg	54918	2012-11-19 11:22:41.818287	
638	980191261	11.jpg	image/jpeg	47658	2012-11-19 16:35:53.93173	
639	980191261	6.jpg	image/jpeg	147209	2012-11-19 16:35:54.454313	
642	980191263	7.jpg	image/jpeg	186687	2012-11-19 16:35:56.318736	
643	980191263	9.jpg	image/jpeg	57449	2012-11-19 16:35:56.927393	
644	980191263	10.jpg	image/jpeg	49846	2012-11-19 16:35:57.47482	
645	980191263	12.jpg	image/jpeg	150175	2012-11-19 16:35:58.020473	
646	980191262	8.jpg	image/jpeg	194888	2012-11-19 16:41:54.066446	
647	980191262	6.jpg	image/jpeg	147209	2012-11-19 16:41:54.675519	
648	980191264	Плаза_9.jpg	image/jpeg	46806	2012-11-20 07:42:57.697716	
649	980191264	app1_small.jpg	image/jpeg	36543	2012-11-20 08:12:06.831722	
650	980191265	lux1_small.jpg	image/jpeg	37167	2012-11-20 08:12:07.354897	
651	980191266	standart1_small.jpg	image/jpeg	36129	2012-11-20 08:12:07.881522	
652	980191267	standart1_small.jpg	image/jpeg	36129	2012-11-20 08:12:08.522916	
653	980191268	luxs.jpg	image/jpeg	19225	2012-11-20 08:48:11.90611	
654	980191269	dbl.jpg	image/jpeg	78471	2012-11-20 08:48:12.477461	
655	980191270	twins.jpg	image/jpeg	51103	2012-11-20 08:48:13.030402	
656	980191271	twin.jpg	image/jpeg	38142	2012-11-20 08:48:13.675218	
657	980191269	bospor150.jpg	image/jpeg	7975	2012-11-20 09:18:40.175587	
658	980191270	bospor150.jpg	image/jpeg	7975	2012-11-20 09:18:40.681907	
659	980191271	bospor150.jpg	image/jpeg	7975	2012-11-20 09:18:41.212402	
660	980191268	bospor150.jpg	image/jpeg	7975	2012-11-20 09:18:41.70866	
665	980191273	lux-studio-new-1.jpg	image/jpeg	88697	2012-11-20 09:54:09.456264	
666	980191273	lux-studio-new-2.jpg	image/jpeg	96126	2012-11-20 09:54:10.032305	
667	980191273	lux-studio-new-3.jpg	image/jpeg	71949	2012-11-20 09:54:10.594849	
668	980191273	lux-studio-new-5.jpg	image/jpeg	44204	2012-11-20 09:54:11.366671	
669	980191273	lux-studio-new-4.jpg	image/jpeg	102053	2012-11-20 09:54:11.904623	
670	980191273	lux-studio-new-6.jpg	image/jpeg	74095	2012-11-20 09:54:12.45805	
671	980191274	polulux-new-1.jpg	image/jpeg	84114	2012-11-20 09:58:29.368	
672	980191274	polulux-new-2.jpg	image/jpeg	81770	2012-11-20 09:58:29.921161	
673	980191274	polulux-new-6.jpg	image/jpeg	108965	2012-11-20 09:58:30.471797	
674	980191274	polulux-new-3.jpg	image/jpeg	178042	2012-11-20 09:58:31.039003	
675	980191274	polulux-new-5.jpg	image/jpeg	53564	2012-11-20 09:58:31.599552	
676	980191275	\N	\N	\N	\N	
677	980191275	\N	\N	\N	\N	
678	980191275	\N	\N	\N	\N	
679	980191275	\N	\N	\N	\N	
680	980191276	\N	\N	\N	\N	
681	980191276	\N	\N	\N	\N	
682	980191276	\N	\N	\N	\N	
683	980191276	\N	\N	\N	\N	
684	980191277	\N	\N	\N	\N	
685	980191277	\N	\N	\N	\N	
686	980191277	\N	\N	\N	\N	
687	980191272	lux-new-1.jpg	image/jpeg	68152	2012-11-20 10:46:26.069052	
688	980191272	lux-new-2.jpg	image/jpeg	91606	2012-11-20 10:46:26.638022	
689	980191272	lux-new-3.jpg	image/jpeg	110528	2012-11-20 10:46:27.221964	
690	980191272	lux-new-4.jpg	image/jpeg	50033	2012-11-20 10:46:27.805751	
691	980191278	vb_(11).jpg	image/jpeg	6814	2012-11-22 07:10:47.694678	
692	980191278	vb_(12).jpg	image/jpeg	4710	2012-11-22 07:10:48.25072	
693	980191278	vb3.jpg	image/jpeg	7125	2012-11-22 07:10:48.739793	
694	980191279	vb_(13).jpg	image/jpeg	5274	2012-11-22 07:10:49.36988	
695	980191279	vb.jpg	image/jpeg	6411	2012-11-22 07:10:49.863438	
696	980191279	vb3.jpg	image/jpeg	7125	2012-11-22 07:10:50.352763	
697	980191280	vb_(3).jpg	image/jpeg	6825	2012-11-22 07:10:50.857032	
698	980191280	vb_(4).jpg	image/jpeg	5578	2012-11-22 07:10:51.33553	
699	980191280	vb_(5).jpg	image/jpeg	8262	2012-11-22 07:10:51.817312	
700	980191281	vb_(6).jpg	image/jpeg	6408	2012-11-22 07:10:52.333532	
701	980191281	vb_(7).jpg	image/jpeg	5392	2012-11-22 07:10:52.838083	
702	980191281	vb_(8).jpg	image/jpeg	5751	2012-11-22 07:10:53.433232	
703	980191282	DSC02136.jpg	image/jpeg	189298	2012-11-22 08:05:56.415056	
704	980191282	DSC02139.jpg	image/jpeg	170689	2012-11-22 08:05:57.098625	
705	980191283	DSC01987.jpg	image/jpeg	145258	2012-11-22 08:19:12.057493	
706	980191284	DSC02211.jpg	image/jpeg	74593	2012-11-22 08:22:07.267524	
707	980191284	DSC02213.jpg	image/jpeg	79531	2012-11-22 08:22:07.973659	
708	980191284	DSC02220.jpg	image/jpeg	50135	2012-11-22 08:22:08.548513	
709	980191284	DSC02238.jpg	image/jpeg	79539	2012-11-22 08:22:09.119101	
710	980191285	DSC02012.jpg	image/jpeg	76764	2012-11-22 08:27:22.040251	
711	980191285	DSC02021.jpg	image/jpeg	78116	2012-11-22 08:27:22.636396	
712	980191285	DSC02026.jpg	image/jpeg	75640	2012-11-22 08:27:23.222551	
713	980191285	DSC02028.jpg	image/jpeg	71542	2012-11-22 08:27:23.790564	
714	980191285	\N	\N	\N	\N	
715	980191286	DSC02055.jpg	image/jpeg	84469	2012-11-22 08:31:21.90995	
716	980191286	DSC02074.jpg	image/jpeg	57671	2012-11-22 08:31:22.48924	
717	980191286	DSC02076.jpg	image/jpeg	75034	2012-11-22 08:31:23.057428	
718	980191286	DSC02083.jpg	image/jpeg	87806	2012-11-22 08:31:23.637019	
719	980191286	DSC02092.jpg	image/jpeg	94054	2012-11-22 08:31:24.208537	
720	980191286	DSC02097.jpg	image/jpeg	66348	2012-11-22 08:31:24.795248	
721	980191286	DSC02108.jpg	image/jpeg	67401	2012-11-22 08:31:25.465423	
722	980191286	DSC02056.jpg	image/jpeg	57293	2012-11-22 08:31:26.047093	
723	980191287	DSC02151.jpg	image/jpeg	66959	2012-11-22 08:33:49.819296	
724	980191287	DSC02153.jpg	image/jpeg	83471	2012-11-22 08:33:50.379287	
725	980191287	DSC02163.jpg	image/jpeg	69613	2012-11-22 08:33:50.95153	
726	980191287	DSC02165.jpg	image/jpeg	77062	2012-11-22 08:33:51.520701	
727	980191288	DSC03081.jpg	image/jpeg	159913	2012-11-22 08:36:34.85314	
728	980191288	DSC03087.jpg	image/jpeg	91966	2012-11-22 08:36:35.455017	
729	980191288	DSC03096.jpg	image/jpeg	112644	2012-11-22 08:36:36.092058	
730	980191288	DSC03102.jpg	image/jpeg	67951	2012-11-22 08:36:36.835471	
731	980191288	DSC03110.jpg	image/jpeg	82918	2012-11-22 08:36:37.456452	
732	980191288	DSC03113.jpg	image/jpeg	101561	2012-11-22 08:36:38.08781	
733	980191289	DSC03115.jpg	image/jpeg	97813	2012-11-22 08:38:05.714811	
734	980191289	DSC03127.jpg	image/jpeg	153219	2012-11-22 08:38:06.332321	
735	980191289	DSC03131.jpg	image/jpeg	83001	2012-11-22 08:38:06.961734	
736	980191289	DSC03135.jpg	image/jpeg	90988	2012-11-22 08:38:07.566557	
737	980191290	DSC03138.jpg	image/jpeg	146327	2012-11-22 08:39:55.511328	
738	980191290	DSC03143.jpg	image/jpeg	151104	2012-11-22 08:39:56.135521	
739	980191290	DSC03144.jpg	image/jpeg	53335	2012-11-22 08:39:56.740714	
740	980191290	DSC03139.jpg	image/jpeg	120594	2012-11-22 08:39:57.27464	
741	980191290	DSC03144.jpg	image/jpeg	53335	2012-11-22 08:39:57.917743	
742	980191291	12708373414185.jpg	image/jpeg	62424	2012-11-22 10:37:36.000249	
743	980191291	12708373433401.jpg	image/jpeg	59282	2012-11-22 10:37:36.675308	
744	980191291	12708373458930.jpg	image/jpeg	50147	2012-11-22 10:37:37.27178	
745	980191291	12708373463233.jpg	image/jpeg	46517	2012-11-22 10:37:37.998088	
746	980191291	12708373481995.jpg	image/jpeg	47243	2012-11-22 10:37:38.595896	
747	980191292	12708371087598.jpg	image/jpeg	100144	2012-11-22 10:43:49.104336	
748	980191292	12730260946045.jpg	image/jpeg	88572	2012-11-22 10:43:49.731577	
749	980191292	12708372229787.jpg	image/jpeg	73979	2012-11-22 10:43:50.455892	
750	980191292	12708371104666.jpg	image/jpeg	47243	2012-11-22 10:43:51.052669	
751	980191292	12708372575116.jpg	image/jpeg	50147	2012-11-22 10:43:51.645208	
752	980191292	12708373463233.jpg	image/jpeg	46517	2012-11-22 10:43:52.237539	
753	980191292	12708371124985.jpg	image/jpeg	62424	2012-11-22 10:43:52.832603	
754	980191293	12730259949949.jpg	image/jpeg	59349	2012-11-22 10:47:13.929344	
755	980191293	12730260424530.jpg	image/jpeg	59282	2012-11-22 10:47:14.59911	
756	980191293	12708371804737.jpg	image/jpeg	50147	2012-11-22 10:47:15.217919	
757	980191293	12708371827077.jpg	image/jpeg	46517	2012-11-22 10:47:15.806236	
758	980191293	12708371844408.jpg	image/jpeg	47243	2012-11-22 10:47:16.399114	
759	980191293	12708371760999.jpg	image/jpeg	62424	2012-11-22 10:47:16.992023	
760	980191294	22.jpg	image/jpeg	97145	2012-11-22 12:02:28.659031	
762	980191294	23.jpg	image/jpeg	101299	2012-11-22 12:03:59.248568	
763	980191294	27.jpg	image/jpeg	74851	2012-11-22 12:03:59.860789	
764	980191297	20.jpg	image/jpeg	114451	2012-11-22 12:08:46.31296	
765	980191297	21.jpg	image/jpeg	106200	2012-11-22 12:08:46.914237	
766	980191297	27.jpg	image/jpeg	74851	2012-11-22 12:08:47.491095	
767	980191295	22.jpg	image/jpeg	97145	2012-11-22 12:09:29.394859	
768	980191295	23.jpg	image/jpeg	101299	2012-11-22 12:09:30.097944	
769	980191295	27.jpg	image/jpeg	74851	2012-11-22 12:09:30.690126	
770	980191298	24.jpg	image/jpeg	143997	2012-11-22 12:12:44.733525	
771	980191298	27.jpg	image/jpeg	74851	2012-11-22 12:12:45.356345	
772	980191299	26.jpg	image/jpeg	125744	2012-11-22 12:15:14.16093	
773	980191299	19.jpg	image/jpeg	102158	2012-11-22 12:15:14.88178	
774	980191299	28.jpg	image/jpeg	94904	2012-11-22 12:15:15.481954	
775	980191296	21_(1).jpg	image/jpeg	79815	2012-11-22 12:19:17.830295	
776	980191300	IMG_5756_1_.jpg	image/jpeg	37136	2012-11-22 13:52:07.257046	
777	980191301	00.jpg	image/jpeg	53940	2012-11-22 13:52:07.872189	
778	980191302	4.jpg	image/jpeg	63296	2012-11-22 13:52:08.492661	
779	980191302	люкс_1.jpg	image/jpeg	37499	2012-11-22 13:52:09.09169	
780	980191303	IMG_8415.JPG	image/jpeg	45943	2012-11-22 13:55:33.628407	
781	980191303	IMG_8417.JPG	image/jpeg	44063	2012-11-22 13:55:34.21255	
782	980191300	IMG_2286_1_.jpg	image/jpeg	39418	2012-11-22 14:03:53.839125	
783	980191301	IMG_2286_1_.jpg	image/jpeg	39418	2012-11-22 14:03:54.435448	
784	980191302	IMG_5763_1_.jpg	image/jpeg	37696	2012-11-22 14:04:20.402047	
785	980191303	IMG_5763_1_.jpg	image/jpeg	37696	2012-11-22 14:04:20.981512	
786	980191304	1_4.jpg	image/jpeg	1434719	2012-11-22 15:10:08.647724	
787	980191305	1_30.jpg	image/jpeg	1312289	2012-11-22 15:10:12.732337	
788	980191306	1_30.jpg	image/jpeg	1312289	2012-11-22 15:11:57.178504	
789	980191307	1_6.jpg	image/jpeg	775842	2012-11-22 15:13:54.502463	
790	980191307	1_35.jpg	image/jpeg	1116043	2012-11-22 15:20:03.077623	
791	980191307	1_37.jpg	image/jpeg	1536872	2012-11-22 15:20:06.371596	
792	980191308	1_23.jpg	image/jpeg	1053865	2012-11-22 15:20:09.271401	
793	980191308	1_31.jpg	image/jpeg	780489	2012-11-22 15:20:12.206836	
794	980191308	1_32.jpg	image/jpeg	1306557	2012-11-22 15:20:14.048179	
795	980191308	1_34.png	image/png	9419996	2012-11-22 15:26:33.089289	
796	980191309	1_36.jpg	image/jpeg	1449179	2012-11-22 15:26:39.007169	
797	980191310	1_7.jpg	image/jpeg	1007821	2012-11-22 15:30:00.101142	
798	980191311	1_38.jpg	image/jpeg	970141	2012-11-22 15:32:06.158061	
799	980191312	1_39.jpg	image/jpeg	989501	2012-11-22 15:35:52.019195	
800	980191313	1_40.jpg	image/jpeg	1339037	2012-11-22 15:35:53.929008	
801	980191314	1_8.jpg	image/jpeg	1019807	2012-11-22 15:39:54.616015	
802	980191315	1_27.jpg	image/jpeg	1201095	2012-11-22 15:39:56.774512	
803	980191316	1_5.jpg	image/jpeg	26709	2012-11-22 15:43:30.174253	
804	980191317	1_26.jpg	image/jpeg	704890	2012-11-22 15:43:30.768099	
805	980191318	foto1000001e.jpg	image/jpeg	120992	2012-11-23 06:56:12.009823	
806	980191318	foto1000002e.jpg	image/jpeg	106454	2012-11-23 06:56:12.662681	
807	980191318	foto6.jpg	image/jpeg	24845	2012-11-23 06:56:13.295271	
808	980191319	b_800_600_0_00___images_1.jpg	image/jpeg	62221	2012-11-23 07:37:30.56509	
809	980191319	b_800_600_0_00___images_2.jpg	image/jpeg	33745	2012-11-23 07:37:31.189558	
810	980191320	b_800_600_0_00___images_IMG_5755.jpg	image/jpeg	103167	2012-11-23 07:43:28.6388	
811	980191320	b_800_600_0_00___images_IMG_5742.jpg	image/jpeg	95883	2012-11-23 07:43:29.260999	
812	980191320	b_800_600_0_00___images_IMG_5749.jpg	image/jpeg	99460	2012-11-23 07:43:29.869077	
813	980191320	b_800_600_0_00___images_IMG_5757.jpg	image/jpeg	86235	2012-11-23 07:43:30.508656	
814	980191321	b_800_600_0_00___images_IMG_5762.jpg	image/jpeg	83306	2012-11-23 07:51:58.230432	
815	980191321	b_800_600_0_00___images_IMG_5764.jpg	image/jpeg	83774	2012-11-23 07:51:58.840612	
816	980191321	b_800_600_0_00___images_IMG_5766.jpg	image/jpeg	80672	2012-11-23 07:51:59.434515	
817	980191322	b_800_600_0_00___images_img_6438.jpg	image/jpeg	77942	2012-11-23 07:57:18.290497	
818	980191322	b_800_600_0_00___images_img_6441.jpg	image/jpeg	47496	2012-11-23 07:57:18.949305	
819	980191322	b_800_600_0_00___images_img_6443.jpg	image/jpeg	57443	2012-11-23 07:57:19.546983	
820	980191322	b_800_600_0_00___images_img_6446.jpg	image/jpeg	72041	2012-11-23 07:57:20.122213	
821	980191322	b_800_600_0_00___images_img_6445.jpg	image/jpeg	43674	2012-11-23 07:57:20.744363	
822	980191323	neva-04.jpg	image/jpeg	70341	2012-11-23 10:58:50.314055	
823	980191323	neva-05.jpg	image/jpeg	85389	2012-11-23 10:58:50.905566	
824	980191323	neva-06.jpg	image/jpeg	74140	2012-11-23 10:58:51.489301	
825	980191323	neva-11.jpg	image/jpeg	72684	2012-11-23 10:58:52.064408	
826	980191324	neva-13.jpg	image/jpeg	74625	2012-11-23 11:05:13.852668	
827	980191324	neva-12.jpg	image/jpeg	75469	2012-11-23 11:05:14.468886	
828	980191324	neva-11.jpg	image/jpeg	72684	2012-11-23 11:05:15.02565	
829	980191325	neva-28.jpg	image/jpeg	101555	2012-11-23 11:10:55.721038	
830	980191325	neva-29.jpg	image/jpeg	65785	2012-11-23 11:10:56.302163	
831	980191325	213_1479.jpg	image/jpeg	111160	2012-11-23 11:10:56.869596	
832	980191325	neva-11.jpg	image/jpeg	72684	2012-11-23 11:10:57.482629	
833	980191326	neva-17.jpg	image/jpeg	70038	2012-11-23 11:14:30.695264	
834	980191326	neva-22.jpg	image/jpeg	80512	2012-11-23 11:14:31.255644	
835	980191326	neva-19.jpg	image/jpeg	46701	2012-11-23 11:14:31.82818	
844	980191328	1206120018fk.jpg	image/jpeg	73284	2012-11-23 11:53:32.531081	
845	980191328	1206120019qa.jpg	image/jpeg	78780	2012-11-23 11:53:33.181079	
846	980191328	1206120020tk.jpg	image/jpeg	75816	2012-11-23 11:53:33.845931	
847	980191328	1206120021va.jpg	image/jpeg	68600	2012-11-23 11:53:34.502969	
848	980191327	1206120014ur.jpg	image/jpeg	80273	2012-11-23 11:56:15.205966	
849	980191327	1206120015ec.jpg	image/jpeg	66487	2012-11-23 11:56:15.888238	
850	980191327	1206120017nh.jpg	image/jpeg	76648	2012-11-23 11:56:16.516799	
851	980191327	1206120016yq.jpg	image/jpeg	43357	2012-11-23 11:56:17.114029	
854	980191331	1225219903_nomer_10.jpg	image/jpeg	52908	2012-11-23 12:46:40.0869	
855	980191331	1225219903_nomer_11.jpg	image/jpeg	49443	2012-11-23 12:46:40.679326	
856	980191331	1225219905_nomer_12.jpg	image/jpeg	41949	2012-11-23 12:46:41.294032	
857	980191331	1225219906_nomer_14.jpg	image/jpeg	49021	2012-11-23 12:46:41.8652	
858	980191331	1225219920_su_4.jpg	image/jpeg	52149	2012-11-23 12:46:42.472697	
859	980191332	1225219910_nomer_7.jpg	image/jpeg	48174	2012-11-23 13:04:54.387032	
860	980191332	1225219912_nomer_9.jpg	image/jpeg	41306	2012-11-23 13:04:54.960829	
861	980191332	nomer_4.JPG	image/jpeg	51151	2012-11-23 13:04:55.524501	
862	980191332	nomer_6.JPG	image/jpeg	48375	2012-11-23 13:04:56.220781	
863	980191332	nomer_8.JPG	image/jpeg	44335	2012-11-23 13:04:56.792507	
864	980191330	nomer_1.JPG	image/jpeg	46694	2012-11-23 13:09:08.010955	
865	980191330	nomer_3.JPG	image/jpeg	43075	2012-11-23 13:09:08.596741	
866	980191330	su_1.JPG	image/jpeg	80483	2012-11-23 13:09:09.168521	
867	980191333	12aa4bc0d0bbc01b4579057ddb6dabed.jpg	image/jpeg	23881	2012-11-23 14:08:02.880731	
868	980191333	62f91183361835cdf55f15fc9e0b8148.jpg	image/jpeg	38218	2012-11-23 14:08:03.563103	
869	980191334	8b7ec4b056fb97dec3861d83671a600b.JPG	image/jpeg	30937	2012-11-23 14:08:04.180599	
870	980191334	341bbdea8808832ced997685e4156b0d.JPG	image/jpeg	34129	2012-11-23 14:08:04.820844	
871	980191334	e31d271fe1b17b9453cdfa8f2395a967.JPG	image/jpeg	35812	2012-11-23 14:08:05.440046	
872	980191334	f00fbeb00d161c038402317b40887e0f.JPG	image/jpeg	28013	2012-11-23 14:08:06.02743	
873	980191334	15d49ede4f38f026a5c7dfb083f51892.JPG	image/jpeg	24663	2012-11-23 14:08:06.593461	
874	980191335	3e9a3cbe7bebfa2a80ff84a9e164d746.JPG	image/jpeg	25230	2012-11-23 14:33:48.023459	
875	980191335	0bb614791d37ec155365d12c1c7b4bd0.JPG	image/jpeg	24728	2012-11-23 14:33:48.569524	
876	980191335	c710d5db4079b2e6d2e15a7d4ad1f402.JPG	image/jpeg	46059	2012-11-23 14:33:49.129948	
877	980191336	01d39900624fb4648402baf87e4aa35c.JPG	image/jpeg	30374	2012-11-23 14:37:33.780435	
878	980191336	8476ed3e134cace67cf68b8e08901ca0.JPG	image/jpeg	26839	2012-11-23 14:37:34.345348	
879	980191336	7d7891c2044a83946bbd543d93f54dbc.JPG	image/jpeg	25199	2012-11-23 14:37:34.907102	
880	980191337	50deee636c0e98644d194e6aab1fdd80.JPG	image/jpeg	29400	2012-11-23 17:02:06.47511	
881	980191337	d0510bcaac4209c131463c2e6d657460.JPG	image/jpeg	43653	2012-11-23 17:02:07.060998	
882	980191337	eefaaa8e1ee0f54144e0fc77b6084ec0.JPG	image/jpeg	24682	2012-11-23 17:02:07.63437	
883	980191337	f5da88852518d90ae0bfffbdef473195.JPG	image/jpeg	33966	2012-11-23 17:02:08.193553	
884	980191337	f53328041939731c39f3dbea9badc401.JPG	image/jpeg	32043	2012-11-23 17:02:08.747432	
885	980191338	cfc090e6b8bdc2e003fb4d4b8dd861c5.jpg	image/jpeg	25567	2012-11-23 17:06:07.92563	
886	980191338	76aa906fc891f9395d053b2eef99de87.JPG	image/jpeg	25922	2012-11-23 17:06:08.470372	
887	980191338	cf18f02e5a921fb353d7858de147340c.JPG	image/jpeg	31937	2012-11-23 17:06:09.019914	
888	980191338	e1d884e36b977bae88a432d127696504.jpg	image/jpeg	26961	2012-11-23 17:06:09.674403	
889	980191339	c984be2849fdc53d7a544b34692e43aa.jpg	image/jpeg	29042	2012-11-23 17:17:26.864637	
890	980191339	d473d2aced4fbb215478a201e9d6dcb6.jpg	image/jpeg	32702	2012-11-23 17:17:27.434659	
891	980191339	2dc444188f693b55c995946b1ff2c5e5.JPG	image/jpeg	25428	2012-11-23 17:17:28.013906	
892	980191339	2c0445525b1ad4454741fd0d05f5ba2b.JPG	image/jpeg	35775	2012-11-23 17:17:28.568134	
893	980191340	42740127a88c8cb9412f548527474d5d.jpg	image/jpeg	36257	2012-11-23 17:21:27.733351	
894	980191340	f53328041939731c39f3dbea9badc401.JPG	image/jpeg	32043	2012-11-23 17:21:28.296351	
895	980191334	a5158d29b1fb07eea18c28049b769a1d.jpg	image/jpeg	33429	2012-11-23 17:23:28.812333	
896	980191334	961e4d683d2c316fd948ddb64914ccab.jpg	image/jpeg	40885	2012-11-23 17:23:29.372884	
897	980191340	a5158d29b1fb07eea18c28049b769a1d.jpg	image/jpeg	33429	2012-11-23 17:23:30.043419	
898	980191340	0bfde83a3898a067725438f5e710bb7e.JPG	image/jpeg	36868	2012-11-23 17:23:30.628483	
899	980191340	961e4d683d2c316fd948ddb64914ccab.jpg	image/jpeg	40885	2012-11-23 17:23:31.207705	
912	980191347	nomera-povyishennoy-komfortnosti-4.jpg	image/jpeg	54784	2012-11-26 10:41:22.823236	
913	980191347	nomera-povyishennoy-komfortnosti-1.jpg	image/jpeg	62074	2012-11-26 10:41:23.415934	
914	980191347	nomera-povyishennoy-komfortnosti-2.jpg	image/jpeg	60620	2012-11-26 10:41:23.964797	
907	980191348	3-h-mestnyiy-standart2-2.jpg	image/jpeg	52076	2012-11-26 10:43:52.691256	
908	980191349	4h-mestnyiy-standart-2.jpg	image/jpeg	86961	2012-11-26 10:43:53.25445	
915	980191346	2h-mestnyiy-standart-2.jpg	image/jpeg	56271	2012-11-26 10:43:53.850357	
916	980191346	2h-mestnyiy-standart2-2.jpg	image/jpeg	58652	2012-11-26 10:43:54.470899	
917	980191346	2h-mestnyiy-standart-1.jpg	image/jpeg	73584	2012-11-26 10:43:55.065911	
918	980191351	10.jpg	image/jpeg	72559	2012-11-26 16:46:59.786406	
919	980191351	11.jpg	image/jpeg	75903	2012-11-26 16:47:00.451153	
920	980191351	12.jpg	image/jpeg	69784	2012-11-26 16:47:01.013204	
921	980191351	13.jpg	image/jpeg	71016	2012-11-26 16:47:01.579714	
922	980191351	16.jpg	image/jpeg	87297	2012-11-26 16:47:02.311117	
923	980191352	10.jpg	image/jpeg	72559	2012-11-26 16:47:02.906359	
924	980191352	11.jpg	image/jpeg	75903	2012-11-26 16:47:03.482449	
925	980191352	12.jpg	image/jpeg	69784	2012-11-26 16:47:04.051112	
926	980191352	13.jpg	image/jpeg	71016	2012-11-26 16:47:04.595568	
927	980191352	16.jpg	image/jpeg	87297	2012-11-26 16:47:05.169909	
928	980191353	17.jpg	image/jpeg	74060	2012-11-26 16:47:05.758279	
929	980191353	18.jpg	image/jpeg	74329	2012-11-26 16:47:06.364834	
930	980191353	19.jpg	image/jpeg	72293	2012-11-26 16:47:07.125794	
932	980191354	char_tree2040_6518.jpg	image/jpeg	21773	2012-11-27 05:59:08.725749	
933	980191354	char_tree2040_6519.jpg	image/jpeg	20611	2012-11-27 05:59:09.324474	
934	980191354	char_tree2040_6534.jpg	image/jpeg	19264	2012-11-27 05:59:09.875953	
935	980191354	char_tree2040_6523.jpg	image/jpeg	22267	2012-11-27 05:59:10.438498	
936	980191354	char_tree2040_6531.jpg	image/jpeg	19883	2012-11-27 05:59:11.106457	
937	980191354	char_tree2040_6524.jpg	image/jpeg	31674	2012-11-27 06:00:06.618162	
938	980191355	dhcndhdhdhdhnn.jpg	image/jpeg	67431	2012-11-27 07:08:38.986265	
939	980191355	dhcndhdhdhdhnn-2.jpg	image/jpeg	55686	2012-11-27 07:08:39.552877	
940	980191355	dhcndhdhdhdhnn-4.jpg	image/jpeg	67324	2012-11-27 07:08:40.135685	
941	980191355	dhcndhdhdhdhnn-5.jpg	image/jpeg	58418	2012-11-27 07:08:40.729034	
942	980191355	dhcndhdhdhdhnn-nfdhdhnfdhdhudh.jpg	image/jpeg	55485	2012-11-27 07:08:41.311724	
943	980191356	dhdhdhnf-dhnzdhnf-dhdhnfndhdh.jpg	image/jpeg	61781	2012-11-27 07:14:30.744812	
944	980191356	dhdhdhnn2.jpg	image/jpeg	47992	2012-11-27 07:14:31.327627	
945	980191356	dhcndhdhdhdhnn-nfdhdhnfdhdhudh.jpg	image/jpeg	55485	2012-11-27 07:14:31.894437	
946	980191357	dhdhdhnn4.jpg	image/jpeg	63192	2012-11-27 07:14:32.500589	
947	980191357	dhdhdhnn5.jpg	image/jpeg	63304	2012-11-27 07:14:33.099232	
948	980191357	dhdhdhnn2.jpg	image/jpeg	47992	2012-11-27 07:14:33.80513	
949	980191357	dhdhdhnn.jpg	image/jpeg	68294	2012-11-27 07:14:34.400946	
950	980191357	dhcdhnfdhdh-dhdhdhdhdhndh-dhndhnndh.jpg	image/jpeg	95577	2012-11-27 07:14:34.995496	
951	980191357	dhdhdhnn3.jpg	image/jpeg	42745	2012-11-27 07:14:35.607222	
952	980191358	68_3912.jpg	image/jpeg	83907	2012-11-27 08:37:49.048236	
953	980191358	68_3913.jpg	image/jpeg	81026	2012-11-27 08:37:49.654892	
954	980191358	68_382.jpg	image/jpeg	48553	2012-11-27 08:37:50.282822	
955	980191358	68_3915.jpg	image/jpeg	68355	2012-11-27 08:37:50.859198	
956	980191362	char_tree1639_4881.jpg	image/jpeg	11219	2012-11-27 09:33:28.460584	
957	980191362	char_tree1639_4897.jpg	image/jpeg	10611	2012-11-27 09:33:29.021729	
958	980191362	char_tree1639_4898.jpg	image/jpeg	13585	2012-11-27 09:33:29.586421	
959	980191362	char_tree1639_4882.jpg	image/jpeg	10737	2012-11-27 09:33:30.147057	
960	980191362	char_tree1639_4895.jpg	image/jpeg	19252	2012-11-27 09:33:30.714823	
961	980191363	char_tree1639_4886.jpg	image/jpeg	16171	2012-11-27 09:35:32.611642	
962	980191363	char_tree1639_4887.jpg	image/jpeg	16945	2012-11-27 09:35:33.182799	
963	980191363	char_tree1639_4884.jpg	image/jpeg	15417	2012-11-27 09:35:33.746527	
964	980191363	char_tree1639_4885.jpg	image/jpeg	12750	2012-11-27 09:35:34.329274	
965	980191363	char_tree1639_4888.jpg	image/jpeg	16270	2012-11-27 09:35:34.907321	
966	980191363	char_tree1639_4890.jpg	image/jpeg	15381	2012-11-27 09:35:35.493176	
967	980191363	char_tree1639_4895.jpg	image/jpeg	19252	2012-11-27 09:35:36.06003	
968	980191364	char_tree1639_4891.jpg	image/jpeg	15611	2012-11-27 09:37:03.951739	
969	980191364	char_tree1639_4892.jpg	image/jpeg	16980	2012-11-27 09:37:04.513879	
970	980191364	char_tree1639_4894.jpg	image/jpeg	19138	2012-11-27 09:37:05.087363	
971	980191364	char_tree1639_4893.jpg	image/jpeg	15939	2012-11-27 09:37:05.659254	
972	980191364	char_tree1639_4895.jpg	image/jpeg	19252	2012-11-27 09:37:06.217045	
973	980191365	16.jpg	image/jpeg	44726	2012-11-27 10:21:38.727968	
974	980191365	17.jpg	image/jpeg	41848	2012-11-27 10:21:39.31305	
975	980191365	18.jpg	image/jpeg	43373	2012-11-27 10:21:39.901413	
976	980191366	8.jpg	image/jpeg	59085	2012-11-27 10:23:06.328453	
977	980191366	9.jpg	image/jpeg	54642	2012-11-27 10:23:06.925455	
978	980191366	10.jpg	image/jpeg	54676	2012-11-27 10:23:07.501921	
979	980191366	11.jpg	image/jpeg	54156	2012-11-27 10:23:08.105108	
980	980191366	12.jpg	image/jpeg	56458	2012-11-27 10:23:08.710682	
986	980191370	IMG_0417.jpg	image/jpeg	72423	2012-11-28 08:28:07.011305	
987	980191370	IMG_0446.jpg	image/jpeg	68002	2012-11-28 08:28:07.574303	
988	980191370	IMG_2312.jpg	image/jpeg	62565	2012-11-28 08:28:08.228692	
989	980191370	IMG_0452.jpg	image/jpeg	88817	2012-11-28 08:28:08.791173	
990	980191370	IMG_2318.jpg	image/jpeg	68301	2012-11-28 08:28:09.368115	
991	980191370	IMG_5807.jpg	image/jpeg	71025	2012-11-28 08:28:09.956562	
994	980191368	IMG_2309.jpg	image/jpeg	49675	2012-11-28 08:30:09.924251	
995	980191368	1523.jpg	image/jpeg	31541	2012-11-28 08:30:10.668783	
996	980191369	IMG_0419.jpg	image/jpeg	61904	2012-11-28 08:30:11.305994	
997	980191369	IMG_0435.jpg	image/jpeg	63448	2012-11-28 08:30:12.051665	
998	980191371	000014.JPG	image/jpeg	105193	2012-11-28 09:06:11.345124	
999	980191371	P1000020.JPG	image/jpeg	83115	2012-11-28 09:06:11.965352	
1000	980191371	P1000043.JPG	image/jpeg	100061	2012-11-28 09:06:12.569245	
1001	980191371	P1000053.JPG	image/jpeg	91715	2012-11-28 09:06:13.20371	
1002	980191371	shef046.jpg	image/jpeg	188153	2012-11-28 09:06:13.853677	
1003	980191371	shef047.jpg	image/jpeg	109771	2012-11-28 09:06:14.53738	
1004	980191371	shef064.jpg	image/jpeg	198863	2012-11-28 09:06:15.088899	
1005	980191371	sl.jpg	image/jpeg	273232	2012-11-28 09:06:15.669135	
1006	980191371	sl2.jpg	image/jpeg	247483	2012-11-28 09:06:16.286362	
1007	980191371	sl3.jpg	image/jpeg	320738	2012-11-28 09:06:16.856626	
1008	980191372	lu1_big.jpg	image/jpeg	93047	2012-11-28 09:12:21.452786	
1009	980191372	lu2_big.jpg	image/jpeg	130225	2012-11-28 09:12:22.046507	
1010	980191373	1m-ek.jpg	image/jpeg	34710	2012-11-28 09:48:29.52152	
1011	980191373	1m-ek-1.jpg	image/jpeg	17828	2012-11-28 09:48:30.121794	
1012	980191374	2m-ek.jpg	image/jpeg	22471	2012-11-28 09:51:48.232313	
1013	980191374	2m-ek-1.jpg	image/jpeg	14008	2012-11-28 09:51:48.797451	
1014	980191375	3m-ek.jpg	image/jpeg	16620	2012-11-28 09:53:40.482206	
1015	980191375	3m-ek-1.jpg	image/jpeg	12565	2012-11-28 09:53:41.138148	
1016	980191376	P1110867.jpg	image/jpeg	51144	2012-11-28 09:56:08.555092	
1017	980191376	P1110871.jpg	image/jpeg	32181	2012-11-28 09:56:09.280314	
1018	980191376	P1110885.jpg	image/jpeg	52809	2012-11-28 09:56:09.817489	
1019	980191376	P1110884.jpg	image/jpeg	34991	2012-11-28 09:56:10.385404	
1020	980191377	poly-lux_3mest_h(2).jpg	image/jpeg	46873	2012-11-28 09:57:47.97243	
1021	980191377	P1110140.jpg	image/jpeg	34418	2012-11-28 09:57:48.538674	
1022	980191378	DSCN0918_(1).gif	image/gif	270723	2012-11-28 10:08:33.603998	
1023	980191378	DSCN0920.gif	image/gif	230436	2012-11-28 10:08:38.140161	
1024	980191378	DSCN0921.gif	image/gif	209931	2012-11-28 10:08:39.656442	
1025	980191378	DSCN0922.gif	image/gif	216298	2012-11-28 10:08:41.229696	
1026	980191378	1_1_(1).jpg	image/jpeg	9076	2012-11-28 10:08:42.674465	
1027	980191378	6_1_.jpg	image/jpeg	6955	2012-11-28 10:08:43.359488	
1028	980191378	8_1_.jpg	image/jpeg	9224	2012-11-28 10:08:43.887357	
1029	980191378	12_1_.jpg	image/jpeg	7804	2012-11-28 10:08:44.45947	
1030	980191378	19_1_.jpg	image/jpeg	8854	2012-11-28 10:08:45.141502	
1031	980191380	168_1130.jpg	image/jpeg	18131	2012-11-28 12:50:55.515433	
1032	980191380	IMG_6212.jpg	image/jpeg	17894	2012-11-28 12:50:56.20093	
1033	980191380	IMG_6218.jpg	image/jpeg	16647	2012-11-28 12:50:56.749543	
1034	980191381	IMG_6225.jpg	image/jpeg	21587	2012-11-28 12:50:57.333282	
1035	980191381	IMG_6233.jpg	image/jpeg	21657	2012-11-28 12:50:57.90747	
1036	980191381	IMG_6238.jpg	image/jpeg	19813	2012-11-28 12:50:58.476723	
1037	980191381	IMG_6242.jpg	image/jpeg	17040	2012-11-28 12:50:59.0333	
1038	980191390	char_tree1621_4823.jpg	image/jpeg	18338	2012-12-03 15:23:21.373476	
1039	980191390	char_tree1621_4824.jpg	image/jpeg	19623	2012-12-03 15:23:21.997752	
1040	980191390	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:23:22.628298	
1041	980191391	char_tree1621_4823.jpg	image/jpeg	18338	2012-12-03 15:24:23.018102	
1042	980191391	char_tree1621_4824.jpg	image/jpeg	19623	2012-12-03 15:24:23.579271	
1043	980191391	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:24:24.265152	
1044	980191392	char_tree1621_4821.jpg	image/jpeg	21035	2012-12-03 15:24:24.873737	
1045	980191392	char_tree1621_4822.jpg	image/jpeg	17505	2012-12-03 15:24:25.49531	
1046	980191392	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:24:26.123138	
1047	980191393	char_tree1621_4829.jpg	image/jpeg	24053	2012-12-03 15:25:26.058712	
1048	980191393	char_tree1621_4830.jpg	image/jpeg	19365	2012-12-03 15:25:26.670219	
1049	980191393	char_tree1621_4831.jpg	image/jpeg	16186	2012-12-03 15:25:27.274979	
1050	980191393	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:25:27.891889	
1051	980191394	char_tree1621_4816.jpg	image/jpeg	23798	2012-12-03 15:27:31.231229	
1052	980191394	char_tree1621_4832.jpg	image/jpeg	22356	2012-12-03 15:27:31.86099	
1053	980191394	char_tree1621_4833.jpg	image/jpeg	20364	2012-12-03 15:27:32.509387	
1054	980191394	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:27:33.159125	
1055	980191395	168_1130.jpg	image/jpeg	22675	2012-12-03 15:30:29.611067	
1056	980191395	char_tree1621_4817.jpg	image/jpeg	20114	2012-12-03 15:30:30.226356	
1057	980191395	char_tree1621_4818.jpg	image/jpeg	14492	2012-12-03 15:30:30.80082	
1058	980191395	char_tree1621_4819.jpg	image/jpeg	16186	2012-12-03 15:30:31.397302	
1059	980191395	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:30:31.971164	
1060	980191398	char_tree1621_4825.jpg	image/jpeg	18368	2012-12-03 15:31:55.674131	
1061	980191398	char_tree1621_4828.jpg	image/jpeg	15377	2012-12-03 15:31:56.294295	
1062	980191399	168_1130.jpg	image/jpeg	172726	2012-12-04 06:35:46.777529	
1063	980191399	1550_2.jpg	image/jpeg	168051	2012-12-04 06:35:47.487784	
1064	980191399	1550_3.jpg	image/jpeg	169121	2012-12-04 06:35:48.150378	
1065	980191400	11196090.jpg	image/jpeg	11098	2012-12-04 06:39:22.721503	
1066	980191400	11196093.jpg	image/jpeg	12762	2012-12-04 06:39:23.311411	
1067	980191400	11196096.jpg	image/jpeg	13284	2012-12-04 06:39:23.901586	
1068	980191400	11196111.jpg	image/jpeg	15134	2012-12-04 06:39:24.476955	
1069	980191400	11196112.jpg	image/jpeg	15519	2012-12-04 06:39:25.207061	
1070	980191400	11196114.jpg	image/jpeg	16368	2012-12-04 06:39:25.823558	
1071	980191400	11196115.jpg	image/jpeg	14997	2012-12-04 06:39:26.404043	
1072	980191401	1552_1.jpg	image/jpeg	157732	2012-12-04 06:47:05.904057	
1073	980191401	1552_2.jpg	image/jpeg	181347	2012-12-04 06:47:06.658147	
1074	980191401	1552_3.jpg	image/jpeg	177466	2012-12-04 06:47:07.279867	
1075	980191402	potel7_(11).jpg	image/jpeg	154879	2012-12-04 09:58:06.785139	
1076	980191402	potel7_(12).jpg	image/jpeg	153169	2012-12-04 09:58:07.451946	
1077	980191402	potel7_(13).jpg	image/jpeg	134053	2012-12-04 09:58:08.254073	
1078	980191403	potel7_(8).jpg	image/jpeg	164975	2012-12-04 10:00:49.882188	
1079	980191403	potel7_(9).jpg	image/jpeg	144392	2012-12-04 10:00:50.480556	
1080	980191403	potel7_(10).jpg	image/jpeg	147883	2012-12-04 10:00:51.066769	
1081	980191404	potel7_(1).jpg	image/jpeg	179167	2012-12-04 10:03:05.769753	
1082	980191404	potel7_(3).jpg	image/jpeg	148684	2012-12-04 10:03:06.448608	
1083	980191404	potel7_(4).jpg	image/jpeg	153933	2012-12-04 10:03:07.181279	
1084	980191405	potel7_(2).jpg	image/jpeg	170519	2012-12-04 10:05:50.284036	
1085	980191405	potel7_(5).jpg	image/jpeg	152970	2012-12-04 10:05:50.927166	
1086	980191405	potel7_(7).jpg	image/jpeg	140335	2012-12-04 10:05:51.561855	
1087	980191405	potel7_(6).jpg	image/jpeg	130863	2012-12-04 10:05:52.204188	
1088	980191406	potel7_(14).jpg	image/jpeg	169213	2012-12-04 10:10:24.240478	
1089	980191406	potel7_(15).jpg	image/jpeg	152534	2012-12-04 10:10:25.027272	
1090	980191406	potel7_(18).jpg	image/jpeg	141508	2012-12-04 10:10:25.748419	
1091	980191406	potel7_(16).jpg	image/jpeg	134439	2012-12-04 10:10:26.413634	
1092	980191406	potel7_(19).jpg	image/jpeg	173680	2012-12-04 10:10:27.085603	
1093	980191406	potel7_(17).jpg	image/jpeg	157495	2012-12-04 10:10:27.725097	
1094	980191406	potel7_(16).jpg	image/jpeg	134439	2012-12-04 10:10:28.521774	
1095	980191407	\N	\N	\N	\N	
1096	980191407	\N	\N	\N	\N	
1097	980191407	\N	\N	\N	\N	
1098	980191408	1_(1).jpg	image/jpeg	362147	2012-12-04 11:26:45.973672	
1099	980191408	2_(1).jpg	image/jpeg	371371	2012-12-04 11:26:46.685769	
1100	980191408	3_(1).jpg	image/jpeg	319055	2012-12-04 11:26:47.502263	
1101	980191408	3.jpg	image/jpeg	73527	2012-12-04 11:26:48.187597	
1102	980191410	1_(1).jpg	image/jpeg	362147	2012-12-04 11:30:07.55178	
1103	980191410	2_(1).jpg	image/jpeg	371371	2012-12-04 11:30:08.657502	
1104	980191410	3_(1).jpg	image/jpeg	319055	2012-12-04 11:30:09.623353	
1105	980191410	3.jpg	image/jpeg	73527	2012-12-04 11:30:10.468902	
1106	980191411	1_(1).jpg	image/jpeg	362147	2012-12-04 11:36:34.376864	
1107	980191411	2_(1).jpg	image/jpeg	371371	2012-12-04 11:36:35.097273	
1108	980191411	3_(1).jpg	image/jpeg	319055	2012-12-04 11:36:35.773628	
1109	980191411	3.jpg	image/jpeg	73527	2012-12-04 11:36:36.471351	
1110	980191412	1_(1).jpg	image/jpeg	362147	2012-12-04 11:39:31.369324	
1111	980191412	2_(1).jpg	image/jpeg	371371	2012-12-04 11:39:32.19365	
1112	980191412	3_(1).jpg	image/jpeg	319055	2012-12-04 11:39:33.041837	
1113	980191412	3.jpg	image/jpeg	73527	2012-12-04 11:39:33.786723	
1114	980191413	2_(2).jpg	image/jpeg	212958	2012-12-04 11:43:15.821584	
1115	980191409	1_(2).jpg	image/jpeg	82850	2012-12-04 11:46:54.288057	
1116	980191409	2_(2).jpg	image/jpeg	212958	2012-12-04 11:46:54.969766	
1117	980191409	2_(3).jpg	image/jpeg	407620	2012-12-04 11:46:55.869027	
1118	980191414	\N	\N	\N	\N	
1119	980191414	\N	\N	\N	\N	
1120	980191414	\N	\N	\N	\N	
1121	980191414	\N	\N	\N	\N	
1122	980191414	\N	\N	\N	\N	
1123	980191415	c2.jpg	image/jpeg	51279	2012-12-04 14:29:14.730068	
1124	980191415	c3.jpg	image/jpeg	20815	2012-12-04 14:29:15.313381	
1125	980191415	IMG_3486.jpg	image/jpeg	85896	2012-12-04 14:29:15.886236	
1126	980191416	co1.jpg	image/jpeg	57764	2012-12-04 14:32:15.523218	
1127	980191416	co2.jpg	image/jpeg	47833	2012-12-04 14:32:16.101078	
1128	980191416	co3.jpg	image/jpeg	80949	2012-12-04 14:32:16.685051	
\.


--
-- Data for Name: hotel_room_types; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_room_types (id, name) FROM stdin;
1	Эконом
2	Стандартный
3	Полулюкс
4	Люкс
\.


--
-- Data for Name: hotel_rooms; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_rooms (id, hotel_id, name, created_at, updated_at, all_count, area, price_summer_from, price_summer_to, price_high_season_from, price_high_season_to, price_winter_from, price_winter_to, type_id, places_count, additional_places_count) FROM stdin;
980191059	540	Стандарт улучшенный четырехместный	2012-09-09 04:43:59.620869	2012-09-09 04:59:10.027144	\N	23	1500	\N	2000	\N	\N	\N	2	4	0
980191080	683	Стандарт	2012-09-13 07:07:52.895922	2012-09-13 07:07:52.895922	11	22	2750	\N	3050	\N	1700	\N	2	2	1
980191060	450	Двухкомнатный люкс	2012-09-09 05:35:18.6953	2012-09-09 05:41:08.360165	\N	\N	3700	\N	3900	\N	1800	\N	3	3	1
980191061	450	Стандарт	2012-09-09 05:53:17.225664	2012-09-09 05:53:17.225664	\N	\N	2600	\N	2800	\N	1500	\N	2	3	1
980191062	450	Люкс двухместный	2012-09-09 05:53:17.237568	2012-09-09 05:53:17.237568	\N	\N	2200	\N	2400	\N	1300	\N	2	2	1
980191073	1006	Стандарт двухместный	2012-09-12 16:29:58.67645	2012-09-12 17:05:09.365001	28	26	2200	\N	2600	\N	1300	\N	2	2	2
980191076	1006	Стандарт трехместный	2012-09-12 17:05:09.366712	2012-09-12 17:10:49.633168	5	26	3600	\N	4000	\N	1200	\N	2	3	2
980191075	1006	Апартаменты	2012-09-12 16:29:58.710444	2012-09-12 17:15:27.059643	2	59	6000	\N	6000	\N	6000	\N	3	2	2
980191065	1008	Люкс 2-х комнатный с видом на море	2012-09-09 07:04:38.560581	2012-09-09 07:04:38.560581	3	36	4000	\N	5000	\N	4000	\N	3	2	3
980191064	1008	Стандарт повышенной комфортности 2-х местный с видом на море	2012-09-09 06:56:16.490004	2012-09-09 07:08:30.236421	18	17	2500	\N	3000	\N	1500	\N	2	2	1
980191066	437	Полулюкс	2012-09-09 08:34:39.129967	2012-09-09 09:09:21.670795	\N	20	1860	\N	1950	\N	\N	\N	2	3	0
980191067	437	Люкс двухкомнатный	2012-09-09 08:48:39.676476	2012-09-09 09:09:21.672222	\N	40	2750	\N	3300	\N	0	\N	2	5	0
980191068	437	Коттедж	2012-09-09 09:09:21.673577	2012-09-09 09:09:21.673577	1	80	3000	\N	3500	\N	\N	\N	2	5	\N
980191056	540	Стандарт трехместный	2012-09-09 04:23:30.113859	2012-09-09 04:59:10.024011	\N	\N	1000	\N	1200	\N	\N	\N	1	3	0
980191057	540	Стандарт четырехместный	2012-09-09 04:34:49.874574	2012-09-09 04:59:10.025197	\N	\N	1300	\N	1600	\N	\N	\N	1	4	0
980191058	540	Стандарт улучшенный трехместный	2012-09-09 04:43:59.609238	2012-09-09 04:59:10.026212	\N	\N	1300	\N	1650	\N	\N	\N	2	3	0
980191069	523	Одноместный	2012-09-09 11:39:43.17232	2012-09-09 11:44:33.379404	\N	\N	1500	\N	2000	\N	\N	\N	2	1	1
980191070	523	Двухместный	2012-09-09 11:44:33.381455	2012-09-09 11:44:33.381455	\N	\N	2600	\N	3600	\N	\N	\N	2	\N	\N
980191071	523	Студия	2012-09-09 11:52:35.671833	2012-09-09 11:52:35.671833	\N	\N	3900	\N	4700	\N	\N	\N	3	2	1
980191072	523	Люкс (двухкомнатный)	2012-09-09 11:52:35.683304	2012-09-09 11:52:35.683304	\N	\N	4200	\N	5000	\N	\N	\N	3	2	1
980191077	1094	Стандарт	2012-09-13 05:36:24.671924	2012-09-13 06:04:34.539122	85	16	1500	\N	1900	\N	\N	\N	2	2	1
980191078	1094	Студио	2012-09-13 05:39:13.705064	2012-09-13 06:04:34.541771	10	22	1800	\N	2150	\N	\N	\N	2	2	2
980191027	521	TEST	2012-08-31 13:37:19.900715	2012-08-31 13:37:19.900715	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N
980191028	983	Стандарт	2012-09-05 04:44:03.877679	2012-09-05 04:44:03.877679	\N	\N	2500	\N	3000	\N	\N	\N	2	2	1
980191029	983	Студио	2012-09-05 05:04:18.375678	2012-09-05 05:04:18.375678	\N	\N	4500	\N	5000	\N	4000	\N	2	2	1
980191046	461	Полулюкс	2012-09-07 05:50:57.051357	2012-09-07 05:50:57.051357	\N	\N	1500	\N	2500	\N	\N	\N	2	2	2
980191047	544	Стандарт с кухней	2012-09-08 11:26:13.345333	2012-09-08 11:26:13.345333	\N	11	1500	\N	2000	\N	\N	\N	1	3	1
980191031	1196	Люкс	2012-09-05 05:41:57.891321	2012-09-05 05:55:13.465611	\N	\N	1200	\N	1300	\N	0	\N	1	2	1
980191030	1196	Стандарт	2012-09-05 05:41:57.877784	2012-09-05 05:55:13.467082	\N	\N	900	\N	1100	\N	0	\N	1	2	1
980191032	1023	Полулюкс	2012-09-06 05:23:21.666288	2012-09-06 05:23:21.666288	7	\N	1300	\N	1680	\N	980	\N	2	2	2
980191033	1023	Стандарт	2012-09-06 06:34:06.657212	2012-09-06 06:34:06.657212	17	\N	1000	\N	1300	\N	840	\N	2	2	1
980191034	1023	Стандарт	2012-09-06 15:56:08.18773	2012-09-06 15:56:08.18773	17	\N	900	\N	1200	\N	840	\N	2	3	1
980191035	1026	Стандарт	2012-09-06 16:32:18.176927	2012-09-06 16:32:18.176927	\N	15	1200	\N	1800	\N	\N	\N	1	3	\N
980191036	1026	Стандарт с ванной	2012-09-06 16:37:11.649929	2012-09-06 16:37:11.649929	\N	\N	1500	\N	2500	\N	\N	\N	1	3	\N
980191037	1026	Экономичный	2012-09-06 16:44:01.079433	2012-09-06 16:44:01.079433	\N	11-15	1000	\N	1200	\N	\N	\N	1	2	2
980191038	1197	Духместный с кондиционером	2012-09-06 17:08:55.111732	2012-09-06 17:08:55.111732	\N	\N	1100	\N	1300	\N	\N	\N	1	2	1
980191039	1197	Двухместный со сплит-системой	2012-09-06 17:16:26.974491	2012-09-06 17:16:26.974491	\N	\N	1100	\N	1300	\N	\N	\N	1	2	1
980191040	1197	Трехместный со сплит-системой	2012-09-06 17:20:02.93515	2012-09-06 17:20:02.93515	\N	\N	1650	\N	1950	\N	\N	\N	1	3	1
980191041	1197	Четырехместный	2012-09-06 17:22:59.891447	2012-09-06 17:22:59.891447	\N	\N	2200	\N	2600	\N	\N	\N	1	4	1
980191042	1022	Стандарт 1 категории	2012-09-07 05:05:54.218447	2012-09-07 05:05:54.218447	\N	\N	2100	\N	2400	\N	\N	\N	2	2	1
980191043	1022	Стандарт 1 категории	2012-09-07 05:13:53.752962	2012-09-07 05:13:53.752962	\N	\N	2400	\N	2600	\N	\N	\N	2	2	1
980191044	1022	Люкс	2012-09-07 05:13:53.766126	2012-09-07 05:13:53.766126	1	\N	3300	\N	3600	\N	\N	\N	3	4	1
980191045	1022	Стандарт 2 категории	2012-09-07 05:15:23.285921	2012-09-07 05:18:38.62936	\N	\N	1500	\N	1800	\N	\N	\N	2	2	1
980191048	544	Стандарт	2012-09-08 11:26:13.365785	2012-09-08 11:26:13.365785	\N	11	1100	\N	1500	\N	\N	\N	1	3	1
980191049	1198	Стандарт двухместныйй	2012-09-08 12:20:39.191322	2012-09-08 12:26:23.147672	\N	\N	1400	\N	1600	\N	\N	\N	1	2	1
980191050	1198	Стандарт трехместный	2012-09-08 12:26:23.149335	2012-09-08 12:27:21.481016	\N	\N	1800	\N	2100	\N	\N	\N	1	3	0
980191051	454	Люкс двухместный	2012-09-08 13:20:30.902586	2012-09-09 17:01:15.32756	\N	\N	1700	\N	1900	\N	1000	\N	2	2	0
980191052	454	Люкс двухкомнатный	2012-09-08 13:24:27.283396	2012-09-08 13:24:27.283396	\N	\N	2800	\N	3000	\N	1400	\N	3	3	1
980191063	1008	Стандарт 2-х местный (вид на город)	2012-09-09 06:38:54.61451	2012-09-10 08:44:00.41754	11	13	2000	\N	2400	\N	1200	\N	2	2	0
980191053	454	Стандарт четырехместный	2012-09-08 13:30:00.426966	2012-09-08 13:30:00.426966	\N	\N	2400	\N	2600	\N	1300	\N	2	4	1
980191054	454	Стандарт трехместный	2012-09-08 13:33:42.10086	2012-09-08 13:33:42.10086	\N	\N	1900	\N	2200	\N	1100	\N	2	3	1
980191055	454	Стандарт двухместный	2012-09-08 13:37:16.36909	2012-09-08 13:37:16.36909	\N	\N	1500	\N	1650	\N	800	\N	2	2	1
980191079	1094	Люкс	2012-09-13 05:43:59.186792	2012-09-13 06:04:34.544915	5	25	2350	\N	2850	\N	\N	\N	3	2	2
980191081	683	Полулюкс	2012-09-13 07:07:53.065406	2012-09-14 04:24:49.590588	2	30	2750	\N	3600	\N	2200	\N	2	2	1
980191082	683	Люкс-Семейный	2012-09-14 04:28:04.561965	2012-09-14 04:37:30.534159	2	46	3300	\N	4850	\N	2750	\N	2	4	1
980191083	683	Люкс	2012-09-14 04:37:30.537954	2012-09-14 04:37:30.537954	4	45	3100	\N	4600	\N	2600	\N	2	2	1
980191084	602	Стандартный (2-3местный)	2012-09-15 05:04:48.17573	2012-09-15 05:21:36.575283	24	\N	2000	\N	2800	\N	\N	\N	2	2	1
980191085	602	Мансардный	2012-09-15 05:04:48.39231	2012-09-15 05:24:16.092079	8	\N	1600	\N	2500	\N	\N	\N	2	2	1
980191087	637	Стандарт двухместный	2012-09-15 06:12:41.667564	2012-09-15 06:39:59.170746	2	9	800	\N	1000	\N	\N	\N	1	2	\N
980191074	1006	Люкс	2012-09-12 16:29:58.69694	2012-09-15 20:38:41.536542	9	37	3500	\N	4000	\N	2500	\N	2	2	2
980191086	637	Стандарт, четырехместный	2012-09-15 06:12:41.651388	2012-09-15 06:27:06.512065	4	\N	1000	\N	1800	\N	\N	\N	1	4	\N
980191088	637	Стандарт двухкомнатный	2012-09-15 06:12:41.683058	2012-09-15 06:39:59.174917	2	\N	1600	\N	2000	\N	\N	\N	1	4	2
980191089	637	Стандарт трехместный	2012-09-15 06:12:41.699161	2012-09-15 06:39:59.18075	4	\N	1200	\N	1500	\N	\N	\N	1	3	\N
980191090	1065	Эконом	2012-09-15 12:07:17.446893	2012-09-15 12:07:17.446893	\N	\N	700	\N	1200	\N	\N	\N	1	2	1
980191091	555	2-х местный улучшенный	2012-09-15 13:55:12.405565	2012-09-15 18:09:46.708659	9	16	2940	\N	3740	\N	\N	\N	2	2	1
980191092	555	Стандарт	2012-09-15 18:09:46.712547	2012-09-15 18:20:31.896499	6	14	2840	\N	3640	\N	\N	\N	2	2	2
980191093	555	Стандарт повышенного комфорта	2012-09-15 18:28:00.437054	2012-09-15 18:28:00.437054	4	20	3040	\N	3840	\N	\N	\N	2	2	2
980191121	1201	Эконом	2012-09-21 08:06:28.041163	2012-09-21 08:06:28.041163	6	\N	1050	\N	1500	\N	\N	\N	1	3	1
980191095	555	Стандарт 2-х комнатный	2012-09-15 18:47:32.048139	2012-09-15 18:47:32.048139	11	35	3640	\N	4340	\N	\N	\N	2	2	2
980191094	555	Стандарт 3-х местный	2012-09-15 18:30:24.605936	2012-09-15 18:57:23.141159	10	25	4200	\N	5340	\N	\N	\N	2	3	2
980191122	1201	Стандарт	2012-09-21 08:06:28.058647	2012-09-21 08:06:28.058647	7	\N	1500	\N	2700	\N	\N	\N	1	3	1
980191129	1202	Двухкомнатный	2012-09-22 17:54:19.663992	2012-09-22 18:26:24.618661	5	32	3250	\N	3750	\N	2000	\N	2	3	1
980191096	555	Эконом	2012-09-15 18:57:23.144916	2012-09-15 19:09:36.929905	2	10	2740	\N	3540	\N	\N	\N	2	2	0
980191139	775	Стандарт двухместный	2012-09-28 05:41:50.568268	2012-09-28 05:41:50.568268	2	\N	1100	\N	1400	\N	\N	\N	1	2	1
980191123	1201	Двухкомнатный семейный "Люкс"	2012-09-21 08:06:28.075519	2012-09-21 08:09:34.789296	2	\N	2000	\N	3500	\N	\N	\N	1	4	0
980191130	1202	Люкс	2012-09-22 18:11:45.579286	2012-09-22 18:26:24.622356	4	50	4500	\N	5500	\N	3500	\N	3	2	1
980191131	1202	Де Люкс	2012-09-22 18:11:45.599059	2012-09-22 18:26:24.623552	2	50	5500	\N	5500	\N	5500	\N	3	2	1
980191099	603	Стандарт с кондиционером	2012-09-15 20:23:21.126007	2012-09-15 20:37:30.567285	8	10	1570	\N	2112	\N	\N	\N	1	2	0
980191100	603	Стандарт трехместный	2012-09-15 20:25:48.602866	2012-09-15 20:37:30.568761	7	10	2130	\N	2979	\N	\N	\N	1	3	0
980191101	603	Стандарт	2012-09-15 20:31:05.025142	2012-09-15 20:37:30.570138	5	10	1500	\N	2050	\N	\N	\N	1	2	0
980191102	633	2-х местный стандарт	2012-09-16 04:54:12.334071	2012-09-16 04:54:12.334071	4	12	1200	\N	1400	\N	700	\N	2	2	1
980191103	633	3-х местный стандарт	2012-09-16 04:54:12.387434	2012-09-16 05:04:37.132576	4	15	1500	\N	1800	\N	900	\N	2	3	1
980191104	633	4-х местный стандарт	2012-09-16 05:04:37.182411	2012-09-16 05:04:37.182411	4	18	1600	\N	2000	\N	1200	\N	2	4	1
980191105	990	4-х местный люкс с террасой	2012-09-16 06:13:41.448826	2012-09-16 06:13:41.448826	1	50	\N	\N	\N	\N	\N	\N	2	4	1
980191127	1202	Стандарт трехместный	2012-09-22 17:38:09.897852	2012-09-22 18:27:05.260065	8	33	3050	\N	3550	\N	1800	\N	2	3	0
980191106	853	Стандарт	2012-09-16 06:47:31.495814	2012-09-16 07:00:31.073935	10	15	1250	\N	1700	\N	\N	\N	1	4	0
980191107	853	2-х комнатный стандарт	2012-09-16 06:47:31.512536	2012-09-16 07:00:31.07546	5	20	\N	\N	\N	\N	\N	\N	1	4	0
980191108	645	ПК 2-х местный	2012-09-18 16:24:08.372481	2012-09-18 16:24:08.372481	5	13	1300	\N	1500	\N	\N	\N	1	2	1
980191109	645	ПК 3-х местный	2012-09-18 16:24:08.554296	2012-09-18 16:24:08.554296	5	16	1950	\N	2250	\N	\N	\N	1	3	1
980191110	1046	Стандарт	2012-09-20 07:26:03.676103	2012-09-20 07:48:28.133787	6	26	3100	\N	4100	\N	2700	\N	2	2	1
980191111	1046	Студио	2012-09-20 07:48:28.137621	2012-09-20 07:48:28.137621	6	30	3500	\N	4600	\N	2900	\N	2	2	1
980191112	1046	Люкс	2012-09-20 07:58:53.025518	2012-09-20 08:11:11.642992	12	37	3700	\N	5200	\N	3200	\N	2	2	1
980191113	1046	Де Люкс (двухкомнатный)	2012-09-20 08:11:11.644125	2012-09-20 08:25:30.43436	4	79	5800	\N	7200	\N	5000	\N	3	2	1
980191114	1046	Апартаменты (трехкомнатный)	2012-09-20 08:25:30.43613	2012-09-20 08:25:30.43613	2	109	9300	\N	11000	\N	8600	\N	4	2	1
980191115	1200	2-х комнатный	2012-09-20 16:18:29.855589	2012-09-20 16:18:29.855589	6	\N	2000	\N	2200	\N	\N	\N	1	3	2
980191116	1200	Стандарт трехместный	2012-09-20 16:18:29.871826	2012-09-20 16:18:29.871826	8	\N	1500	\N	1800	\N	\N	\N	1	3	2
980191117	1200	Стандарт двухместный	2012-09-20 16:18:29.888076	2012-09-20 16:18:29.888076	7	\N	1200	\N	1500	\N	\N	\N	1	2	1
980191118	1069	Стандарт 16 метров	2012-09-21 06:08:30.823	2012-09-21 06:08:30.823	10	16	1200	\N	1500	\N	\N	\N	1	3	0
980191119	1069	Стандарт 13 метров	2012-09-21 06:08:30.903494	2012-09-21 06:08:30.903494	8	13	900	\N	1200	\N	\N	\N	1	3	0
980191120	1069	Эконом	2012-09-21 06:08:31.051461	2012-09-21 06:08:31.051461	6	10	400	\N	600	\N	\N	\N	1	2	0
980191125	1202	Стандарт двухместный	2012-09-22 17:38:09.864433	2012-09-22 18:27:05.261745	10	25	2200	\N	2800	\N	1200	\N	2	2	0
980191151	671	Стандарт двухместный	2012-09-30 09:03:39.845639	2012-11-22 06:13:16.482615	6	18	1500	\N	2200	\N	\N	\N	2	2	0
980191124	1202	Стандарт одноместный	2012-09-22 17:38:09.843682	2012-09-22 18:27:05.263343	5	16	1450	\N	1650	\N	1000	\N	2	1	0
980191126	1202	Стандарт с балконом	2012-09-22 17:38:09.881264	2012-09-22 18:27:05.264711	5	25	2500	\N	3000	\N	1500	\N	2	2	0
980191141	775	Стандарт двухместный с кондиционером	2012-09-28 05:45:57.559629	2012-09-28 05:45:57.559629	2	\N	1200	\N	1600	\N	\N	\N	1	2	1
980191133	1203	Люкс	2012-09-23 04:38:54.386279	2012-09-23 04:38:54.386279	4	18	2200	\N	3000	\N	\N	\N	2	2	2
980191128	1202	Студио	2012-09-22 17:47:30.087646	2012-09-22 18:26:24.614259	4	45	2500	\N	3000	\N	1500	\N	2	3	1
980191135	1102	Стандарт двухместный	2012-09-23 05:34:43.983598	2012-09-23 05:36:00.678611	3	17	1500	\N	2100	\N	\N	\N	2	2	0
980191136	1102	Стандарт трехместный	2012-09-23 05:34:43.997127	2012-09-23 05:36:00.710242	3	20	1800	\N	2400	\N	\N	\N	2	3	0
980191137	1102	Стандарт четырехместный	2012-09-23 05:34:44.01058	2012-09-23 05:36:00.740723	2	20	2100	\N	2800	\N	\N	\N	2	4	0
980191097	1035	Повышенной комфортности	2012-09-15 19:46:30.055284	2012-09-23 05:40:37.763647	20	20	1800	\N	2200	\N	\N	\N	2	2	0
980191098	1035	2-х комнатный	2012-09-15 19:52:35.845593	2012-09-23 05:40:37.765131	3	42	3400	\N	4200	\N	\N	\N	2	4	0
980191138	775	Стандарт трехместный	2012-09-23 06:27:12.270937	2012-09-28 05:38:17.122215	2	\N	1350	\N	1800	\N	\N	\N	1	3	1
980191142	775	Полулюкс	2012-09-28 05:49:38.065553	2012-09-28 05:49:38.065553	2	\N	1300	\N	1800	\N	\N	\N	1	2	1
980191143	775	Полулюкс с кондиционером	2012-09-28 05:52:38.549547	2012-09-28 05:57:06.296572	1	\N	1500	\N	2000	\N	\N	\N	1	2	1
980191144	775	2-х комнатный	2012-09-28 05:56:18.555576	2012-09-28 05:57:06.298082	1	\N	2400	\N	3200	\N	\N	\N	1	4	1
980191147	1204	двухкомнатный	2012-09-30 05:30:10.946958	2012-09-30 05:30:10.946958	2	20	1400	\N	2000	\N	\N	\N	1	4	1
980191145	1204	Эконом	2012-09-30 05:30:10.798151	2012-09-30 05:47:18.403664	1	8	500	\N	1000	\N	\N	\N	1	2	0
980191146	1204	Стандарт двухместный	2012-09-30 05:30:10.92462	2012-09-30 05:47:18.829644	4	10	600	\N	1200	\N	\N	\N	1	2	0
980191150	1205	Стандарт	2012-09-30 08:09:24.250106	2012-09-30 08:21:36.651196	10	\N	1500	\N	2000	\N	\N	\N	1	2	1
980191148	1204	Стандарт четырехместный	2012-09-30 05:38:48.300803	2012-09-30 05:47:18.9567	2	25	1200	\N	1800	\N	\N	\N	1	4	0
980191149	1204	Стандарт трехместный	2012-09-30 05:38:48.325455	2012-09-30 05:47:19.224929	3	15	900	\N	1500	\N	\N	\N	1	3	0
980191217	1215	2-х местный	2012-11-08 06:43:48.624932	2012-11-08 07:11:08.074197	30	\N	1300	\N	2200	\N	\N	\N	2	2	1
980191132	1203	Экономичный	2012-09-23 04:20:26.254407	2012-11-22 06:01:50.020118	4	\N	1200	\N	1500	\N	0	\N	1	3	0
980191152	671	Стандарт двухместный с балконом	2012-09-30 11:26:40.660848	2012-11-22 06:13:16.484269	10	18	1600	\N	2300	\N	\N	\N	2	2	0
980191153	671	Стандарт трехместный	2012-09-30 11:30:51.453005	2012-11-22 06:13:16.485719	10	22	1700	\N	2500	\N	\N	\N	2	3	0
980191154	671	Стандарт трехместный с балконом	2012-09-30 11:44:29.300491	2012-11-22 06:13:16.488195	10	22	1800	\N	2600	\N	\N	\N	2	3	0
980191156	671	Стандарт двухкомнатный	2012-09-30 11:58:23.295237	2012-11-22 06:13:16.48957	2	50	2600	\N	4800	\N	\N	\N	3	6	0
980191157	671	Стандарт двухкомнатный с балконом	2012-09-30 12:03:42.280854	2012-11-22 06:13:16.492424	2	50	2000	\N	2700	\N	\N	\N	3	6	0
980191187	1210	2-местный стандартный	2012-10-30 15:21:31.631303	2012-10-30 15:21:31.631303	92	19,5	2800	\N	3600	\N	\N	\N	2	2	1
980191188	1210	Стандарт плюс	2012-10-30 15:31:55.234613	2012-10-30 15:39:37.888163	3	\N	2800	\N	3600	\N	\N	\N	2	2	1
980191189	1210	Люкс	2012-10-30 15:41:41.450124	2012-10-30 15:49:56.460524	8	45	3800	\N	4500	\N	\N	\N	3	2	2
980191190	620	2-х местный стандартный	2012-10-31 06:35:15.48184	2012-10-31 06:46:11.682633	10	18	2000	\N	3000	\N	\N	\N	2	2	\N
980191191	620	3-х местный стандартный	2012-10-31 06:46:11.684143	2012-10-31 07:27:31.861333	5	18	2300	\N	3200	\N	\N	\N	2	3	\N
980191159	644	Стандарт двухместный	2012-10-24 09:54:54.787931	2012-10-24 10:07:07.919925	8	15	1200	\N	1700	\N	\N	\N	2	2	\N
980191160	644	Стандарт трехместный	2012-10-24 09:59:13.71204	2012-10-24 10:07:07.921968	8	15	1550	\N	1950	\N	\N	\N	2	3	\N
980191162	644	Свадебный люкс	2012-10-24 10:07:07.940791	2012-10-24 10:07:07.940791	1	15	1500	\N	1700	\N	\N	\N	2	2	\N
980191161	644	2-х комнатный люкс	2012-10-24 10:07:07.923489	2012-10-24 10:08:38.709891	2	25	2500	\N	2500	\N	\N	\N	2	6	\N
980191163	612	Полулюкс 2-х местный с балконом с видом на море	2012-10-25 07:49:05.46421	2012-10-25 07:49:05.46421	3	19	1300	\N	2500	\N	\N	\N	2	2	1
980191164	612	Полулюкс 2-х местный	2012-10-25 08:18:03.603863	2012-10-25 08:18:03.603863	5	19	1200	\N	2300	\N	\N	\N	2	2	1
980191165	612	Стандарт 2-х местный Мансарда	2012-10-25 08:18:03.626028	2012-10-25 08:18:03.626028	2	18	1100	\N	2000	\N	\N	\N	2	2	1
980191166	612	Полулюкс 3-х местный с балконом с видом на море	2012-10-25 08:18:03.640755	2012-10-25 08:18:03.640755	3	25	1600	\N	2700	\N	\N	\N	2	3	\N
980191167	612	Полулюкс 3-х местный	2012-10-25 08:18:03.699084	2012-10-25 08:18:03.699084	8	25	1500	\N	2500	\N	\N	\N	2	3	\N
980191168	612	Стандарт 3-х местный Мансарда	2012-10-25 08:26:30.492227	2012-10-25 08:26:30.492227	3	23	1300	\N	2300	\N	\N	\N	2	3	\N
980191169	612	Полулюкс 4-х местный	2012-10-25 08:26:30.508063	2012-10-25 08:26:30.508063	6	32	1800	\N	3200	\N	\N	\N	2	4	1
980191170	612	Люкс 2-х комнатный 5-ти местный	2012-10-25 08:32:47.854971	2012-10-25 08:41:13.983806	1	55	2300	\N	4500	\N	\N	\N	2	5	\N
980191171	1206	Стандартный	2012-10-25 11:53:13.625234	2012-10-25 11:55:42.800228	45	25	5000	\N	6000	\N	\N	\N	2	2	1
980191192	620	3-х местный стандартный с видом на море	2012-10-31 07:27:31.865208	2012-10-31 07:27:31.865208	5	18	2500	\N	3400	\N	\N	\N	2	3	\N
980191193	620	4-х местный стандартный	2012-10-31 07:27:32.053889	2012-10-31 07:27:32.053889	5	20	2600	\N	3500	\N	\N	\N	2	4	\N
980191172	1206	VIP-Дом	2012-10-25 12:12:42.549839	2012-10-25 12:29:44.188481	4	100	15000	\N	15000	\N	9000	\N	3	4	2
980191174	1207	II категории	2012-10-25 16:05:51.984634	2012-10-25 16:11:13.154816	2	16	1300	\N	1600	\N	\N	\N	1	2	1
980191173	1207	3-х местный I категории	2012-10-25 16:05:51.970825	2012-10-25 16:15:22.208943	3	18	1800	\N	2250	\N	\N	\N	1	3	\N
980191175	1207	Одноместный I категории	2012-10-25 16:15:22.210511	2012-10-25 16:15:22.210511	2	10	850	\N	900	\N	\N	\N	1	1	\N
980191176	776	1 комнатный 2-х местный	2012-10-26 07:00:20.910188	2012-10-26 07:21:49.654049	7	20	1400	\N	2000	\N	\N	\N	2	2	\N
980191177	776	1 комнатный 3-х местный	2012-10-26 07:21:49.655427	2012-10-26 07:21:49.655427	7	25	1600	\N	2400	\N	\N	\N	2	3	\N
980191178	776	1 комнатный полулюкс	2012-10-26 07:21:49.80514	2012-10-26 07:21:49.80514	3	16	1800	\N	2700	\N	\N	\N	2	2	\N
980191179	776	2-х комнатный люкс	2012-10-26 07:21:49.937415	2012-10-26 07:21:49.937415	2	16	2500	\N	3200	\N	\N	\N	3	2	\N
980191180	759	2-х местный	2012-10-26 09:11:50.747327	2012-10-26 09:11:50.747327	10	\N	2200	\N	3400	\N	\N	\N	2	2	1
980191181	759	3-х местный	2012-10-26 09:23:56.932319	2012-10-26 09:23:56.932319	9	\N	3600	\N	4500	\N	\N	\N	2	3	1
980191182	759	4-х местный	2012-10-26 09:27:07.271974	2012-10-26 09:27:07.271974	6	\N	4000	\N	5600	\N	\N	\N	2	4	1
980191183	1209	2-х местный	2012-10-26 10:31:42.568893	2012-10-26 10:46:14.792651	6	13	800	\N	1500	\N	\N	\N	2	2	0
980191184	1209	3-х местный	2012-10-26 10:37:31.018546	2012-10-26 10:46:14.853662	6	16	1200	\N	1650	\N	\N	\N	2	3	1
980191185	1209	4-х местный	2012-10-26 10:46:14.974101	2012-10-26 10:46:14.974101	5	18	1300	\N	1959	\N	\N	\N	2	4	1
980191186	1210	1-местный стандартный	2012-10-30 15:05:49.363098	2012-10-30 15:10:51.496101	8	12	1400	\N	1800	\N	\N	\N	2	1	\N
980191194	620	4-х местный стандартный с видом на море	2012-10-31 07:38:44.687661	2012-10-31 07:38:44.687661	5	20	2800	\N	3700	\N	\N	\N	2	4	\N
980191195	620	Люкс 2-х комнатный	2012-10-31 07:38:44.940902	2012-10-31 07:38:44.940902	3	35	3500	\N	5500	\N	\N	\N	3	5	\N
980191196	709	2-местный	2012-10-31 08:29:30.906494	2012-10-31 08:33:30.650657	4	\N	1000	\N	1000	\N	600	\N	2	2	\N
980191197	709	3-местный	2012-10-31 08:33:30.652302	2012-10-31 08:33:30.652302	4	\N	1500	\N	1500	\N	900	\N	2	3	\N
980191198	709	4-местный	2012-10-31 08:37:06.160495	2012-10-31 08:37:06.160495	4	\N	2000	\N	2000	\N	1000	\N	2	4	\N
980191199	709	Двухкомнатный люкс	2012-10-31 08:41:50.324221	2012-10-31 08:41:50.324221	2	\N	2000	\N	2000	\N	1000	\N	3	2	1
980191200	1211	2-х местный стандартный	2012-10-31 11:25:53.217516	2012-10-31 11:49:24.191051	15	\N	1500	\N	2200	\N	\N	\N	2	2	\N
980191201	1211	3-х местный стандартный	2012-10-31 11:29:12.341358	2012-10-31 11:49:24.192488	15	\N	1800	\N	2600	\N	\N	\N	2	3	\N
980191202	1211	2-х комнатный 4-х местный стандартный	2012-10-31 11:43:47.789224	2012-10-31 11:49:24.193831	3	\N	3000	\N	4000	\N	\N	\N	2	4	\N
980191203	1211	4-х местный стандартный (мансарда)	2012-10-31 11:47:59.597915	2012-10-31 11:49:24.19522	3	\N	2000	\N	2600	\N	\N	\N	2	4	\N
980191204	1212	2-х местный	2012-11-07 07:25:24.092996	2012-11-07 08:13:30.117669	12	22	1300	\N	1600	\N	\N	\N	2	2	\N
980191205	1212	3-х местный	2012-11-07 07:38:36.104317	2012-11-07 08:13:30.119518	11	25	1900	\N	2400	\N	\N	\N	2	3	\N
980191206	1212	2-х комнатный 4-х местный номер "Семейный"	2012-11-07 07:38:36.262802	2012-11-07 08:13:30.120886	4	50	2500	\N	3000	\N	\N	\N	2	4	1
980191207	1212	2-х комнатный 5-местный полулюкс	2012-11-07 08:02:55.144045	2012-11-07 08:13:30.121934	3	54	3500	\N	4500	\N	\N	\N	2	5	1
980191208	755	2-х местный	2012-11-07 08:39:23.917172	2012-11-07 08:55:10.966157	7	\N	1400	\N	2000	\N	\N	\N	2	2	\N
980191209	755	3-х местный	2012-11-07 08:42:22.410371	2012-11-07 08:55:10.967293	6	\N	1800	\N	2400	\N	\N	\N	2	3	1
980191210	755	Коттедж 3-х местный	2012-11-07 08:48:26.598829	2012-11-07 08:55:10.968269	2	\N	2100	\N	3000	\N	\N	\N	2	3	\N
980191211	755	Коттедж 4-х местный	2012-11-07 08:55:10.970582	2012-11-07 08:55:10.970582	2	\N	2800	\N	4000	\N	\N	\N	2	4	\N
980191212	1213	Эконом	2012-11-07 10:01:30.895177	2012-11-07 10:01:30.895177	8	15	1400	\N	1800	\N	\N	\N	1	4	\N
980191213	1213	2-х местный стандарт	2012-11-07 10:01:30.908186	2012-11-07 10:01:30.908186	10	14	700	\N	900	\N	\N	\N	1	2	2
980191214	1213	Люкс	2012-11-07 10:01:30.919255	2012-11-07 10:01:30.919255	2	13	900	\N	1200	\N	\N	\N	2	2	1
980191215	1214	2-х местный стандартный	2012-11-08 05:25:09.330455	2012-11-08 05:28:17.593432	5	\N	2300	\N	2800	\N	\N	\N	2	2	\N
980191216	1214	3-х местный стандартный	2012-11-08 05:28:17.594906	2012-11-08 15:39:33.099234	4	\N	2500	\N	3000	\N	\N	\N	2	3	\N
980191155	671	Стандарт четырехместный с балконом	2012-09-30 11:51:35.522553	2012-11-22 06:13:16.48715	6	25	1600	\N	2700	\N	\N	\N	2	4	0
980191158	671	VIP "студио"	2012-09-30 12:13:30.902166	2012-11-22 06:13:16.490998	1	50	4000	\N	5000	\N	\N	\N	3	4	0
980191218	1215	3-х местный	2012-11-08 06:56:24.275497	2012-11-08 07:11:08.075335	30	\N	1700	\N	2800	\N	\N	\N	2	3	1
980191219	1215	4-х местный	2012-11-08 07:02:11.650985	2012-11-08 07:11:08.076383	20	\N	2000	\N	3000	\N	\N	\N	2	4	1
980191220	1215	2-х комнатный люкс	2012-11-08 07:08:58.579662	2012-11-08 07:11:08.077415	12	\N	2500	\N	3600	\N	\N	\N	3	2	\N
980191257	980	Стандарт	2012-11-19 10:55:53.591854	2012-11-19 11:02:01.326732	13	14-16	\N	\N	\N	\N	\N	\N	2	2	2
980191221	1216	2-х местный стандартный	2012-11-08 07:49:53.450924	2012-11-08 08:03:34.956888	7	13	800	\N	1400	\N	\N	\N	2	2	1
980191222	1216	3-х местный стандартный	2012-11-08 07:54:50.987222	2012-11-08 08:03:34.957935	5	15	1050	\N	1950	\N	\N	\N	2	3	1
980191223	1216	4-х местный стандартный	2012-11-08 07:57:33.317368	2012-11-08 08:03:34.958873	4	16	1400	\N	2600	\N	\N	\N	2	4	1
980191224	1216	Люкс	2012-11-08 08:00:18.415999	2012-11-08 08:03:34.959857	2	13	1000	\N	1600	\N	\N	\N	2	2	1
980191225	1217	2-х местный полулюкс	2012-11-09 07:25:19.001198	2012-11-09 07:29:27.837438	\N	12	800	\N	1200	\N	\N	\N	2	2	\N
980191226	1217	3-х местный полулюкс	2012-11-09 07:29:27.838723	2012-11-09 07:29:27.838723	\N	13	900	\N	1350	\N	\N	\N	2	3	\N
980191227	1217	4-х местный полулюкс	2012-11-09 07:32:06.685965	2012-11-09 07:32:06.685965	\N	13	1200	\N	1800	\N	\N	\N	2	4	\N
980191228	1217	2-х местный люкс	2012-11-09 07:37:39.779447	2012-11-09 07:37:39.779447	\N	13	800	\N	1400	\N	\N	\N	2	2	\N
980191230	1217	3-х местный люкс	2012-11-09 07:44:32.641238	2012-11-09 07:44:32.641238	\N	13	1050	\N	1500	\N	\N	\N	2	3	\N
980191231	1217	4-х местный люкс	2012-11-09 07:47:00.591722	2012-11-09 07:47:00.591722	\N	13	1400	\N	2000	\N	\N	\N	2	4	\N
980191232	1217	2-х комнатный блок	2012-11-09 08:01:53.913417	2012-11-09 08:01:53.913417	\N	\N	1620	\N	2400	\N	\N	\N	2	6	\N
980191233	1217	2-х комнатный блок	2012-11-09 08:10:42.951413	2012-11-09 08:10:42.951413	\N	\N	1520	\N	2280	\N	\N	\N	2	4	\N
980191258	980	Люкс	2012-11-19 11:02:01.328644	2012-11-19 11:02:01.328644	4	20-25	\N	\N	\N	\N	\N	\N	2	2	2
980191235	1218	2-х местный люкс	2012-11-12 08:06:41.314866	2012-11-12 08:20:57.869811	3	36	2200	\N	2500	\N	\N	\N	2	2	1
980191234	1218	2-х местный стандартный	2012-11-12 08:06:41.301854	2012-11-12 08:20:57.878498	13	25-36	1800	\N	2200	\N	\N	\N	2	2	1
980191240	1219	Люкс	2012-11-12 10:36:04.252911	2012-11-12 10:44:41.961008	6	40	4000	\N	4600	\N	\N	\N	3	2	2
980191236	1219	2-х местный стандарт мини	2012-11-12 10:02:34.993439	2012-11-12 10:47:25.682074	10	15	3000	\N	3800	\N	\N	\N	2	2	1
980191237	1219	2-х местный стандарт макси	2012-11-12 10:11:44.486359	2012-11-12 10:47:25.683663	10	17	3200	\N	4000	\N	\N	\N	2	2	1
980191238	1219	2-х местный стандарт «Улучшенный»	2012-11-12 10:24:42.95695	2012-11-12 10:47:25.685056	10	22	3400	\N	4200	\N	\N	\N	2	2	1
980191239	1219	3-х местный стандарт	2012-11-12 10:29:14.854398	2012-11-12 10:47:25.686225	10	25	4200	\N	5100	\N	\N	\N	2	3	1
980191241	1219	Студия	2012-11-12 10:44:41.962592	2012-11-12 10:47:25.687546	4	50	5000	\N	7000	\N	\N	\N	3	2	2
980191242	733	2-х местный стандарт	2012-11-12 11:59:38.923208	2012-11-12 12:06:45.617352	\N	13	1700	\N	2200	\N	\N	\N	1	2	1
980191243	733	3-х местный стандарт	2012-11-12 12:06:45.618772	2012-11-12 12:06:45.618772	\N	13	2040	\N	2400	\N	\N	\N	1	3	\N
980191244	424	Стандарт 1	2012-11-13 09:39:03.334124	2012-11-13 09:39:03.334124	4	\N	600	\N	700	\N	\N	\N	1	1	\N
980191245	424	Стандарт 2	2012-11-13 09:41:39.258666	2012-11-13 09:41:39.258666	4	\N	550	\N	600	\N	\N	\N	1	1	\N
980191259	980	2-х комнатные Апартаменты	2012-11-19 11:09:23.315697	2012-11-19 11:09:23.315697	4	45	\N	\N	\N	\N	\N	\N	4	\N	\N
980191246	424	Однокомнатный  Люкс	2012-11-13 09:47:45.094002	2012-11-13 09:57:35.994631	5	\N	2600	\N	3200	\N	\N	\N	2	2	1
980191247	424	Двухкомнатный Люкс	2012-11-13 09:52:17.613651	2012-11-13 09:57:35.995714	5	\N	3000	\N	4000	\N	\N	\N	2	2	1
980191248	424	Однокомнатный Полулюкс	2012-11-13 09:55:40.102498	2012-11-13 09:57:35.996822	4	\N	1000	\N	1400	\N	\N	\N	2	2	1
980191249	631	Двухместный Стандарт	2012-11-14 05:47:11.829853	2012-11-14 05:47:11.829853	\N	\N	800	\N	1400	\N	\N	\N	2	2	1
980191250	631	Трехместный Стандарт	2012-11-14 05:59:55.021874	2012-11-14 05:59:55.021874	\N	\N	1100	\N	1800	\N	\N	\N	2	3	1
980191251	631	Четырехместный Стандарт	2012-11-14 05:59:55.155921	2012-11-14 05:59:55.155921	\N	\N	1400	\N	2200	\N	\N	\N	2	4	1
980191252	631	Двухкомнатный семейный "Люкс"	2012-11-14 06:16:48.215439	2012-11-14 06:16:48.215439	\N	\N	1800	\N	2700	\N	\N	\N	2	2	1
980191253	977	2-местный однокомнатный номер	2012-11-19 10:32:04.57954	2012-11-19 10:32:04.57954	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191254	977	3-местный однокомнатный номер	2012-11-19 10:32:04.592509	2012-11-19 10:32:04.592509	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191255	977	2-х комнатный "Семейный"	2012-11-19 10:32:04.604315	2012-11-19 10:32:04.604315	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191256	977	2-комнатный номер "Зал и спальня"	2012-11-19 10:32:04.618655	2012-11-19 10:32:04.618655	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191260	980	3-х комнатные Апартаменты	2012-11-19 11:20:19.403122	2012-11-19 11:25:00.31273	2	70	\N	\N	\N	\N	\N	\N	4	\N	\N
980191261	986	"Стандарт" 2-х местный 1-комнатный	2012-11-19 15:20:10.589987	2012-11-19 15:20:10.589987	\N	15-20	\N	\N	\N	\N	\N	\N	2	2	\N
980191262	986	"Стандарт + доп. место"  2-х местный 1-комнатный (	2012-11-19 15:20:10.602153	2012-11-19 15:20:10.602153	\N	20-25	\N	\N	\N	\N	\N	\N	2	2	1
980191263	986	"Люкс"  2-х комнатный	2012-11-19 15:20:10.615487	2012-11-19 16:35:58.886416	\N	\N	\N	\N	\N	\N	\N	\N	3	5	\N
980191268	989	LUX Sea view (двухкомнатный люкс с видом на море)	2012-11-20 08:48:14.234882	2012-11-20 08:48:14.234882	7	35	\N	\N	\N	\N	\N	\N	4	2	\N
980191269	989	DBL sea view (стандарт с большой кроватью, с видом на море)	2012-11-20 08:48:14.281133	2012-11-20 09:12:10.281264	11	19,5	\N	\N	\N	\N	\N	\N	2	2	\N
980191270	989	TWIN Sea view (стандартный номер с двумя кроватями с видом на море)	2012-11-20 08:48:14.322816	2012-11-20 09:12:10.283073	22	19,5	\N	\N	\N	\N	\N	\N	2	2	\N
980191271	989	TWIN (стандартный номер с двумя кроватями, душ)	2012-11-20 08:48:14.365356	2012-11-20 09:12:10.28453	15	19,5	\N	\N	\N	\N	\N	\N	2	2	\N
980191272	465	Люкс	2012-11-20 09:43:29.962967	2012-11-20 09:54:13.06011	\N	35	\N	\N	\N	\N	\N	\N	4	2	3
980191273	465	Люкс-студио	2012-11-20 09:54:13.062089	2012-11-20 09:54:13.062089	\N	38	\N	\N	\N	\N	\N	\N	4	2	3
980191274	465	Полулюкс	2012-11-20 09:58:32.156755	2012-11-20 09:58:32.156755	\N	28	\N	\N	\N	\N	\N	\N	3	2	3
980191275	465	Комфорт 1-й категории	2012-11-20 10:45:10.110686	2012-11-20 10:45:10.110686	\N	20-24	\N	\N	\N	\N	\N	\N	2	2	2
980191276	465	Комфорт 2-й категории	2012-11-20 10:45:10.132467	2012-11-20 10:45:10.132467	\N	20-24	\N	\N	\N	\N	\N	\N	2	2	2
980191277	465	Комфорт 3-й категории	2012-11-20 10:45:10.153499	2012-11-20 10:45:10.153499	\N	20-24	\N	\N	\N	\N	\N	\N	2	2	\N
980191134	1203	Полулюкс	2012-09-23 04:38:54.569192	2012-11-22 06:01:50.021257	4	12	1800	\N	2200	\N	\N	\N	2	2	1
980191278	595	"Стандартный" 2-х местный 1-комнатный	2012-11-22 06:54:08.579876	2012-11-22 07:10:53.981338	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191279	595	"Студия" 1-комнатный 2-местный	2012-11-22 07:10:54.063869	2012-11-22 07:10:54.063869	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191280	595	"Люкс" 2-комнатный 2-местный	2012-11-22 07:10:54.273592	2012-11-22 07:25:52.457444	\N	\N	\N	\N	\N	\N	\N	\N	4	2	\N
980191266	987	2-х местный «Стандарт»	2012-11-20 08:12:09.16022	2012-12-03 11:05:10.368706	28	14	3200	\N	3200	\N	2500	\N	2	2	1
980191281	595	"Люкс повышенной комфортности" 2-комнатный 2-местный	2012-11-22 07:10:54.411378	2012-11-22 07:10:54.411378	\N	\N	\N	\N	\N	\N	\N	\N	4	2	\N
980191282	1220	«Номер 1 категории» (стандартный). Двухместный однокомнатный	2012-11-22 08:05:57.702557	2012-11-22 08:05:57.702557	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191283	1220	Двухместный однокомнатный повышенной комфортности	2012-11-22 08:19:12.688624	2012-11-22 08:19:12.688624	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191284	1220	Двухместный однокомнатный повышенной комфортности (большой)	2012-11-22 08:22:09.878939	2012-11-22 08:22:09.878939	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191285	1220	«Апартаменты», трехкомнатный (4-х местный)	2012-11-22 08:27:24.373319	2012-11-22 08:27:24.373319	\N	\N	\N	\N	\N	\N	\N	\N	3	4	\N
980191286	1220	«Люкс-апартаменты», 4-х комнатный (6-ти местный)	2012-11-22 08:31:26.657012	2012-11-22 08:31:26.657012	\N	\N	\N	\N	\N	\N	\N	\N	4	6	\N
980191287	1220	2-х местный,3-х комнатный,2-х этажный номер	2012-11-22 08:33:52.129792	2012-11-22 08:33:52.129792	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N
980191288	1220	Апартаменты - 4-х местный в главном корпусе	2012-11-22 08:36:38.717789	2012-11-22 08:36:38.717789	\N	\N	\N	\N	\N	\N	\N	\N	4	4	\N
980191289	1220	2-х комнатный в главном корпусе	2012-11-22 08:38:08.222742	2012-11-22 08:38:08.222742	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N
980191290	1220	Номер повышенной комфортности в главном корпусе	2012-11-22 08:39:58.606299	2012-11-22 08:39:58.606299	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N
980191291	472	Одноместный Номер	2012-11-22 10:37:39.21391	2012-11-22 10:37:39.21391	\N	\N	\N	\N	\N	\N	\N	\N	2	1	\N
980191292	472	Двухместный Номер	2012-11-22 10:37:39.464788	2012-11-22 10:43:53.454863	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191293	472	Трехместный Номер	2012-11-22 10:47:17.65868	2012-11-22 10:47:17.65868	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191294	475	2-х местный номер I категории	2012-11-22 11:40:52.285367	2012-11-22 11:40:52.285367	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191295	475	2-х местный номер I категории ( балкон)	2012-11-22 11:42:57.539537	2012-11-22 11:42:57.539537	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191296	475	1-но мест. номер I категории	2012-11-22 11:42:57.553285	2012-11-22 11:42:57.553285	\N	\N	\N	\N	\N	\N	\N	\N	2	1	\N
980191297	475	«Студия»  «Полулюкс»	2012-11-22 11:44:52.403582	2012-11-22 11:44:52.403582	\N	\N	\N	\N	\N	\N	\N	\N	3	2	\N
980191298	475	«Люкс»	2012-11-22 11:44:52.414757	2012-11-22 11:44:52.414757	\N	\N	\N	\N	\N	\N	\N	\N	4	2	\N
980191299	475	Апартаменты	2012-11-22 11:44:52.429801	2012-11-22 11:45:51.034772	\N	\N	\N	\N	\N	\N	\N	\N	4	2	\N
980191300	1001	2-x местный "полулюкс" - терасса	2012-11-22 13:36:31.34976	2012-11-22 13:52:09.725633	12	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191301	1001	2-x местный "полулюкс"	2012-11-22 13:52:09.855974	2012-11-22 13:52:09.855974	4	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191302	1001	2-х местный 2-х комнатный люкс	2012-11-22 13:52:09.891226	2012-11-22 13:55:34.817124	4	\N	\N	\N	\N	\N	\N	\N	3	2	\N
980191303	1001	2-х местный 1 комнатный "молодежный" люкс	2012-11-22 13:55:34.819293	2012-11-22 13:55:34.819293	2	\N	\N	\N	\N	\N	\N	\N	3	2	\N
980191317	1003	"Эконом" - 2-х местный	2012-11-22 15:43:32.731055	2012-11-22 15:46:19.510023	\N	10	\N	\N	\N	\N	\N	\N	1	2	1
980191316	1003	"Эконом" 1-местный	2012-11-22 15:43:32.677068	2012-11-22 15:46:19.512541	\N	10	\N	\N	\N	\N	\N	\N	1	1	1
980191306	1003	"Комфорт" 3-местный	2012-11-22 15:12:00.001726	2012-11-22 15:46:19.514832	\N	19	\N	\N	\N	\N	\N	\N	2	3	1
980191307	1003	"Полулюкс" 1-местный	2012-11-22 15:13:56.167978	2012-11-22 15:46:19.51723	\N	28	\N	\N	\N	\N	\N	\N	2	1	1
980191308	1003	"Полулюкс" 2-местный	2012-11-22 15:20:16.577968	2012-11-22 15:46:19.518813	\N	28	\N	\N	\N	\N	\N	\N	2	2	1
980191309	1003	"Полулюкс" 3-местный	2012-11-22 15:26:41.911085	2012-11-22 15:46:19.520401	\N	28	\N	\N	\N	\N	\N	\N	2	3	1
980191304	1003	"Комфорт" 1-местный	2012-11-22 15:07:03.84698	2012-11-22 15:46:19.522257	\N	19	\N	\N	\N	\N	\N	\N	2	1	1
980191305	1003	"Комфорт" 2-местный	2012-11-22 15:10:15.662119	2012-11-22 15:46:19.523918	\N	19	\N	\N	\N	\N	\N	\N	2	2	1
980191314	1003	"Стандарт" 1- местный	2012-11-22 15:39:58.860545	2012-11-22 15:46:19.525601	\N	14	\N	\N	\N	\N	\N	\N	2	1	1
980191315	1003	"Стандарт" 2-х местный	2012-11-22 15:39:58.91208	2012-11-22 15:46:19.527193	\N	14	\N	\N	\N	\N	\N	\N	2	2	1
980191311	1003	"Люкс 2-х комнатный" 2 местный	2012-11-22 15:32:07.93902	2012-11-22 15:46:19.528805	\N	40	\N	\N	\N	\N	\N	\N	3	2	1
980191310	1003	"Люкс 2-х комнатный" 1 местный	2012-11-22 15:30:02.972118	2012-11-22 15:46:19.530385	\N	40	\N	\N	\N	\N	\N	\N	3	1	1
980191312	1003	"Люкс 2-х комнатный" 3 местный	2012-11-22 15:35:55.753321	2012-11-22 15:46:19.532683	\N	40	\N	\N	\N	\N	\N	\N	3	3	1
980191313	1003	"Люкс 2-х комнатный" 4 местный	2012-11-22 15:35:55.801912	2012-11-22 15:46:19.534315	\N	40	\N	\N	\N	\N	\N	\N	3	4	1
980191318	474	Стандарт 2-х местный	2012-11-23 06:56:13.875633	2012-11-23 06:56:13.875633	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191319	998	однокомнатный 2-х местный	2012-11-23 07:37:31.774592	2012-11-23 07:52:00.122064	\N	23-25	\N	\N	\N	\N	\N	\N	2	2	1
980191320	998	двухкомнатный 3-х местный  с кухней	2012-11-23 07:43:31.129036	2012-11-23 07:52:00.1253	\N	30-35	\N	\N	\N	\N	\N	\N	2	\N	1
980191321	998	двухкомнатный 4-х местный  с кухней	2012-11-23 07:52:00.12849	2012-11-23 07:52:00.12849	\N	\N	\N	\N	\N	\N	\N	\N	2	4	1
980191322	998	3-х комнатный 5-и местный	2012-11-23 07:57:21.474099	2012-11-23 07:57:21.474099	\N	\N	\N	\N	\N	\N	\N	\N	2	5	1
980191323	1004	Стандартный	2012-11-23 10:58:52.656118	2012-11-23 10:58:52.656118	\N	16	\N	\N	\N	\N	\N	\N	2	2	\N
980191324	1004	Полулюкс	2012-11-23 11:05:15.62399	2012-11-23 11:05:15.62399	\N	25	\N	\N	\N	\N	\N	\N	2	3	\N
980191325	1004	2-х комнатный Семейный блочный	2012-11-23 11:10:58.192955	2012-11-23 11:10:58.192955	\N	20	\N	\N	\N	\N	\N	\N	2	4	\N
980191326	1004	2-х комнатный Люкс	2012-11-23 11:14:32.426822	2012-11-23 11:14:32.426822	\N	35	\N	\N	\N	\N	\N	\N	1	4	\N
980191327	478	Стандарт	2012-11-23 11:39:21.586998	2012-11-23 11:43:13.119686	27	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191328	478	Люкс двухкомнтатный	2012-11-23 11:43:13.121103	2012-11-23 11:43:13.121103	3	\N	\N	\N	\N	\N	\N	\N	3	2	3
980191330	1009	Стандартный 2-местный	2012-11-23 12:39:36.400346	2012-11-23 12:39:36.400346	20	24	\N	\N	\N	\N	\N	\N	2	2	1
980191331	1009	Студио 2-местный	2012-11-23 12:46:43.098737	2012-11-23 12:46:43.098737	2	28	\N	\N	\N	\N	\N	\N	2	2	2
980191332	1009	Люкс двухкомнатный	2012-11-23 13:00:02.945216	2012-11-23 13:00:02.945216	\N	48	\N	\N	\N	\N	\N	\N	4	2	\N
980191329	1009	Стандартный 1-местный	2012-11-23 12:35:47.470492	2012-11-23 13:09:09.824862	3	16	\N	\N	\N	\N	\N	\N	2	1	1
980191333	486	2-х местный эконом	2012-11-23 14:08:07.170948	2012-11-23 14:08:07.170948	\N	\N	\N	\N	\N	\N	\N	\N	1	2	\N
980191334	486	2-х местный стандарт+	2012-11-23 14:08:07.245038	2012-11-23 14:08:07.245038	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191335	486	2-х местный стандарт	2012-11-23 14:33:49.743149	2012-11-23 14:33:49.743149	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191336	486	3-х местный стандарт	2012-11-23 14:37:35.486251	2012-11-23 14:37:35.486251	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191337	486	2-х комнатный семейный	2012-11-23 17:02:09.320527	2012-11-23 17:02:09.320527	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191338	486	2-х местный повышенной комфортности+	2012-11-23 17:06:10.257381	2012-11-23 17:06:10.257381	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191339	486	3-х местный повышенной комфортности	2012-11-23 17:17:29.149999	2012-11-23 17:17:29.149999	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191340	486	3-х местный полулюкс	2012-11-23 17:21:29.174543	2012-11-23 17:21:29.174543	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191341	1052	Стандарт 2-х местный	2012-11-26 09:36:23.899824	2012-11-26 09:36:23.899824	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191342	1052	Стандарт 4-х местный двухкомнатный	2012-11-26 09:43:39.254589	2012-11-26 09:56:40.048277	\N	\N	\N	\N	\N	\N	\N	\N	2	4	1
980191343	1052	Люкс 2-х местный двухкомнатный	2012-11-26 09:56:40.102934	2012-11-26 09:56:40.102934	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191344	1052	«Полулюкс» двухместный	2012-11-26 09:56:40.117778	2012-11-26 09:56:40.117778	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191345	1221	2-х местный однокомнатный "эконом"	2012-11-26 10:19:55.256141	2012-11-26 10:19:55.256141	\N	\N	\N	\N	\N	\N	\N	\N	1	2	\N
980191346	1221	2-х местный однокомнатный "стандарт"	2012-11-26 10:19:55.271036	2012-11-26 10:22:18.114983	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191347	1221	2-х местный однокомнатный "полулюкс"	2012-11-26 10:22:18.116612	2012-11-26 10:22:18.116612	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191348	1221	3-х местный однокомнатный "эконом"	2012-11-26 10:25:17.317772	2012-11-26 10:25:17.317772	\N	\N	\N	\N	\N	\N	\N	\N	1	3	\N
980191349	1221	4-х местный однокомнатный "эконом"	2012-11-26 10:25:17.331788	2012-11-26 10:25:17.331788	\N	\N	\N	\N	\N	\N	\N	\N	1	4	\N
980191350	571	"Стандарт" в цоколе	2012-11-26 16:30:46.581735	2012-11-26 16:33:37.278638	5	20	\N	\N	\N	\N	\N	\N	2	3	1
980191351	571	3-х местный Стандарт	2012-11-26 16:33:37.281161	2012-11-26 16:38:51.435298	14	25-30	\N	\N	\N	\N	\N	\N	2	3	1
980191352	571	4-х местный Стандарт	2012-11-26 16:38:51.437209	2012-11-26 16:38:51.437209	12	25-30	\N	\N	\N	\N	\N	\N	2	4	1
980191353	571	2-х комнатный Люкс	2012-11-26 16:38:51.450882	2012-11-26 16:38:51.450882	2	20-25	\N	\N	\N	\N	\N	\N	3	2	2
980191354	1222	Люкс	2012-11-27 05:59:11.703143	2012-11-27 06:00:42.469888	30	20	\N	\N	\N	\N	\N	\N	2	3	1
980191355	572	2-х местный «стандарт»	2012-11-27 06:53:58.847835	2012-11-27 06:53:58.847835	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191356	572	Двухкомнатный 3-х местный «люкс»	2012-11-27 06:53:58.859638	2012-11-27 06:53:58.859638	\N	\N	\N	\N	\N	\N	\N	\N	3	3	1
980191357	572	Трехкомнатный, 4-х местный «апартамент»	2012-11-27 07:02:19.880501	2012-11-27 07:04:11.406397	\N	\N	\N	\N	\N	\N	\N	\N	4	4	1
980191358	1030	2-местный однокомнатный	2012-11-27 08:24:15.897629	2012-11-27 08:24:15.897629	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191359	1030	2-местный однокомнатный 1 категории	2012-11-27 08:34:18.563583	2012-11-27 08:34:18.563583	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191360	1030	2-местный полулюкс однокомнатный	2012-11-27 08:34:18.575219	2012-11-27 08:34:18.575219	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191361	1030	2-местный 2-комнатный люкс	2012-11-27 08:34:18.58677	2012-11-27 08:34:18.58677	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191362	550	Стандарт 2-х местный	2012-11-27 09:31:23.540943	2012-11-27 09:31:23.540943	13	12	\N	\N	\N	\N	\N	\N	2	2	\N
980191363	550	Стандарт 3-х местный	2012-11-27 09:31:23.552534	2012-11-27 09:31:23.552534	3	16	\N	\N	\N	\N	\N	\N	2	3	\N
980191364	550	Люкс 2-х комнатный 4-х местный	2012-11-27 09:31:23.563614	2012-11-27 09:31:23.563614	2	\N	\N	\N	\N	\N	\N	\N	3	4	2
980191365	570	Полулюкс	2012-11-27 10:14:11.536182	2012-11-27 10:14:11.536182	\N	16	\N	\N	\N	\N	\N	\N	1	2	2
980191367	570	Люкс" 2-комнатный	2012-11-27 10:17:19.860765	2012-11-27 10:17:19.860765	\N	25	\N	\N	\N	\N	\N	\N	3	4	1
980191366	570	Люкс 1-комнатный	2012-11-27 10:17:19.848362	2012-11-27 10:23:09.349799	\N	16	\N	\N	\N	\N	\N	\N	2	2	2
980191368	1043	2-х местный стандарт	2012-11-28 08:16:47.192862	2012-11-28 08:16:47.192862	2	20	\N	\N	\N	\N	\N	\N	2	2	1
980191369	1043	2-х местный полулюкс	2012-11-28 08:22:31.524654	2012-11-28 08:22:31.524654	12	20	\N	\N	\N	\N	\N	\N	2	2	1
980191370	1043	3-х местный двухкомнатный люкс	2012-11-28 08:22:31.537792	2012-11-28 08:22:31.537792	6	32	\N	\N	\N	\N	\N	\N	3	2	3
980191371	587	2-местный  однокомнатный стандарт	2012-11-28 09:03:42.108773	2012-11-28 09:03:42.108773	\N	13-14	\N	\N	\N	\N	\N	\N	2	2	1
980191372	587	Двухкомнатный номер	2012-11-28 09:12:22.662259	2012-11-28 09:12:22.662259	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191373	593	Одноместный эконом	2012-11-28 09:48:30.738096	2012-11-28 09:48:30.738096	\N	\N	\N	\N	\N	\N	\N	\N	1	1	\N
980191374	593	Двухместный эконом	2012-11-28 09:51:49.413859	2012-11-28 09:51:49.413859	\N	\N	\N	\N	\N	\N	\N	\N	1	2	\N
980191375	593	Трехместный эконом	2012-11-28 09:53:41.743955	2012-11-28 09:53:41.743955	\N	\N	\N	\N	\N	\N	\N	\N	1	3	\N
980191376	593	Двухместный полулюкс	2012-11-28 09:56:10.972952	2012-11-28 09:56:10.972952	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191377	593	Трехместный полулюкс	2012-11-28 09:57:49.112485	2012-11-28 09:57:49.112485	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191378	593	Квартира однокомнатная	2012-11-28 10:08:45.753816	2012-11-28 10:08:45.753816	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N
980191379	1051	DB - 2-х местный однокомнатный «полулюкс»	2012-11-28 12:35:35.770196	2012-11-28 12:43:55.750659	10	15-18	\N	\N	\N	\N	\N	\N	2	2	1
980191380	1051	TRI, KS - 3-х местный однокомнатный«полулюкс»	2012-11-28 12:43:55.753044	2012-11-28 12:48:33.677189	22	18-25	\N	\N	\N	\N	\N	\N	2	3	1
980191381	1051	ST, FS - 3-х местный двухкомнатный «люкс»	2012-11-28 12:48:33.678454	2012-11-28 12:48:33.678454	6	30-40	\N	\N	\N	\N	\N	\N	3	3	\N
980191265	987	Люкс	2012-11-20 07:42:58.445429	2012-12-03 10:57:46.577519	4	45	6300	\N	6300	\N	5500	\N	4	2	2
980191264	987	Апартаменты	2012-11-20 07:34:55.320719	2012-12-03 11:05:10.3713	2	54	10400	\N	10400	\N	10400	\N	4	4	2
980191267	987	3-х местный «Стандарт»	2012-11-20 08:12:09.195112	2012-12-19 11:23:18.84911	3	18	4300	\N	4300	\N	3700	\N	2	3	0
980191382	1223	Стандарт 2-х местный с французским балконом	2012-12-03 11:53:34.195832	2012-12-03 11:53:34.195832	\N	16	\N	\N	\N	\N	\N	\N	2	2	\N
980191383	1223	Стандарт 2-х местный с Большим балконом	2012-12-03 11:57:21.155456	2012-12-03 11:57:21.155456	\N	18	\N	\N	\N	\N	\N	\N	2	2	1
980191392	1224	Стандарт 2-х комнатный 5-ти местный	2012-12-03 15:07:26.286944	2012-12-03 15:12:39.751986	1	\N	\N	\N	\N	\N	\N	\N	2	5	\N
980191395	1224	Люкс 4-х комнатный 6-ти местный с кухней	2012-12-03 15:14:47.502378	2012-12-03 15:30:32.645849	2	\N	\N	\N	\N	\N	\N	\N	3	6	\N
980191387	1223	Стандарт 2-х местный с французским балконом ПК	2012-12-03 14:36:41.937926	2012-12-03 14:36:41.937926	\N	23	\N	\N	\N	\N	\N	\N	2	2	1
980191386	1223	Стандарт 3-х местный с французским балконом	2012-12-03 12:05:22.244461	2012-12-03 14:44:06.029099	\N	20	\N	\N	\N	\N	\N	\N	2	3	0
980191388	1223	Мансардный 2-х местный	2012-12-03 14:39:03.68339	2012-12-03 14:44:06.030058	\N	14	\N	\N	\N	\N	\N	\N	2	2	0
980191389	1223	Мансардный 2-х комнатный 4-х местный	2012-12-03 14:43:26.079502	2012-12-03 14:43:26.079502	\N	40	\N	\N	\N	\N	\N	\N	2	2	1
980191384	1223	Семейный 2-х комнатный 4-х местный с французcким балконом	2012-12-03 12:00:30.991771	2012-12-03 14:44:06.026856	\N	40	\N	\N	\N	\N	\N	\N	2	4	0
980191385	1223	Семейный 2-х комнатный 4-х местный с Большим балконом	2012-12-03 12:05:22.229584	2012-12-03 14:44:06.028059	\N	40	\N	\N	\N	\N	\N	\N	2	4	0
980191390	1224	Стандарт 2-х местный	2012-12-03 14:59:58.027385	2012-12-03 15:12:39.754739	1	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191391	1224	Стандарт 2-х местный с балконом	2012-12-03 15:02:18.104405	2012-12-03 15:12:39.755672	2	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191396	1224	Люкс 2-х местный однокомнатный	2012-12-03 15:16:53.890163	2012-12-03 15:16:53.890163	1	\N	\N	\N	\N	\N	\N	\N	3	2	\N
980191397	1224	Люкс 2-х местный однокомнатный с балконом	2012-12-03 15:20:24.228722	2012-12-03 15:20:24.228722	1	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191398	1224	Люкс 4-х местный однокомнатный с балконом	2012-12-03 15:20:24.245552	2012-12-03 15:27:33.941492	1	\N	\N	\N	\N	\N	\N	\N	3	\N	\N
980191393	1224	Люкс 2-х комнатный 4-х местный с кухней	2012-12-03 15:09:29.265506	2012-12-03 15:27:33.942971	2	\N	\N	\N	\N	\N	\N	\N	3	4	\N
980191394	1224	Люкс 3-х комнатный 6-ти местный с кухней	2012-12-03 15:12:39.756818	2012-12-03 15:27:33.944074	2	\N	\N	\N	\N	\N	\N	\N	3	6	\N
980191399	1225	Одноместный номер "Стандарт"	2012-12-04 06:35:48.829001	2012-12-04 06:35:48.829001	\N	25	\N	\N	\N	\N	\N	\N	2	1	\N
980191400	1225	Двухместный номер "Стандарт"	2012-12-04 06:39:27.01986	2012-12-04 06:39:27.01986	\N	25	\N	\N	\N	\N	\N	\N	2	2	\N
980191401	1225	Апартаменты	2012-12-04 06:39:27.282149	2012-12-04 06:47:07.945861	\N	\N	\N	\N	\N	\N	\N	\N	3	4	\N
980191402	1227	Домик на пляже (1-линия)	2012-12-04 09:56:31.420274	2012-12-04 10:00:51.662123	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191403	1227	Домик с видом на море и двориком (2-линия)	2012-12-04 10:00:51.664501	2012-12-04 10:00:51.664501	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191404	1227	Домик с видом на бассейн (3-линия)	2012-12-04 10:03:08.006086	2012-12-04 10:03:08.006086	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191405	1227	Домик с видом на море (2-линия)	2012-12-04 10:05:53.190615	2012-12-04 10:05:53.190615	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191406	1227	Двухэтажный домик с видом на море (2-линия)	2012-12-04 10:10:29.201712	2012-12-04 10:10:29.201712	\N	\N	\N	\N	\N	\N	\N	\N	3	2	1
980191407	999	Стандартный одноместный	2012-12-04 11:22:51.182321	2012-12-04 11:22:51.182321	\N	13	\N	\N	\N	\N	\N	\N	2	1	\N
980191408	999	Стандартный двухместный	2012-12-04 11:26:48.936346	2012-12-04 11:26:48.936346	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191410	999	Стандартный номер с индивидуальным входом из патио двухместный	2012-12-04 11:26:49.166126	2012-12-04 11:30:11.799774	\N	20	\N	\N	\N	\N	\N	\N	2	\N	\N
980191411	999	Стандарт - плюс двухместный	2012-12-04 11:26:49.182258	2012-12-04 11:36:37.260145	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191412	999	Стандарт-плюс-патио двухместный	2012-12-04 11:26:49.197744	2012-12-04 11:39:34.626844	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1
980191413	999	Люкс с индивидуальным входом из патио	2012-12-04 11:26:49.212714	2012-12-04 11:58:07.383914	\N	42	\N	\N	\N	\N	\N	\N	3	2	\N
980191409	999	Де Люкс, двухкомнатный номер с видом на море	2012-12-04 11:26:49.151439	2012-12-04 11:58:07.38559	\N	44	\N	\N	\N	\N	\N	\N	3	2	\N
980191414	999	Сюит «Президентский» 3-х комнатный	2012-12-04 11:58:07.387195	2012-12-04 11:58:07.387195	\N	110	\N	\N	\N	\N	\N	\N	4	2	\N
980191415	597	Студио – Cтандарт	2012-12-04 14:29:16.473346	2012-12-04 14:29:16.473346	20	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191416	597	Стандарт – Сон	2012-12-04 14:32:17.329497	2012-12-04 14:32:17.329497	\N	30,5	\N	\N	\N	\N	\N	\N	2	2	\N
980191417	1228	Двухместный номер с удобствами	2012-12-18 08:38:58.256764	2012-12-18 08:38:58.256764	\N	\N	\N	\N	\N	\N	\N	\N	2	2	\N
980191418	1228	Трехместный номер с удобствами	2012-12-18 09:03:59.817428	2012-12-18 09:03:59.817428	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
980191419	1228	Двухкомнатный номер	2012-12-18 09:03:59.83781	2012-12-18 09:03:59.83781	\N	\N	\N	\N	\N	\N	\N	\N	2	3	\N
\.


--
-- Data for Name: hotel_service_values; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_service_values (id, service_id, hotel_id, value, created_at, updated_at) FROM stdin;
3448	1	521		2012-08-31 13:37:19.88664	2012-08-31 13:37:19.88664
3449	2	521		2012-08-31 13:37:19.88928	2012-08-31 13:37:19.88928
3450	3	521		2012-08-31 13:37:19.890632	2012-08-31 13:37:19.890632
3451	4	521		2012-08-31 13:37:19.891802	2012-08-31 13:37:19.891802
3452	5	521		2012-08-31 13:37:19.892709	2012-08-31 13:37:19.892709
3453	6	521		2012-08-31 13:37:19.893625	2012-08-31 13:37:19.893625
3454	7	521		2012-08-31 13:37:19.894741	2012-08-31 13:37:19.894741
3455	8	521		2012-08-31 13:37:19.895861	2012-08-31 13:37:19.895861
3456	9	521		2012-08-31 13:37:19.896791	2012-08-31 13:37:19.896791
3457	10	521		2012-08-31 13:37:19.897695	2012-08-31 13:37:19.897695
3458	11	521		2012-08-31 13:37:19.898617	2012-08-31 13:37:19.898617
3470	1	890		2012-08-31 18:44:59.714466	2012-08-31 18:44:59.714466
3471	2	890		2012-08-31 18:44:59.716112	2012-08-31 18:44:59.716112
3472	3	890		2012-08-31 18:44:59.717462	2012-08-31 18:44:59.717462
3473	4	890		2012-08-31 18:44:59.718825	2012-08-31 18:44:59.718825
3474	5	890		2012-08-31 18:44:59.720185	2012-08-31 18:44:59.720185
3475	6	890		2012-08-31 18:44:59.721544	2012-08-31 18:44:59.721544
3476	7	890		2012-08-31 18:44:59.722938	2012-08-31 18:44:59.722938
3477	8	890		2012-08-31 18:44:59.723913	2012-08-31 18:44:59.723913
3478	9	890		2012-08-31 18:44:59.724807	2012-08-31 18:44:59.724807
3479	10	890		2012-08-31 18:44:59.725703	2012-08-31 18:44:59.725703
3480	11	890		2012-08-31 18:44:59.726617	2012-08-31 18:44:59.726617
3484	4	983		2012-09-05 03:44:45.593179	2012-09-05 03:44:45.593179
3489	9	983		2012-09-05 03:44:45.598026	2012-09-05 03:44:45.598026
3492	12	983	О-00056	2012-09-05 04:07:12.052001	2012-09-05 04:07:12.052001
3493	13	983	ИП Курбацкая Юлия Владимировна	2012-09-05 04:07:12.053144	2012-09-05 04:07:12.053144
3485	5	983	СПА-салон, минибар, трансферт, Wi-fi, прачечная, прокат колясок, детских кроваток	2012-09-05 03:44:45.59418	2012-09-05 04:20:02.877875
3488	8	983	ресторан "Черкесский аул"	2012-09-05 03:44:45.597044	2012-09-05 04:20:02.879929
3482	2	983	нет	2012-09-05 03:44:45.590816	2012-09-05 04:32:29.071879
3483	3	983	28	2012-09-05 03:44:45.592069	2012-09-05 04:32:29.072872
3486	6	983	400-500 метров до песчанных пляжей	2012-09-05 03:44:45.59512	2012-09-05 04:32:29.073771
3481	1	983	оплаченный завтрак, дополнительно шведский стол	2012-09-05 03:44:45.556503	2012-09-05 04:33:31.822511
3487	7	983	нет	2012-09-05 03:44:45.59609	2012-09-05 04:33:31.823536
3490	10	983	нет	2012-09-05 03:44:45.59933	2012-09-05 04:33:31.824399
3491	11	983	очень хорошее	2012-09-05 03:44:45.600647	2012-09-05 04:45:10.786599
3495	2	1196		2012-09-05 05:18:40.566114	2012-09-05 05:18:40.566114
3497	4	1196		2012-09-05 05:18:40.568779	2012-09-05 05:18:40.568779
3498	5	1196		2012-09-05 05:18:40.569947	2012-09-05 05:18:40.569947
3500	7	1196		2012-09-05 05:18:40.572538	2012-09-05 05:18:40.572538
3501	8	1196		2012-09-05 05:18:40.574365	2012-09-05 05:18:40.574365
3502	9	1196		2012-09-05 05:18:40.575909	2012-09-05 05:18:40.575909
3494	1	1196	нет	2012-09-05 05:18:40.564232	2012-09-05 05:30:35.035067
3496	3	1196	7	2012-09-05 05:18:40.56745	2012-09-05 05:30:35.03651
3503	10	1196	Имеется оборудованная кухня	2012-09-05 05:18:40.57737	2012-09-05 05:30:35.03777
3504	11	1196	хорошее	2012-09-05 05:18:40.578821	2012-09-05 05:30:35.038998
3505	12	1196	О-00057	2012-09-05 05:18:40.580215	2012-09-05 05:30:35.040253
3506	13	1196	ИП Фесенко Мария Юрьевна	2012-09-05 05:18:40.58138	2012-09-05 05:30:35.041473
3499	6	1196	700-800 метров до моря, 1300-1500 метров до центрального пляжа	2012-09-05 05:18:40.571021	2012-09-05 05:48:57.934545
3507	12	521		2012-09-05 05:55:31.133232	2012-09-05 05:55:31.133232
3508	13	521		2012-09-05 05:55:31.134916	2012-09-05 05:55:31.134916
3512	4	1023		2012-09-06 04:41:11.794699	2012-09-06 04:41:11.794699
3514	6	1023		2012-09-06 04:41:11.797241	2012-09-06 04:41:11.797241
3515	7	1023		2012-09-06 04:41:11.79865	2012-09-06 04:41:11.79865
3516	8	1023		2012-09-06 04:41:11.8	2012-09-06 04:41:11.8
3517	9	1023		2012-09-06 04:41:11.801241	2012-09-06 04:41:11.801241
3518	10	1023		2012-09-06 04:41:11.802582	2012-09-06 04:41:11.802582
3520	12	1023	О-00058	2012-09-06 04:41:11.805213	2012-09-06 04:52:47.51405
3521	13	1023	ИП Козленко О.А.	2012-09-06 04:41:11.806525	2012-09-06 04:52:47.515052
3509	1	1023	завтрак+ужин, доставка в номера	2012-09-06 04:41:11.791693	2012-09-06 05:11:15.450735
3511	3	1023	41	2012-09-06 04:41:11.793767	2012-09-06 05:11:15.451736
3513	5	1023	трансфер, русская и турецкая бани, камин, массаж, СПА, банкомат, терминал оплаты услуг, бильярд	2012-09-06 04:41:11.795638	2012-09-06 05:11:15.452605
3510	2	1023	открытый бассейн с водопадом и бассейн в бане	2012-09-06 04:41:11.792829	2012-09-06 05:12:34.833161
3519	11	1023	очень хорошее	2012-09-06 04:41:11.803889	2012-09-06 05:12:34.834556
3538	4	1026		2012-09-06 16:10:23.597367	2012-09-06 16:10:23.597367
3539	5	1026		2012-09-06 16:10:23.598622	2012-09-06 16:10:23.598622
3540	6	1026		2012-09-06 16:10:23.599829	2012-09-06 16:10:23.599829
3543	9	1026		2012-09-06 16:10:23.604516	2012-09-06 16:10:23.604516
3545	11	1026		2012-09-06 16:10:23.608063	2012-09-06 16:10:23.608063
3546	12	1026	О-00059	2012-09-06 16:10:23.609526	2012-09-06 16:12:23.688204
3547	13	1026	ИП Денисенко Лариса Владимировна	2012-09-06 16:10:23.610956	2012-09-06 16:12:23.689525
3535	1	1026	Три кухни, самостоятельное приготовление пищи	2012-09-06 16:10:23.592779	2012-09-06 16:27:32.705128
3536	2	1026	нет	2012-09-06 16:10:23.594537	2012-09-06 16:27:32.70627
3537	3	1026	12	2012-09-06 16:10:23.595917	2012-09-06 16:27:32.707187
3541	7	1026	нет	2012-09-06 16:10:23.601423	2012-09-06 16:27:32.708106
3542	8	1026	нет	2012-09-06 16:10:23.603219	2012-09-06 16:27:32.709297
3544	10	1026	три кухни для самостоятельного приготовления пищи	2012-09-06 16:10:23.606302	2012-09-06 16:28:08.294165
3548	1	1197		2012-09-06 16:47:30.005443	2012-09-06 16:47:30.005443
3549	2	1197		2012-09-06 16:47:30.006485	2012-09-06 16:47:30.006485
3551	4	1197		2012-09-06 16:47:30.008313	2012-09-06 16:47:30.008313
3553	6	1197		2012-09-06 16:47:30.010174	2012-09-06 16:47:30.010174
3554	7	1197		2012-09-06 16:47:30.011117	2012-09-06 16:47:30.011117
3556	9	1197		2012-09-06 16:47:30.013465	2012-09-06 16:47:30.013465
3557	10	1197		2012-09-06 16:47:30.014845	2012-09-06 16:47:30.014845
3558	11	1197		2012-09-06 16:47:30.016194	2012-09-06 16:47:30.016194
3559	12	1197	О-00061	2012-09-06 16:47:30.017601	2012-09-06 16:57:38.026109
3560	13	1197	ИП Парохина Елена Ивановна	2012-09-06 16:47:30.018958	2012-09-06 16:57:38.027851
3550	3	1197	13	2012-09-06 16:47:30.007411	2012-09-06 17:08:55.108552
3552	5	1197	трансфер	2012-09-06 16:47:30.009225	2012-09-06 17:08:55.109617
3555	8	1197	кафе "Таверна", гости питаются со скидкой	2012-09-06 16:47:30.012338	2012-09-06 17:08:55.110683
3562	2	1022	небольшой бассейн	2012-09-07 04:30:35.216709	2012-09-07 04:58:02.980717
3566	6	1022	50 метров	2012-09-07 04:30:35.220715	2012-09-07 04:58:02.983195
3565	5	1022	дети до 6 лет отдыхают бесплатно	2012-09-07 04:30:35.219824	2012-09-07 05:19:30.952263
3569	9	1022		2012-09-07 04:30:35.224161	2012-09-07 04:30:35.224161
3570	10	1022		2012-09-07 04:30:35.22578	2012-09-07 04:30:35.22578
3561	1	1022	нет	2012-09-07 04:30:35.215068	2012-09-07 04:33:53.135819
3563	3	1022	13	2012-09-07 04:30:35.217991	2012-09-07 04:33:53.137234
3572	12	1022	О-00062	2012-09-07 04:30:35.228085	2012-09-07 04:33:53.139289
3573	13	1022	ИП Богосян Христина Сетраковна	2012-09-07 04:30:35.229116	2012-09-07 04:33:53.140177
3564	4	1022	в центре курортной зоны 	2012-09-07 04:30:35.21891	2012-09-07 04:58:02.981887
3567	7	1022	нет	2012-09-07 04:30:35.221623	2012-09-07 04:58:02.984323
3568	8	1022	кафе на территории	2012-09-07 04:30:35.222819	2012-09-07 04:58:02.985349
3571	11	1022	очень хорошее	2012-09-07 04:30:35.227	2012-09-07 04:58:02.986427
3574	1	461		2012-09-07 05:33:02.464339	2012-09-07 05:33:02.464339
3575	2	461		2012-09-07 05:33:02.466108	2012-09-07 05:33:02.466108
3577	4	461		2012-09-07 05:33:02.468873	2012-09-07 05:33:02.468873
3579	6	461		2012-09-07 05:33:02.471527	2012-09-07 05:33:02.471527
3580	7	461		2012-09-07 05:33:02.472655	2012-09-07 05:33:02.472655
3582	9	461		2012-09-07 05:33:02.474839	2012-09-07 05:33:02.474839
3583	10	461		2012-09-07 05:33:02.476095	2012-09-07 05:33:02.476095
3584	11	461		2012-09-07 05:33:02.477481	2012-09-07 05:33:02.477481
3585	12	461	О-00063	2012-09-07 05:33:02.478803	2012-09-07 05:33:54.221609
3586	13	461	ИП Капущенко Марина Викторовна	2012-09-07 05:33:02.479719	2012-09-07 05:33:54.222606
3576	3	461	7	2012-09-07 05:33:02.467489	2012-09-07 05:37:32.620645
3578	5	461	трансфер за доп. плату, гладильная, фен	2012-09-07 05:33:02.470274	2012-09-07 05:48:16.563041
3581	8	461	рядом кафе, столовая	2012-09-07 05:33:02.473558	2012-09-07 05:48:16.564841
3595	9	544		2012-09-08 10:32:17.350201	2012-09-08 10:32:17.350201
3598	13	544	ИП Николаева Яна Александровна	2012-09-08 10:32:17.353644	2012-09-08 10:34:12.350611
3599	12	544	О-00063/1	2012-09-08 10:32:17.354847	2012-09-08 10:34:12.351895
3590	4	544	пляж песчаный - 10-15 минут пляж галечный - 10-15 минут набережная - 12 минут центр города - 5 минут рынок - 10 минут магазин продукты - 3 минуты	2012-09-08 10:32:17.344292	2012-09-08 10:51:25.553953
3613	1	454	2-х/3-х разовое питание (450/600 рублей с человека в сутки)	2012-09-08 12:51:39.346761	2012-09-08 12:56:57.702526
3615	3	454	14	2012-09-08 12:51:39.349399	2012-09-08 12:56:57.70403
3587	1	544	нет	2012-09-08 10:32:17.3399	2012-09-08 11:07:22.971414
3588	2	544	нет	2012-09-08 10:32:17.341971	2012-09-08 11:07:22.972892
3589	3	544	5	2012-09-08 10:32:17.342968	2012-09-08 11:07:22.973961
3591	5	544	трансфер с ж.д.вокзала бесплатно, гладильная, организация экскурсий, мангал во дворе, летние беседки, столики во дворе	2012-09-08 10:32:17.345729	2012-09-08 11:07:22.97529
3592	6	544	10-15 минут	2012-09-08 10:32:17.347042	2012-09-08 11:07:22.97669
3593	7	544	нет	2012-09-08 10:32:17.34799	2012-09-08 11:07:22.978056
3594	8	544	нет	2012-09-08 10:32:17.349088	2012-09-08 11:07:22.979392
3596	10	544	посуда, микроволновая печь	2012-09-08 10:32:17.351141	2012-09-08 11:07:22.980724
3607	8	1198		2012-09-08 11:50:15.41827	2012-09-08 11:50:15.41827
3608	9	1198		2012-09-08 11:50:15.419706	2012-09-08 11:50:15.419706
3611	13	1198	ИП Синявская Галина Григорьевна	2012-09-08 11:50:15.42351	2012-09-08 11:53:15.480452
3612	12	1198	О-00064	2012-09-08 11:50:15.424941	2012-09-08 11:53:15.481505
3600	1	1198	нет	2012-09-08 11:50:15.407762	2012-09-08 12:05:38.268246
3601	2	1198	нет	2012-09-08 11:50:15.409473	2012-09-08 12:05:38.269715
3602	3	1198	12	2012-09-08 11:50:15.411121	2012-09-08 12:05:38.270962
3604	5	1198	Мангал, утюги, стиральная машина-автомат, места для отдыха во дворе, парковочные места перед домом	2012-09-08 11:50:15.413957	2012-09-08 12:05:38.272195
3606	7	1198	нет	2012-09-08 11:50:15.416839	2012-09-08 12:05:38.273441
3609	10	1198	Есть	2012-09-08 11:50:15.421073	2012-09-08 12:05:38.274741
3610	11	1198	Хорошее	2012-09-08 11:50:15.422446	2012-09-08 12:05:38.276047
3603	4	1198	В частном секторе	2012-09-08 11:50:15.412534	2012-09-08 12:20:39.189195
3605	6	1198	1200-1500 метров до пляжа	2012-09-08 11:50:15.415375	2012-09-08 12:20:39.19029
3616	4	454		2012-09-08 12:51:39.350396	2012-09-08 12:51:39.350396
3621	9	454		2012-09-08 12:51:39.355261	2012-09-08 12:51:39.355261
3622	10	454		2012-09-08 12:51:39.356181	2012-09-08 12:51:39.356181
3617	5	454	WiFi бесплатно, парковка, утюг, питьевой кулер, детская кроватка, за доп. плату: трансфер, сейфовые ячейки, массаж, салон красоты, прачечная, экскурсии, доставка авиа и ж.д. билетов	2012-09-08 12:51:39.3514	2012-09-08 12:56:57.705404
3624	13	454	ИП Сидоров Владислав Владимирович	2012-09-08 12:51:39.358246	2012-09-08 12:56:57.706551
3625	12	454	О-00065	2012-09-08 12:51:39.359196	2012-09-08 12:56:57.70761
3614	2	454	нет	2012-09-08 12:51:39.348393	2012-09-08 12:58:31.55355
3619	7	454	нет	2012-09-08 12:51:39.35336	2012-09-08 12:58:31.554812
3620	8	454	бар	2012-09-08 12:51:39.354335	2012-09-08 12:58:31.555781
3623	11	454	очень хорошее	2012-09-08 12:51:39.357277	2012-09-08 12:58:31.556783
3639	12	540	О-00066	2012-09-09 03:57:40.789637	2012-09-09 03:58:26.504402
3618	6	454	 До центрального песчаного пляжа 10-15 минут	2012-09-08 12:51:39.35234	2012-09-08 13:04:34.29389
3640	13	540	ИП Сидоров Владислав Владимирович	2012-09-09 03:57:40.791704	2012-09-09 03:58:26.506203
3646	6	540	до песчаного пляжа 15-18 минут пешком. 	2012-09-09 03:57:40.797615	2012-09-09 04:10:35.389795
3641	1	540		2012-09-09 03:57:40.792683	2012-09-09 03:57:40.792683
3642	2	540		2012-09-09 03:57:40.793634	2012-09-09 03:57:40.793634
3644	4	540		2012-09-09 03:57:40.795515	2012-09-09 03:57:40.795515
3648	8	540		2012-09-09 03:57:40.799859	2012-09-09 03:57:40.799859
3649	9	540		2012-09-09 03:57:40.800786	2012-09-09 03:57:40.800786
3643	3	540	11	2012-09-09 03:57:40.794565	2012-09-09 04:19:13.861918
3645	5	540	бесплатный WiFi на территории гостиницы; пользование питьевым кулером ( с горячей и холодной водой); парковка для автомобиля. За дополнительную плату: трансфер, массаж, парикмахерская, прачечная, доставка авиа и ж.д. билетов	2012-09-09 03:57:40.796433	2012-09-09 04:19:13.86301
3647	7	540	нет	2012-09-09 03:57:40.798922	2012-09-09 04:19:13.864164
3650	10	540	Кухня-столовая для самостоятельного приготовления пищи.	2012-09-09 03:57:40.801733	2012-09-09 04:19:13.865445
3651	11	540	очень хорошее	2012-09-09 03:57:40.802677	2012-09-09 04:19:13.866816
3657	4	450		2012-09-09 04:58:02.852661	2012-09-09 04:58:02.852661
3662	9	450		2012-09-09 04:58:02.858823	2012-09-09 04:58:02.858823
3663	10	450		2012-09-09 04:58:02.85986	2012-09-09 04:58:02.85986
3654	1	450	Питание 2-х/3-х разовое(450/600 руб) с человека в сутки	2012-09-09 04:58:02.849645	2012-09-09 05:17:53.099885
3659	6	450	300 метров до галечного пляжа « Малая Бухта»	2012-09-09 04:58:02.855299	2012-09-09 05:19:13.527752
3597	11	544	удовлетворительное 	2012-09-08 10:32:17.35225	2012-10-25 15:31:48.590185
3652	12	450	О-00067	2012-09-09 04:58:02.846819	2012-09-09 05:03:10.105058
3653	13	450	ИП Сидоров Владислав Владимирович	2012-09-09 04:58:02.848674	2012-09-09 05:03:10.106667
3656	3	450	26	2012-09-09 04:58:02.851516	2012-09-09 05:03:10.108002
3655	2	450	нет	2012-09-09 04:58:02.850574	2012-09-09 05:17:53.100963
3658	5	450	бесплатный WiFi в номере; утюг; питьевой кулер; парковка; детская кроватка. За дополнительную плату: трансфер, бар, сейф, массаж, парикмахерская, прачечная, экскурсии, доставка авиа и ж.д. билетов	2012-09-09 04:58:02.853903	2012-09-09 05:17:53.101987
3660	7	450	нет	2012-09-09 04:58:02.856827	2012-09-09 05:17:53.10295
3661	8	450	бар	2012-09-09 04:58:02.857787	2012-09-09 05:17:53.104119
3664	11	450	очень хорошее	2012-09-09 04:58:02.861044	2012-09-09 05:17:53.105052
3675	9	1008		2012-09-09 06:12:36.050106	2012-09-09 06:12:36.050106
3665	12	1008	О-00068	2012-09-09 06:12:36.038121	2012-09-09 06:15:46.10701
3666	13	1008	ИП Цулаева Людмила Владимировна	2012-09-09 06:12:36.039623	2012-09-09 06:15:46.108523
3669	3	1008	32	2012-09-09 06:12:36.042679	2012-09-09 06:15:46.109852
3668	2	1008	да, закрытый	2012-09-09 06:12:36.041752	2012-09-09 06:34:53.2487
3670	4	1008	центр курортной зоны города	2012-09-09 06:12:36.043819	2012-09-09 06:34:53.250021
3671	5	1008	сауна, интернет, тренаженый зал, парковка, трансфер, утюг, прачечная , мангал	2012-09-09 06:12:36.044928	2012-09-09 06:34:53.251335
3672	6	1008	50-100 метров	2012-09-09 06:12:36.046022	2012-09-09 06:34:53.252667
3673	7	1008	нет	2012-09-09 06:12:36.047361	2012-09-09 06:34:53.253997
3674	8	1008	Кафе, столовая, ресторан	2012-09-09 06:12:36.048704	2012-09-09 06:34:53.255334
3676	10	1008	нет	2012-09-09 06:12:36.051448	2012-09-09 06:34:53.256659
3677	11	1008	Хорошее	2012-09-09 06:12:36.0528	2012-09-09 06:34:53.257991
3667	1	1008	Комплексное питание 600 рублей в день.	2012-09-09 06:12:36.040782	2012-09-09 06:39:24.837123
3683	4	437		2012-09-09 07:53:40.759503	2012-09-09 07:53:40.759503
3688	9	437		2012-09-09 07:53:40.765223	2012-09-09 07:53:40.765223
3678	12	437	О-00069	2012-09-09 07:53:40.753941	2012-09-09 08:01:50.351126
3679	13	437	ИП Агаджанян Левик Тигранович	2012-09-09 07:53:40.75512	2012-09-09 08:15:13.315929
3685	6	437	пляж   "Высокий берег"- 10-15 минут, до песчанного пляжа - 20 минут пешком	2012-09-09 07:53:40.762384	2012-09-09 08:18:45.67891
3680	1	437	возможно	2012-09-09 07:53:40.756188	2012-09-09 08:27:10.828715
3681	2	437	нет	2012-09-09 07:53:40.757327	2012-09-09 08:27:10.830021
3684	5	437	трансфер, крытый двор	2012-09-09 07:53:40.760895	2012-09-09 08:27:10.831163
3687	8	437	рядом столовая и кафе	2012-09-09 07:53:40.764253	2012-09-09 08:27:10.832082
3689	10	437	есть	2012-09-09 07:53:40.766351	2012-09-09 08:27:10.833081
3682	3	437	15	2012-09-09 07:53:40.758406	2012-09-09 08:34:39.126827
3686	7	437	нет	2012-09-09 07:53:40.763334	2012-09-09 08:34:39.127938
3690	11	437	хорошее	2012-09-09 07:53:40.767815	2012-09-09 08:34:39.128874
3698	6	523		2012-09-09 10:58:09.518446	2012-09-09 10:58:09.518446
3701	9	523		2012-09-09 10:58:09.522155	2012-09-09 10:58:09.522155
3692	13	523	ООО "Отель "Де ла Мапа"	2012-09-09 10:58:09.509876	2012-09-09 11:29:02.265887
3693	1	523	завтрак, либо "шведский стол"	2012-09-09 10:58:09.511282	2012-09-09 11:29:02.268227
3694	2	523	Открытый бассейн с пресной водой	2012-09-09 10:58:09.512703	2012-09-09 11:29:02.270506
3695	3	523	107	2012-09-09 10:58:09.51421	2012-09-09 11:29:02.272073
3696	4	523	Центральна часть города	2012-09-09 10:58:09.515667	2012-09-09 11:29:02.273569
3697	5	523	утюг, чайник, фен, автостоянка	2012-09-09 10:58:09.517065	2012-09-09 11:29:02.275235
3699	7	523	детская комната	2012-09-09 10:58:09.519512	2012-09-09 11:29:02.277522
3700	8	523	Кафе "Де ла Мапа"; Бар у бассейна	2012-09-09 10:58:09.520731	2012-09-09 11:29:02.279885
3702	10	523	нет	2012-09-09 10:58:09.52342	2012-09-09 11:29:02.282578
3703	11	523	Очень хорошее	2012-09-09 10:58:09.524365	2012-09-09 11:29:02.284908
3704	12	420		2012-09-09 17:12:30.02571	2012-09-09 17:12:30.02571
3705	13	420		2012-09-09 17:12:30.028339	2012-09-09 17:12:30.028339
3706	1	420		2012-09-09 17:12:30.029618	2012-09-09 17:12:30.029618
3707	2	420		2012-09-09 17:12:30.030951	2012-09-09 17:12:30.030951
3708	3	420		2012-09-09 17:12:30.032212	2012-09-09 17:12:30.032212
3709	4	420		2012-09-09 17:12:30.033502	2012-09-09 17:12:30.033502
3710	5	420		2012-09-09 17:12:30.034809	2012-09-09 17:12:30.034809
3711	6	420		2012-09-09 17:12:30.035877	2012-09-09 17:12:30.035877
3712	7	420		2012-09-09 17:12:30.036834	2012-09-09 17:12:30.036834
3713	8	420		2012-09-09 17:12:30.037999	2012-09-09 17:12:30.037999
3714	9	420		2012-09-09 17:12:30.039051	2012-09-09 17:12:30.039051
3715	10	420		2012-09-09 17:12:30.039997	2012-09-09 17:12:30.039997
3716	11	420		2012-09-09 17:12:30.040927	2012-09-09 17:12:30.040927
3725	7	1006		2012-09-12 15:47:09.838435	2012-09-12 15:47:09.838435
3727	9	1006		2012-09-12 15:47:09.841493	2012-09-12 15:47:09.841493
3728	10	1006		2012-09-12 15:47:09.843245	2012-09-12 15:47:09.843245
3717	12	1006	О-00071	2012-09-12 15:47:09.826286	2012-09-12 15:53:09.668007
3718	13	1006	ИП Агджоян Славик Рафикович	2012-09-12 15:47:09.827996	2012-09-12 15:53:09.670033
3730	12	1094	О-00074	2012-09-12 17:31:37.197942	2012-09-13 05:15:04.164785
3719	1	1006	заказное меню в летнем кафе	2012-09-12 15:47:09.82952	2012-11-12 06:57:09.658361
3740	9	1094		2012-09-12 17:31:37.216674	2012-09-12 17:31:37.216674
3731	13	1094	ООО "37 Меридиан"	2012-09-12 17:31:37.200304	2012-09-13 05:15:04.167238
3735	4	1094	10 м до прогулочной набережной «Паралия»: сувенирные лавочки, парк аттракционов, кафе, рестораны, ночные клубы	2012-09-12 17:31:37.208277	2012-09-13 06:15:25.676564
3733	2	1094	открытый бассейн с детской зоной. Вода в бассейне пресная.  Бассейн работает с 8:00 до 24:00, бесплатно: шезлонги и навесы.	2012-09-12 17:31:37.204494	2012-09-13 05:15:04.170267
3734	3	1094	100	2012-09-12 17:31:37.206429	2012-09-13 05:15:04.171816
3739	8	1094	Ресторан "Берлога", лобби-бар, бар у бассейна, кальянная	2012-09-12 17:31:37.215236	2012-09-13 05:30:05.501208
3741	10	1094	нет	2012-09-12 17:31:37.218194	2012-09-13 05:30:05.503919
3738	7	1094	детская горка в бассейне	2012-09-12 17:31:37.213764	2012-09-13 06:15:25.678124
3742	11	1094	очень хорошее	2012-09-12 17:31:37.219698	2012-09-13 06:15:25.679404
3720	2	1006	Два открытых бассейна с подогревом - взрослый (17х7м), детский (4х6м). Посещение бассейна для гостей отеля - бесплатно. 	2012-09-12 15:47:09.830734	2012-11-12 06:51:23.602523
3691	12	523	О-00072	2012-09-09 10:58:09.50805	2012-12-19 10:25:28.86545
3737	6	1094	250 метров до пляжа	2012-09-12 17:31:37.211647	2012-09-13 05:15:04.173193
3736	5	1094	WiFi в холле, СПА комплекс: тренажерный зал, сауна и турецкая баня, фито-бар	2012-09-12 17:31:37.210018	2012-09-13 05:46:55.975268
3732	1	1094	Завтрак «шведский стол" входит в стоимость номера. Полный пансион «Шведский стол» с 01.06.2012г. по 30.09.2012г., оплачивается по усмотрению гостя. Ориентировочная стоимость обеда и ужина 500 руб. с человека	2012-09-12 17:31:37.201838	2012-09-13 05:52:43.499385
3748	4	683		2012-09-13 06:19:33.942725	2012-09-13 06:19:33.942725
3751	7	683		2012-09-13 06:19:33.946872	2012-09-13 06:19:33.946872
3752	8	683		2012-09-13 06:19:33.948556	2012-09-13 06:19:33.948556
3753	9	683		2012-09-13 06:19:33.95007	2012-09-13 06:19:33.95007
3743	12	683	О-00075	2012-09-13 06:19:33.934959	2012-09-13 06:52:26.492406
3744	13	683	ИП Дмитриади Константин Николаевич	2012-09-13 06:19:33.936788	2012-09-13 06:52:26.495028
3746	2	683	нет	2012-09-13 06:19:33.940132	2012-09-13 06:54:00.209647
3770	13	637	ИП Гуржиева Людмила Викторовна	2012-09-15 05:28:12.536745	2012-09-15 05:54:57.695316
3755	11	683	очень хорошее	2012-09-13 06:19:33.953289	2012-09-13 06:54:00.212429
3745	1	683	нет	2012-09-13 06:19:33.938265	2012-09-14 04:44:00.272497
3747	3	683	19	2012-09-13 06:19:33.941439	2012-09-14 04:44:00.274425
3749	5	683	трансфер	2012-09-13 06:19:33.944031	2012-09-14 04:44:00.275962
3750	6	683	70 метров, включая лестницу	2012-09-13 06:19:33.945414	2012-09-14 04:44:00.277234
3754	10	683	нет	2012-09-13 06:19:33.951799	2012-09-14 04:44:00.278547
3766	9	602		2012-09-14 04:47:06.645226	2012-09-14 04:47:06.645226
3763	6	602	собственный оборудованный песчаный пляж в 300 метрах с шезлонгами и зонтами.	2012-09-14 04:47:06.642156	2012-09-15 04:43:19.610264
3771	1	637	нет	2012-09-15 05:28:12.538064	2012-09-15 06:12:41.648282
3767	10	602	нет	2012-09-14 04:47:06.646371	2012-09-15 04:43:19.613207
3756	12	602	О-00076	2012-09-14 04:47:06.631594	2012-09-15 04:46:24.682705
3757	13	602	ИП Халкиди София Леонидовна	2012-09-14 04:47:06.633242	2012-09-15 04:46:24.684431
3758	1	602	завтрак 100 руб. обед 230 руб. ужин 170 руб.	2012-09-14 04:47:06.634965	2012-09-15 04:54:58.840403
3759	2	602	с подогревом воды, с детским и взрослым отделением.	2012-09-14 04:47:06.63637	2012-09-15 04:54:58.842139
3760	3	602	32	2012-09-14 04:47:06.637744	2012-09-15 04:54:58.843436
3761	4	602	в центре поселка	2012-09-14 04:47:06.639261	2012-09-15 04:54:58.844663
3775	5	637	трансфер (платно), стиральная машинка (платно), гладильная + утюг, Wi-Fi, СВЧ, летняя беседка, мангал, сауна, стоянка	2012-09-15 05:28:12.54291	2012-09-15 06:12:41.649936
3764	7	602	детский городок	2012-09-14 04:47:06.643224	2012-09-15 04:54:58.847151
3765	8	602	кафе-столовая “Золотое руно”, кафе-бар, барбекю	2012-09-14 04:47:06.644265	2012-09-15 04:54:58.84839
3768	11	602	хорошее	2012-09-14 04:47:06.647704	2012-09-15 04:54:58.849638
3774	4	637		2012-09-15 05:28:12.541954	2012-09-15 05:28:12.541954
3779	9	637		2012-09-15 05:28:12.548197	2012-09-15 05:28:12.548197
3762	5	602	трансфер, автостоянка, WiFi	2012-09-14 04:47:06.640639	2012-09-15 05:30:36.127399
3772	2	637	нет	2012-09-15 05:28:12.53938	2012-09-15 05:45:31.897863
3776	6	637	25 минут пешком до пляжа	2012-09-15 05:28:12.544216	2012-09-15 05:45:31.90131
3778	8	637	столовая 3х-разовое питание - 350р.	2012-09-15 05:28:12.546878	2012-09-15 05:45:31.902763
3780	10	637	общая кухня для самостоятельного приготовления пищи	2012-09-15 05:28:12.549706	2012-09-15 05:45:31.904312
3791	8	1065	нет	2012-09-15 06:48:41.675998	2012-09-15 11:34:44.05209
3769	12	637	О-00077	2012-09-15 05:28:12.535016	2012-09-15 05:53:57.946596
3773	3	637	14	2012-09-15 05:28:12.540552	2012-09-15 05:53:57.94807
3777	7	637	нет	2012-09-15 05:28:12.545544	2012-09-15 05:53:57.949368
3781	11	637	хорошее	2012-09-15 05:28:12.55108	2012-09-15 05:53:57.950659
3787	4	1065		2012-09-15 06:48:41.670519	2012-09-15 06:48:41.670519
3792	9	1065		2012-09-15 06:48:41.677148	2012-09-15 06:48:41.677148
3782	12	1065	О-00078	2012-09-15 06:48:41.662721	2012-09-15 11:08:59.417701
3783	13	1065	ИП Аманатов Элгуджа Саввич	2012-09-15 06:48:41.664847	2012-09-15 11:08:59.419174
3793	10	1065	 Кухня с набором посуды, холодильник (самостоятельное приготовление пищи)	2012-09-15 06:48:41.678545	2012-09-15 11:34:44.053431
3785	2	1065	детский	2012-09-15 06:48:41.66767	2012-09-15 12:07:17.442754
3788	5	1065	трансфер, двор с местами для отдыха, зонты, столики, палисадник, мангал, автостоянка.	2012-09-15 06:48:41.671862	2012-09-15 12:07:17.444303
3789	6	1065	15 минут пешком	2012-09-15 06:48:41.673181	2012-09-15 12:07:17.445553
3794	11	1065	хорошее	2012-09-15 06:48:41.679763	2012-09-15 11:08:59.427028
3798	2	555	открытый двухзонный бассейн с подогревом воды	2012-09-15 12:12:22.625985	2012-09-15 13:42:56.394365
3784	1	1065	нет	2012-09-15 06:48:41.666269	2012-09-15 11:31:53.556275
3786	3	1065	5	2012-09-15 06:48:41.669026	2012-09-15 11:31:53.558574
3799	3	555	42	2012-09-15 12:12:22.627109	2012-09-15 13:42:56.395979
3801	5	555	сейф-депозитарий и городской телефон у администратора, трансферт, экскурсии, настольный теннис. парковка автомобилей за территорией отеля вдоль забора, беседка, качели	2012-09-15 12:12:22.629802	2012-09-15 13:42:56.397437
3790	7	1065		2012-09-15 06:48:41.674547	2012-09-15 11:31:53.564629
3802	6	555	350 метров	2012-09-15 12:12:22.630956	2012-09-15 13:42:56.398811
3803	7	555	игровая комната и площадка	2012-09-15 12:12:22.632413	2012-09-15 13:42:56.400165
3807	11	555	очень хорошее	2012-09-15 12:12:22.637672	2012-09-15 13:55:12.402655
3800	4	555		2012-09-15 12:12:22.628452	2012-09-15 12:12:22.628452
3805	9	555		2012-09-15 12:12:22.635169	2012-09-15 12:12:22.635169
3806	10	555		2012-09-15 12:12:22.636343	2012-09-15 12:12:22.636343
3795	12	555	О-00079	2012-09-15 12:12:22.622105	2012-09-15 13:42:56.388807
3796	13	555	ИП Цой Ирина Николаевна	2012-09-15 12:12:22.623848	2012-09-15 13:42:56.391283
3797	1	555	550 рублей при оплате за весь период отдыха, в розницу-650руб.(3-х разовое комплексное)	2012-09-15 12:12:22.624838	2012-09-15 13:42:56.392781
3804	8	555	В стоимость входит: проживание и 3-х разовое питание	2012-09-15 12:12:22.633856	2012-09-15 19:01:14.99676
3818	9	1035		2012-09-15 19:12:18.190109	2012-09-15 19:12:18.190109
3808	12	1035	О-00080	2012-09-15 19:12:18.175675	2012-09-15 19:24:38.332265
3809	13	1035	ИП Цой Ирина Николаевна	2012-09-15 19:12:18.177373	2012-09-15 19:24:38.333419
3810	1	1035	Завтрак (комплексный) входит в стоимость проживания. По желанию дополнительно оплачивается полу-пансион. 	2012-09-15 19:12:18.178805	2012-09-15 19:24:38.334626
3811	2	1035	есть	2012-09-15 19:12:18.180161	2012-09-15 19:24:38.33586
3812	3	1035	23	2012-09-15 19:12:18.181546	2012-09-15 19:24:38.337008
3813	4	1035	в тихом дворике, выйдя из которого вы попадаете в кипящую курортную Анапу	2012-09-15 19:12:18.18298	2012-09-15 19:24:38.338327
3814	5	1035	Сауна, бассейн, бильярд, организация экскурсий.	2012-09-15 19:12:18.184416	2012-09-15 19:24:38.339502
3815	6	1035	300 метров	2012-09-15 19:12:18.185883	2012-09-15 19:24:38.340798
3816	7	1035	нет	2012-09-15 19:12:18.187343	2012-09-15 19:24:38.342078
3817	8	1035	кафе Театральное, которое находится в 2-х минутах ходьбы от отеля. 	2012-09-15 19:12:18.188703	2012-09-15 19:24:38.343214
3819	10	1035	кухня для самостоятельного приготовления пищи	2012-09-15 19:12:18.191491	2012-09-15 19:24:38.344792
3820	11	1035	хорошее	2012-09-15 19:12:18.192911	2012-09-15 19:24:38.346044
3823	1	603		2012-09-15 19:54:28.243213	2012-09-15 19:54:28.243213
3825	3	603		2012-09-15 19:54:28.245841	2012-09-15 19:54:28.245841
3826	4	603		2012-09-15 19:54:28.247294	2012-09-15 19:54:28.247294
3827	5	603		2012-09-15 19:54:28.248584	2012-09-15 19:54:28.248584
3829	7	603		2012-09-15 19:54:28.251238	2012-09-15 19:54:28.251238
3830	8	603		2012-09-15 19:54:28.252714	2012-09-15 19:54:28.252714
3831	9	603		2012-09-15 19:54:28.254013	2012-09-15 19:54:28.254013
3832	10	603		2012-09-15 19:54:28.255342	2012-09-15 19:54:28.255342
3833	11	603		2012-09-15 19:54:28.256473	2012-09-15 19:54:28.256473
3821	12	603	О-00081	2012-09-15 19:54:28.239785	2012-09-15 20:05:53.812626
3822	13	603	ИП Цой Ирина Николаевна	2012-09-15 19:54:28.241757	2012-09-15 20:05:53.814091
3824	2	603	нет	2012-09-15 19:54:28.244524	2012-09-15 20:05:53.815584
3828	6	603	до пляжа 550 м	2012-09-15 19:54:28.249787	2012-09-15 20:05:53.816965
3844	9	633		2012-09-16 04:14:16.694993	2012-09-16 04:14:16.694993
3845	10	633		2012-09-16 04:14:16.69594	2012-09-16 04:14:16.69594
3834	12	633	О-00082	2012-09-16 04:14:16.684153	2012-09-16 04:33:55.288927
3835	13	633	ИП Сотирова Оксана Алексеевна	2012-09-16 04:14:16.685366	2012-09-16 04:33:55.290715
3873	12	645	О-00085	2012-09-18 15:44:37.639883	2012-09-18 15:45:31.918573
3837	2	633	нет	2012-09-16 04:14:16.687396	2012-09-16 04:33:55.294016
3838	3	633	12	2012-09-16 04:14:16.688336	2012-09-16 04:33:55.295751
3839	4	633	Мини-гостиница "АДАМАС" находится в 20 минутах ходьбы от моря и в 900 м от лимана.	2012-09-16 04:14:16.689278	2012-09-16 04:33:55.296875
3862	1	853	Возможно	2012-09-16 06:17:38.281031	2012-09-16 06:40:59.569782
3841	6	633	1000 метров	2012-09-16 04:14:16.691446	2012-09-16 04:33:55.29991
3843	8	633	столовая	2012-09-16 04:14:16.694012	2012-09-16 04:33:55.301376
3863	2	853	нет	2012-09-16 06:17:38.282328	2012-09-16 06:40:59.571274
3864	3	853	15	2012-09-16 06:17:38.283747	2012-09-16 06:40:59.572326
3846	11	633	хорошее	2012-09-16 04:14:16.697135	2012-09-16 04:38:25.343298
3836	1	633	3-х разовое питание - 380 руб. в сутки. На территории мини-гостиницы имеются две столовые. 	2012-09-16 04:14:16.686444	2012-09-16 04:54:12.328897
3840	5	633	курсовки в санаторий "Аквамарин",Wi-Fi, стоянка, трансфер, экскурсии 	2012-09-16 04:14:16.690343	2012-09-16 04:54:12.330768
3842	7	633	есть	2012-09-16 04:14:16.692817	2012-09-16 04:54:12.332359
3852	4	990		2012-09-16 05:07:06.86157	2012-09-16 05:07:06.86157
3855	7	990		2012-09-16 05:07:06.865659	2012-09-16 05:07:06.865659
3857	9	990		2012-09-16 05:07:06.868264	2012-09-16 05:07:06.868264
3859	11	990		2012-09-16 05:07:06.87083	2012-09-16 05:07:06.87083
3847	12	990	О-00083	2012-09-16 05:07:06.855554	2012-09-16 05:51:26.552833
3848	13	990	ИП Кашфразиева Инга Сергеевна	2012-09-16 05:07:06.856748	2012-09-16 05:51:26.554829
3849	1	990	Завтрак входит в стоимость проживания, обед и ужин - за доп. плату	2012-09-16 05:07:06.857729	2012-09-16 05:59:06.523954
3851	3	990	18	2012-09-16 05:07:06.860172	2012-09-16 05:59:06.525806
3866	5	853	Мангал, детская площадка, качели, песочница, русская баня на дровах, группа «Здоровье», походы	2012-09-16 06:17:38.286616	2012-09-16 06:40:59.573253
3853	5	990	бассейн с гидромассажем и гейзером; трансфер,  Wi-Fi; настольный теннис; тренажерный зал; шахматы, шашки, нарды; автостоянка, трансфер до моря; заказ такси.	2012-09-16 05:07:06.862977	2012-09-16 05:59:58.627368
3850	2	990	есть	2012-09-16 05:07:06.858732	2012-09-16 06:04:30.021472
3854	6	990	1500 метров	2012-09-16 05:07:06.86437	2012-09-16 06:04:30.022883
3856	8	990	кафе (домашняя кухня), бар; караоке;	2012-09-16 05:07:06.866971	2012-09-16 06:04:30.024095
3858	10	990	нет	2012-09-16 05:07:06.869544	2012-09-16 06:04:30.025007
3860	12	853	О-00084	2012-09-16 06:17:38.277752	2012-09-16 06:17:38.277752
3861	13	853	ИП Вильдин Владимир Валерьевич	2012-09-16 06:17:38.279717	2012-09-16 06:17:38.279717
3865	4	853		2012-09-16 06:17:38.285121	2012-09-16 06:17:38.285121
3869	8	853		2012-09-16 06:17:38.29063	2012-09-16 06:17:38.29063
3870	9	853		2012-09-16 06:17:38.292058	2012-09-16 06:17:38.292058
3867	6	853	25-30 минут	2012-09-16 06:17:38.287978	2012-09-16 06:40:59.574319
3868	7	853	есть	2012-09-16 06:17:38.289271	2012-09-16 06:40:59.57522
3871	10	853	Газовая плита, Микроволновая печь, Холодильник, Электрочайник, Посуда для приготовления пищи, Столовые приборы, Обеденный стол, Стулья	2012-09-16 06:17:38.29351	2012-09-16 06:40:59.57614
3872	11	853	хорошее	2012-09-16 06:17:38.294928	2012-09-16 06:40:59.577066
3882	8	645		2012-09-18 15:44:37.649751	2012-09-18 15:44:37.649751
3883	9	645		2012-09-18 15:44:37.651095	2012-09-18 15:44:37.651095
3884	10	645		2012-09-18 15:44:37.652463	2012-09-18 15:44:37.652463
3874	13	645	ИП Лоизиди Анна Ивановна	2012-09-18 15:44:37.641413	2012-09-18 15:45:31.919625
3875	1	645	столовая - 2х-разовое питание - 400 руб.	2012-09-18 15:44:37.642435	2012-09-18 16:02:18.330507
3876	2	645	нет	2012-09-18 15:44:37.643584	2012-09-18 16:02:18.33206
3877	3	645	10	2012-09-18 15:44:37.644877	2012-09-18 16:02:18.333385
3878	4	645	центр развлечений - 15 минут, аквапарк - 10 минут (на маршрутке), рынок - 10 минут, магазин продукты - 7 минут, остановка маршрутки - 7 минут	2012-09-18 15:44:37.645878	2012-09-18 16:02:18.334662
3879	5	645	парковка, трансфер (платно), прачечная (платно), гладильная + утюг, сауна, летняя беседка, мангал во двор, экскурсии, wi-fi	2012-09-18 15:44:37.646809	2012-09-18 16:02:18.335981
3880	6	645	пляж песчаный - 20-25 минут пешком	2012-09-18 15:44:37.647749	2012-09-18 16:02:18.337293
3881	7	645	качели	2012-09-18 15:44:37.648694	2012-09-18 16:02:18.338632
3885	11	645	хорошее	2012-09-18 15:44:37.653407	2012-09-18 16:02:18.33993
3893	6	1046	в 950 метрах от городского песчаного и галечного пляжей.	2012-09-18 16:36:47.952112	2012-09-18 16:36:47.952112
3896	9	1046		2012-09-18 16:36:47.95634	2012-09-18 16:36:47.95634
3886	12	1046	О-00086	2012-09-18 16:36:47.941486	2012-09-18 16:49:22.478257
3887	13	1046	ООО "Гостиница "Европа"	2012-09-18 16:36:47.94305	2012-09-18 16:49:22.479652
3889	2	1046	есть	2012-09-18 16:36:47.946056	2012-09-18 16:49:22.480892
3925	12	1201	О-00089	2012-09-21 06:12:38.538059	2012-09-21 07:46:55.492662
3894	7	1046	детская игровая комната 	2012-09-18 16:36:47.953506	2012-09-20 07:04:46.190784
3895	8	1046	ресторан «Европа», бар, детское меню 	2012-09-18 16:36:47.954847	2012-09-20 07:04:46.19311
3897	10	1046	нет	2012-09-18 16:36:47.957717	2012-09-20 07:04:46.194644
3888	1	1046	питание в ресторане «Европа» входит в стоимость номера	2012-09-18 16:36:47.944515	2012-09-20 07:29:25.786986
3890	3	1046	29	2012-09-18 16:36:47.947663	2012-09-20 07:29:25.788409
3891	4	1046	категории 4-звезды, расположен в центре города-курорта Анапа, в 10 минутах ходьбы от песчаного пляжа и городского парка, различных зон отдыха	2012-09-18 16:36:47.949336	2012-09-20 07:29:25.789688
3892	5	1046	WiFi, боулинг, бильярд, парикмахерская, магазин, организация экскурсий, тренажерный зал, сауна, студия красоты, лечение, автостоянка, room-service, сейф, услуги прачечной,  экскурсии,  морские прогулки, трансфер	2012-09-18 16:36:47.950749	2012-09-20 07:33:04.545923
3898	11	1046	очень хорошее	2012-09-18 16:36:47.959342	2012-09-20 07:33:27.064967
3901	1	1200		2012-09-20 08:30:45.622424	2012-09-20 08:30:45.622424
3904	4	1200		2012-09-20 08:30:45.626195	2012-09-20 08:30:45.626195
3908	8	1200		2012-09-20 08:30:45.630964	2012-09-20 08:30:45.630964
3909	9	1200		2012-09-20 08:30:45.632244	2012-09-20 08:30:45.632244
3899	12	1200	О-00087	2012-09-20 08:30:45.619493	2012-09-20 15:48:17.589317
3900	13	1200	ИП Чиликиди Анжела Станиславовна	2012-09-20 08:30:45.621107	2012-09-20 15:48:17.590808
3902	2	1200	нет	2012-09-20 08:30:45.623712	2012-09-20 15:48:17.592109
3903	3	1200	21	2012-09-20 08:30:45.62494	2012-09-20 15:48:17.59343
3905	5	1200	автостоянка, трансфер, утюг	2012-09-20 08:30:45.627199	2012-09-20 15:48:17.594767
3906	6	1200	400-500 метров	2012-09-20 08:30:45.628225	2012-09-20 15:48:17.596065
3907	7	1200	есть	2012-09-20 08:30:45.629639	2012-09-20 15:48:17.597731
3910	10	1200	кухня для самостоятельного приготовления пищи	2012-09-20 08:30:45.633528	2012-09-20 15:48:17.599076
3911	11	1200	хорошее	2012-09-20 08:30:45.63461	2012-09-20 15:48:17.600517
3921	8	1069		2012-09-20 16:21:00.164992	2012-09-20 16:21:00.164992
3922	9	1069		2012-09-20 16:21:00.166135	2012-09-20 16:21:00.166135
3919	6	1069	в 20 минутах ходьбы от песчаного пляжа, организована (бесплатно) доставка к пляжу 2 раза в день	2012-09-20 16:21:00.162714	2012-09-21 05:31:18.913179
3912	12	1069	О-00088	2012-09-20 16:21:00.153738	2012-09-21 05:45:08.863069
3913	13	1069	ИП Базоев Владимир Теймуразович	2012-09-20 16:21:00.15533	2012-09-21 05:45:08.86466
3914	1	1069	возможна организация питания (3-разовое питание)	2012-09-20 16:21:00.156723	2012-09-21 05:45:08.866013
3915	2	1069	нет	2012-09-20 16:21:00.158111	2012-09-21 05:45:08.867288
3916	3	1069	35	2012-09-20 16:21:00.159454	2012-09-21 05:45:08.868689
3917	4	1069	пляж песчаный - 30 минут, центр развлечений - 20 минут, аквапарк - 15 минут на маршрутке, рынок - 5 минут магазин, продукты - 5 минут, остановка маршрутки - 5 минут	2012-09-20 16:21:00.160534	2012-09-21 05:45:08.870219
3918	5	1069	трансфер (встреча- бесплатно), организация экскурсий, утюг, прачечная, WiFi (платно)	2012-09-20 16:21:00.161489	2012-09-21 05:45:08.871569
3920	7	1069	есть	2012-09-20 16:21:00.164033	2012-09-21 05:45:08.872877
3923	10	1069	общая кухня для самостоятельного приготовления пищи	2012-09-20 16:21:00.167168	2012-09-21 05:45:08.874397
3924	11	1069	хорошее	2012-09-20 16:21:00.168128	2012-09-21 05:45:08.875737
3928	2	1201		2012-09-21 06:12:38.542868	2012-09-21 06:12:38.542868
3930	4	1201		2012-09-21 06:12:38.545247	2012-09-21 06:12:38.545247
3931	5	1201		2012-09-21 06:12:38.546494	2012-09-21 06:12:38.546494
3932	6	1201		2012-09-21 06:12:38.547739	2012-09-21 06:12:38.547739
3933	7	1201		2012-09-21 06:12:38.548881	2012-09-21 06:12:38.548881
3934	8	1201		2012-09-21 06:12:38.550029	2012-09-21 06:12:38.550029
3935	9	1201		2012-09-21 06:12:38.551159	2012-09-21 06:12:38.551159
3936	10	1201		2012-09-21 06:12:38.552302	2012-09-21 06:12:38.552302
3937	11	1201		2012-09-21 06:12:38.553438	2012-09-21 06:12:38.553438
3926	13	1201	ИП Тищенко Владимир Павлович	2012-09-21 06:12:38.54002	2012-09-21 07:46:55.521565
3927	1	1201	возможно организация питания	2012-09-21 06:12:38.541595	2012-09-21 07:46:55.546652
3929	3	1201	15	2012-09-21 06:12:38.544119	2012-09-21 07:46:55.547974
3948	9	1202		2012-09-22 16:31:17.859482	2012-09-22 16:31:17.859482
3938	12	1202	О-00090	2012-09-22 16:31:17.847778	2012-09-22 16:52:55.194172
3939	13	1202	ИП Колесникова Елена Семеновна	2012-09-22 16:31:17.849183	2012-09-22 16:52:55.19574
3951	12	1203	О-00091	2012-09-22 18:30:25.590341	2012-09-22 19:09:52.140451
3941	2	1202	есть	2012-09-22 16:31:17.851086	2012-09-22 16:52:55.198418
3942	3	1202	43	2012-09-22 16:31:17.852026	2012-09-22 16:52:55.199763
3944	5	1202	сауна, шезлонги, трансфер на море 2 раза в день (галечный пляж, песчаный пляж), доступ в интернет,автостоянка. 	2012-09-22 16:31:17.85399	2012-09-22 16:52:55.201092
3945	6	1202	30 минут пешком	2012-09-22 16:31:17.855397	2012-09-22 16:52:55.20246
3946	7	1202	есть	2012-09-22 16:31:17.857044	2012-09-22 16:52:55.203837
3947	8	1202	Кафе “Ретро”	2012-09-22 16:31:17.858254	2012-09-22 16:52:55.205145
3949	10	1202	нет	2012-09-22 16:31:17.860837	2012-09-22 16:52:55.206485
3950	11	1202	очень хорошее	2012-09-22 16:31:17.861826	2012-09-22 16:52:55.207798
3943	4	1202	Расположен в новом районе г.Анапа	2012-09-22 16:31:17.853012	2012-09-22 17:00:36.242882
3940	1	1202	1.05-30.09 в стоимость номера включен завтрак. Комплексные обеды или на заказ 	2012-09-22 16:31:17.850148	2012-09-22 17:38:09.841653
3961	9	1203		2012-09-22 18:30:25.608188	2012-09-22 18:30:25.608188
3952	13	1203	ИП Пентериди Светлана Владимировна	2012-09-22 18:30:25.592163	2012-09-22 19:09:52.141984
3955	3	1203	12	2012-09-22 18:30:25.598201	2012-09-22 19:09:52.144682
3954	2	1203	детский	2012-09-22 18:30:25.596625	2012-09-22 19:13:51.152787
3959	7	1203	есть	2012-09-22 18:30:25.605205	2012-09-22 19:13:51.155461
3960	8	1203	кафе	2012-09-22 18:30:25.606734	2012-09-22 19:13:51.156868
3962	10	1203	нет	2012-09-22 18:30:25.609904	2012-09-22 19:16:16.757466
3956	4	1203	частный сектор	2012-09-22 18:30:25.60003	2012-09-23 04:17:11.783658
4156	9	620		2012-10-31 05:59:45.778208	2012-10-31 05:59:45.778208
4155	8	620	кафе	2012-10-31 05:59:45.777229	2012-10-31 06:21:09.943265
3958	6	1203	700 метров	2012-09-22 18:30:25.603417	2012-09-22 19:09:52.147373
3963	11	1203	очень хорошее	2012-09-22 18:30:25.611341	2012-09-22 19:09:52.148606
3953	1	1203	возможно организация питания (домашняя кухня по желанию клиента обсуждается меню кафе на территории).	2012-09-22 18:30:25.59498	2012-09-22 19:13:51.151286
3957	5	1203	столики для отдыха; беседка; мангал, WI-FI, организация детских праздников и дней рождения, бесплатно ежедневно трансферт на пляж, трансферт	2012-09-22 18:30:25.601544	2012-09-22 19:13:51.154147
3964	12	1102	О-00093	2012-09-23 05:05:44.134044	2012-09-23 05:05:44.134044
3965	13	1102	ИП Шибанов Игорь Юрьевич	2012-09-23 05:05:44.135809	2012-09-23 05:05:44.135809
3967	2	1102	нет	2012-09-23 05:05:44.138651	2012-09-23 05:05:44.138651
3969	4	1102	коттеджный поселок в районе Джемете	2012-09-23 05:05:44.14169	2012-09-23 05:05:44.14169
3971	6	1102	900 метров до песчанного пляжа	2012-09-23 05:05:44.144494	2012-09-23 05:05:44.144494
3973	8	1102	нет	2012-09-23 05:05:44.147563	2012-09-23 05:05:44.147563
3974	9	1102		2012-09-23 05:05:44.149175	2012-09-23 05:05:44.149175
3966	1	1102	нет	2012-09-23 05:05:44.137196	2012-09-23 05:12:36.226796
3968	3	1102	8	2012-09-23 05:05:44.140172	2012-09-23 05:12:36.228479
3996	5	1204	трансфер, автопарковка, трансфер (платно), стиральная машинка (бесплатно), гладильная + утюг, СВЧ (на кухне), летняя беседка, мангал во дворе	2012-09-30 04:44:16.286861	2012-09-30 05:13:51.572294
3972	7	1102	есть	2012-09-23 05:05:44.145949	2012-09-23 05:12:36.231193
3975	10	1102	кухня общего пользования	2012-09-23 05:05:44.150843	2012-09-23 05:12:36.232543
3976	11	1102	хорошее	2012-09-23 05:05:44.152386	2012-09-23 05:12:36.233896
3970	5	1102	настольный теннис, бассейн детский, мангал, парковка	2012-09-23 05:05:44.143102	2012-09-23 05:34:43.982393
3986	8	775		2012-09-23 05:55:32.725196	2012-09-23 05:55:32.725196
3987	9	775		2012-09-23 05:55:32.72662	2012-09-23 05:55:32.72662
3977	12	775	О-00094	2012-09-23 05:55:32.711418	2012-09-23 06:04:19.457548
3978	13	775	ИП Петерсон А.В.	2012-09-23 05:55:32.71313	2012-09-23 06:04:19.459025
3980	2	775	детский	2012-09-23 05:55:32.715935	2012-09-23 06:04:19.46055
3983	5	775	прачечная, гладильная, трансфер, экскурсии, заказ билетов, мангал, беседка, садовая мебель, шезлонги, теннисный стол, русская баня	2012-09-23 05:55:32.721018	2012-09-23 06:04:19.46182
3998	7	1204	нет	2012-09-30 04:44:16.289687	2012-09-30 05:13:51.573429
3985	7	775	есть	2012-09-23 05:55:32.723912	2012-09-23 06:04:19.463844
3988	10	775	для самостоятельного приготовления пищи	2012-09-23 05:55:32.727864	2012-09-23 06:04:19.465071
3989	11	775	хорошее	2012-09-23 05:55:32.729149	2012-09-23 06:04:19.466349
3999	8	1204	нет	2012-09-30 04:44:16.291015	2012-09-30 05:13:51.574518
3981	3	775	10	2012-09-23 05:55:32.717326	2012-09-23 06:15:32.441699
3982	4	775	Расположен на главной улице поселка	2012-09-23 05:55:32.718859	2012-09-23 06:15:32.442942
3979	1	775	возможна организация питания	2012-09-23 05:55:32.714509	2012-09-23 06:27:12.269742
3984	6	775	20 минут пешком (800 метров)	2012-09-23 05:55:32.72258	2012-09-28 07:07:45.187555
4000	9	1204		2012-09-30 04:44:16.292363	2012-09-30 04:44:16.292363
3995	4	1204	набережная - 20 минут, центр поселка - 20 минут, центр развлечений - 20 минут, аквапарк - 20 минут, рынок - 20 минут, магазин продукты - 12 минут, остановка маршрутки - 12 минут	2012-09-30 04:44:16.285527	2012-09-30 04:56:59.545996
3990	12	1204	О-00095	2012-09-30 04:44:16.157656	2012-09-30 04:59:57.111691
3991	13	1204	ИП Шкуркин Николай Анатольевич	2012-09-30 04:44:16.279518	2012-09-30 04:59:57.114444
4002	11	1204	хорошее	2012-09-30 04:44:16.295102	2012-09-30 05:13:51.575604
3997	6	1204	20-25 минут пешком	2012-09-30 04:44:16.288224	2012-09-30 04:59:57.116659
4001	10	1204	для самостоятельного риготовления пищи	2012-09-30 04:44:16.293803	2012-09-30 04:59:57.118415
4014	10	1205	общая кухня для самостоятельного приготовления пищи	2012-09-30 06:45:24.189563	2012-09-30 07:43:49.55061
4006	2	1205	детский	2012-09-30 06:45:24.180275	2012-09-30 07:44:28.77574
3993	2	1204	нет	2012-09-30 04:44:16.28258	2012-09-30 05:13:51.570127
3994	3	1204	12	2012-09-30 04:44:16.284066	2012-09-30 05:13:51.571216
3992	1	1204	возможна организация питания	2012-09-30 04:44:16.281134	2012-09-30 05:15:10.276132
4012	8	1205		2012-09-30 06:45:24.187294	2012-09-30 06:45:24.187294
4013	9	1205		2012-09-30 06:45:24.188416	2012-09-30 06:45:24.188416
4003	12	1205	О-00096	2012-09-30 06:45:24.176718	2012-09-30 07:34:12.270137
4004	13	1205	ИП Кочеева Людмила Анатольевна	2012-09-30 06:45:24.178036	2012-09-30 07:34:12.272363
4007	3	1205	10	2012-09-30 06:45:24.181414	2012-09-30 07:34:12.274151
4005	1	1205	возможна организация питания	2012-09-30 06:45:24.179156	2012-09-30 07:43:49.545139
4008	4	1205	 Удаление от центра Анапы - 15-20 минут на маршрутке, которые ездят через 3-5 минут.	2012-09-30 06:45:24.182588	2012-09-30 07:43:49.546604
4009	5	1205	предоставляется детская кроватка. Парковка машин - бесплатно.  WiFi, ксерокс (платно), библиотека, утюг, стиральная машина (платно), мангал, сейф.	2012-09-30 06:45:24.183783	2012-09-30 07:43:49.547873
4010	6	1205	10-15 минут пешком	2012-09-30 06:45:24.184943	2012-09-30 07:50:10.583798
4015	11	1205	хорошее	2012-09-30 06:45:24.190681	2012-09-30 07:50:10.585834
4011	7	1205	Имеется шведский турникет и качели. Во дворе есть фонтанчик, скульптуры из мультиков. Большой телевизор для детей с просмотром мультиков, чтение сказок, соревнования	2012-09-30 06:45:24.186111	2012-09-30 07:45:27.374008
4021	4	671		2012-09-30 08:24:45.719826	2012-09-30 08:24:45.719826
4026	9	671		2012-09-30 08:24:45.727157	2012-09-30 08:24:45.727157
4016	12	671	О-00097	2012-09-30 08:24:45.712426	2012-09-30 08:31:36.627523
4017	13	671	ИП Паскалова Инга Исидоровна	2012-09-30 08:24:45.714428	2012-09-30 08:31:36.629075
4020	3	671	47	2012-09-30 08:24:45.7185	2012-09-30 09:00:05.386848
4145	11	1210	Отличное	2012-10-30 14:18:53.6344	2012-10-30 14:29:47.042697
4018	1	671	Кафе-столовая, 3-х разовое питание. Предоставляется услуга раздаточного стола, позволяющая гостям выбрать для себя наиболее оптимальное питание. Питание оплачивается отдельно от стоимости проживания.	2012-09-30 08:24:45.715733	2012-09-30 08:51:13.264956
4027	10	671	нет	2012-09-30 08:24:45.728603	2012-09-30 08:51:13.291501
4019	2	671	два бассейна - подогрев и гидромассаж	2012-09-30 08:24:45.717175	2012-09-30 08:58:25.015945
4146	12	620	О-00106	2012-10-31 05:59:45.739087	2012-10-31 06:11:36.853727
4158	11	620	отличное	2012-10-31 05:59:45.780592	2012-10-31 06:21:09.945622
4023	6	671	собственный пляж, 10 минут пешком	2012-09-30 08:24:45.722928	2012-09-30 08:58:25.017946
4024	7	671	есть	2012-09-30 08:24:45.72427	2012-09-30 08:58:25.019426
4025	8	671	кафе	2012-09-30 08:24:45.725736	2012-09-30 08:58:25.020901
4028	11	671	очень хорошее	2012-09-30 08:24:45.730015	2012-09-30 08:58:25.022013
4022	5	671	парковка, трансфер, гладильная доска и утюг на каждом этаже, кулер на каждом этаже (с горячей и холодной водой), закрытый благоустроенный внутренний двор, массаж, экскурсионное обслуживание, анимация, организация дней рождения для детей, за доп. плату	2012-09-30 08:24:45.721372	2012-09-30 09:03:39.843904
4032	2	644		2012-10-23 14:42:50.719796	2012-10-23 14:42:50.719796
4038	8	644		2012-10-23 14:42:50.72771	2012-10-23 14:42:50.72771
4039	9	644		2012-10-23 14:42:50.729383	2012-10-23 14:42:50.729383
4040	10	644		2012-10-23 14:42:50.730741	2012-10-23 14:42:50.730741
4029	12	644	O-00098	2012-10-23 14:42:50.714362	2012-10-24 09:26:42.695368
4030	13	644	ИП Туровская Мариэтта Давидовна	2012-10-23 14:42:50.716912	2012-10-24 09:26:42.697094
4031	1	644	возможна организация питания 	2012-10-23 14:42:50.718311	2012-10-24 09:26:42.6985
4033	3	644	19	2012-10-23 14:42:50.721027	2012-10-24 09:26:42.70022
4034	4	644	находится в курортной части поселка Витязево, в тихом месте, в переулке не имеющем сквозного движения автотранспорта	2012-10-23 14:42:50.722231	2012-10-24 09:26:42.701796
4062	6	1206	Отель расположен непосредственно на песчаном пляже в 50 метрах от кромки воды, в  распоряжении отдыхающих собственный благоустроенный пляж, с комплексом шезлонгов и навесов.	2012-10-25 10:45:56.689845	2012-10-25 11:08:14.706463
4036	6	644	25 минут	2012-10-23 14:42:50.724811	2012-10-24 09:26:42.704992
4037	7	644	детская площадка с бассейном	2012-10-23 14:42:50.726266	2012-10-24 09:26:42.707357
4041	11	644	хорошее	2012-10-23 14:42:50.732176	2012-10-24 09:26:42.708889
4035	5	644	 Детские кроватки и прогулочные коляски;  экскурсии; гладильная, прачечная; камера хранения; трансфер (встреча); WiFi; библиотека, автостоянка, 	2012-10-23 14:42:50.723374	2012-10-24 09:35:42.999719
4051	8	612		2012-10-25 06:19:35.764182	2012-10-25 06:19:35.764182
4052	9	612		2012-10-25 06:19:35.765208	2012-10-25 06:19:35.765208
4053	10	612		2012-10-25 06:19:35.766384	2012-10-25 06:19:35.766384
4042	12	612	О-00099	2012-10-25 06:19:35.75423	2012-10-25 07:15:15.342634
4043	13	612	ИП Головань Анатолий Михайлович 	2012-10-25 06:19:35.755946	2012-10-25 07:15:15.343692
4044	1	612	возможна организация питания 	2012-10-25 06:19:35.757239	2012-10-25 07:15:15.344613
4045	2	612	Бассейн 32 кв. м, с пресной водой с подогревом и гидромассажем	2012-10-25 06:19:35.758538	2012-10-25 07:15:15.345555
4046	3	612	30	2012-10-25 06:19:35.759489	2012-10-25 07:15:15.346505
4047	4	612	 расположен в первой курортной зоне	2012-10-25 06:19:35.760423	2012-10-25 07:15:15.347406
4048	5	612	Интернет Wi-Fi, автостоянка,  гладильная доска и утюг на каждом этаже, за доп. плату  - прокат колясок, гидромассаж, аренда сейфовой ячейки, фен в номер, трансферт, прачечная	2012-10-25 06:19:35.761386	2012-10-25 07:15:15.348304
4049	6	612	800 м	2012-10-25 06:19:35.762336	2012-10-25 07:15:15.349734
4050	7	612	Детская площадка и детский бассейн. Для безопасности детей  доступ на территорию отеля ограничен и находится под охраной и видеонаблюдением	2012-10-25 06:19:35.76326	2012-10-25 07:15:15.351066
4063	7	1206	К услугам маленьких гостей имеются 2 детские комнаты, одна из которых расположена на пляже, что позволяет родителям беззаботно отдыхать, пока их дети находятся под присмотром квалифицированных воспитателей-аниматоров.	2012-10-25 10:45:56.691371	2012-10-25 11:08:14.707392
4054	11	612	очень хорошее	2012-10-25 06:19:35.767321	2012-10-25 08:41:41.888624
4065	9	1206		2012-10-25 10:45:56.694325	2012-10-25 10:45:56.694325
4055	12	1206	О-00101	2012-10-25 10:45:56.680877	2012-10-25 11:08:14.702049
4057	1	1206	завтраки, полупансион	2012-10-25 10:45:56.683973	2012-10-25 11:08:14.703646
4059	3	1206	49	2012-10-25 10:45:56.686956	2012-10-25 11:08:14.704624
4061	5	1206	Трансфер, баня, парковка, прачечная, услуга звонок-будильник, круглосуточная стойка регистрации, вызов такси, массаж, экскурсии (в том числе и VIP-экскурсии), морская, речная рыбалка в любое время года, морские прогулки, дайвинг, полеты на параплане   	2012-10-25 10:45:56.688871	2012-10-25 11:08:14.705545
4064	8	1206	На территории клуб-отеля «Белый пляж» расположен ресторан традиционной русской кухни, рассчитанный на 130 посадочных мест; круглосуточно работает  бар «У бассейна» и услуга обслуживания в номере (room-service).	2012-10-25 10:45:56.692909	2012-10-25 11:08:14.708321
4067	11	1206	очень хорошее	2012-10-25 10:45:56.696485	2012-10-25 11:08:14.709253
4058	2	1206	2 открытых бассейна необычной формы с подогревом (детский и взрослый), работающие с 8:00 до 00:00. 	2012-10-25 10:45:56.685362	2012-10-25 11:16:28.026084
4060	4	1206	 первая береговая линия Пионерского проспекта в поселке Джемете	2012-10-25 10:45:56.687892	2012-10-25 11:16:28.028888
4066	10	1206	VIP-дома оборудованы кухней 	2012-10-25 10:45:56.695323	2012-10-25 12:29:02.976102
4073	4	1207		2012-10-25 15:20:39.861067	2012-10-25 15:20:39.861067
4076	7	1207		2012-10-25 15:20:39.864095	2012-10-25 15:20:39.864095
4077	8	1207		2012-10-25 15:20:39.865227	2012-10-25 15:20:39.865227
4078	9	1207		2012-10-25 15:20:39.866427	2012-10-25 15:20:39.866427
4068	12	1207	О-000102	2012-10-25 15:20:39.855571	2012-10-25 15:39:17.19442
4069	13	1207	ИП Спирин Николай Владимирович	2012-10-25 15:20:39.856814	2012-10-25 15:39:17.195469
4070	1	1207	возможна организация питания 	2012-10-25 15:20:39.857783	2012-10-25 15:39:17.196689
4072	3	1207	7	2012-10-25 15:20:39.860048	2012-10-25 15:39:17.198212
4080	11	1207	удовлетворительное 	2012-10-25 15:20:39.868736	2012-10-25 15:39:17.238933
4079	10	1207	Имеется оборудованная кухня, микроволновая печь, электрочайник, мангал  	2012-10-25 15:20:39.867739	2012-10-25 15:47:17.4672
4071	2	1207	надувной бассейн	2012-10-25 15:20:39.859078	2012-10-25 16:11:13.153091
4056	13	1206	ИП Беляев Виталий Алексеевич	2012-10-25 10:45:56.682645	2012-10-26 05:24:33.318818
4074	5	1207	Трансфер Экскурсионное обслуживание WiFi Мангал Книги, игрушки, настольные игры Детская анимация по выходным	2012-10-25 15:20:39.862067	2012-10-25 15:39:17.199404
4075	6	1207	В 45 минутах находится каменистый пляж. До песчаного пляжа можно добраться на маршрутном такси, доехав до Центрального рынка,  оттуда до пляжа - 5-7 минут пешком	2012-10-25 15:20:39.86305	2012-10-25 16:21:27.127502
4099	4	776		2012-10-26 06:03:04.198183	2012-10-26 06:03:04.198183
4102	7	776		2012-10-26 06:03:04.202281	2012-10-26 06:03:04.202281
4103	8	776		2012-10-26 06:03:04.203667	2012-10-26 06:03:04.203667
4104	9	776		2012-10-26 06:03:04.205116	2012-10-26 06:03:04.205116
4094	12	776	О-00103	2012-10-26 06:03:04.191554	2012-10-26 06:14:22.648029
4096	1	776	3-х разовое питание. Оплачивается дополнительно для каждого из гостей. По желанию можно заказывать только завтрак.	2012-10-26 06:03:04.194509	2012-10-26 06:14:22.649551
4097	2	776	Длинна бассейна — 10 метров с плавным увеличением глубины.	2012-10-26 06:03:04.195825	2012-10-26 06:14:22.650738
4098	3	776	19	2012-10-26 06:03:04.196855	2012-10-26 06:14:22.651639
4100	5	776	Трансфер (осуществляется бесплатно, но только в пределах города-курорта Анапа).Имеется автостоянка на 12 машин под видеонаблюдением.  	2012-10-26 06:03:04.1995	2012-10-26 06:14:22.652571
4101	6	776	7 минут прогулочного шага до галечного пляжа Сукко.	2012-10-26 06:03:04.200904	2012-10-26 06:14:22.653499
4105	10	776	Общая кухня, площадью 15 кв. м. с полной кухонной мебелью.	2012-10-26 06:03:04.206365	2012-10-26 06:14:22.654437
4106	11	776	хорошее	2012-10-26 06:03:04.2073	2012-10-26 06:14:22.655341
4095	13	776	ИП Черная Наталья Александровна	2012-10-26 06:03:04.193167	2012-10-26 06:29:37.641726
4115	7	759		2012-10-26 08:00:25.424757	2012-10-26 08:00:25.424757
4117	9	759		2012-10-26 08:00:25.426912	2012-10-26 08:00:25.426912
4118	10	759		2012-10-26 08:00:25.428007	2012-10-26 08:00:25.428007
4107	12	759	О-00104	2012-10-26 08:00:25.413474	2012-10-26 08:31:42.456371
4108	13	759	ИП Лебедев Александр Ларионович	2012-10-26 08:00:25.415149	2012-10-26 08:31:42.45747
4109	1	759	завтрак (включен в стоимость)	2012-10-26 08:00:25.416527	2012-10-26 08:31:42.458904
4110	2	759	открытый 5*10, подогреваемый, вода, пресная, детское отделение, пользование бассейном, входит в стоимость	2012-10-26 08:00:25.417973	2012-10-26 08:31:42.460207
4111	3	759	25	2012-10-26 08:00:25.419362	2012-10-26 08:31:42.461196
4112	4	759	до ж/д вокзала: 22 км, до аэропорта: 30 км, до центра: 14 км, до моря: 900 м, до пляжа: 700 м, до курортного парка: 15 км, до бювета: 15 км	2012-10-26 08:00:25.420797	2012-10-26 08:31:42.462151
4113	5	759	Парковка возле корпуса, трансфер (за доп. плату),  банный комплекс, финская сауна (платно), на стойке регистрации: утреннее пробуждение по телефону, сейфовые ячейки, услуги прачечной - глажка, стирка, бильярд, теннисный стол	2012-10-26 08:00:25.422145	2012-10-26 08:31:42.463338
4114	6	759	до моря: 900 м, до пляжа: 700 м	2012-10-26 08:00:25.423479	2012-10-26 08:31:42.464536
4116	8	759	на территории отеля имеется бар	2012-10-26 08:00:25.425883	2012-10-26 08:31:42.465741
4119	11	759	хорошее	2012-10-26 08:00:25.429339	2012-10-26 08:31:42.466728
4120	12	1209	О-00105	2012-10-26 10:07:17.280591	2012-10-26 10:07:17.280591
4121	13	1209	ИП Паскалов Исидор Ефремович	2012-10-26 10:07:17.281841	2012-10-26 10:07:17.281841
4122	1	1209	Возможна организация питания 	2012-10-26 10:07:17.282855	2012-10-26 10:07:17.282855
4123	2	1209	Бассейн крытый, с обогревом и гидромассажами, взрослый и детский	2012-10-26 10:07:17.283801	2012-10-26 10:07:17.283801
4124	3	1209	17	2012-10-26 10:07:17.284825	2012-10-26 10:07:17.284825
4125	4	1209	Находится в отдаленном месте от городской суеты. Рядом находятся остановки общественного транспорта (сообщение Анапа - Пионерский проспект - Витязево). 	2012-10-26 10:07:17.285784	2012-10-26 10:07:17.285784
4126	5	1209	Доступ в интернет, трансфер, кулер ( горячая и холодная вода), на первом этаже, собственный оборудованный пляж с зонтиками и шезлонгами. 	2012-10-26 10:07:17.286751	2012-10-26 10:07:17.286751
4127	6	1209	15 мин до песчаного пляжа	2012-10-26 10:07:17.28769	2012-10-26 10:07:17.28769
4128	7	1209		2012-10-26 10:07:17.288626	2012-10-26 10:07:17.288626
4129	8	1209	На территории гостевого дома имеется кафе-столовая	2012-10-26 10:07:17.289638	2012-10-26 10:07:17.289638
4130	9	1209		2012-10-26 10:07:17.290591	2012-10-26 10:07:17.290591
4131	10	1209	имеется кухня для самостоятельного приготовления пищи	2012-10-26 10:07:17.29152	2012-10-26 10:07:17.29152
4132	11	1209	хорошее	2012-10-26 10:07:17.292458	2012-10-26 10:07:17.292458
4143	9	1210		2012-10-30 14:18:53.632189	2012-10-30 14:18:53.632189
4144	10	1210		2012-10-30 14:18:53.633115	2012-10-30 14:18:53.633115
4133	12	1210	О-00100	2012-10-30 14:18:53.622459	2012-10-30 14:24:01.121652
4135	1	1210	Полный пансион "Шведский стол", оплачивается по усмотрению гостя	2012-10-30 14:18:53.624499	2012-10-30 14:24:01.123092
4137	3	1210	111	2012-10-30 14:18:53.626558	2012-10-30 14:24:01.124023
4134	13	1210	ООО "Золотой оазис"	2012-10-30 14:18:53.623548	2012-10-30 14:29:47.037586
4141	7	1210	Имеется детская площадка, а также детская горка, детская кроватка (по заезду при наличии), детские стульчики в обеденном зале Детская комната с воспитателем (режим работы с 10 00-19 00-бесплатно, после 19 00 за дополнительную оплату)	2012-10-30 14:18:53.630324	2012-10-30 14:24:01.125847
4142	8	1210	Летний бар	2012-10-30 14:18:53.631262	2012-10-30 14:26:17.375258
4136	2	1210	Открытый бассейн с подогревом, с аэромассажным отедлением и с детским отделением с 8:00 до 23:00, комплекс шезлонгов и навесов	2012-10-30 14:18:53.625514	2012-10-30 14:29:47.038858
4138	4	1210	Расположен на первой береговой линии	2012-10-30 14:18:53.627496	2012-10-30 14:29:47.040008
4140	6	1210	Расстояние до песчаного пляжа 100м	2012-10-30 14:18:53.629371	2012-10-30 14:29:47.041393
4139	5	1210	Wi-Fi интернет  Трансфер   Услуги прачечной и глажка Пляжные полотенца Заказ такси Автостоянка Турецкая баня Сауна	2012-10-30 14:18:53.628428	2012-10-30 14:39:30.909885
4147	13	620	ИП Паскалов Михаил Юрьевич	2012-10-31 05:59:45.76923	2012-10-31 06:21:09.937617
4148	1	620	3-х разовое, по желанию. Питание оплачивается отдельно от стоимости проживания. 	2012-10-31 05:59:45.770326	2012-10-31 06:11:36.855201
4152	5	620	Интернет Wi-Fi  Парковка Услуги няни, за доп. плату Гладильная доска и утюг на каждом этаже  Прачечная Трансферт: Анапа – бесплатно; ст. Тоннельная, Новороссийск, Краснодар - за доп. плату (со скидкой) Сейф у администратора	2012-10-31 05:59:45.774174	2012-10-31 06:11:36.857628
4149	2	620	 Бассейн с подогревом и с подсветкой, с детским отделением 	2012-10-31 05:59:45.771289	2012-10-31 06:21:09.938831
4151	4	620	 расположен у самого пляжа	2012-10-31 05:59:45.773165	2012-10-31 06:21:09.940334
4153	6	620	пляж песчаный - 3 минуты	2012-10-31 05:59:45.775169	2012-10-31 06:21:09.941382
4154	7	620	детская игровая комната 	2012-10-31 05:59:45.776282	2012-10-31 06:21:09.94235
4157	10	620	Имеется оборудованная кухня для самостоятельного приготовления пищи	2012-10-31 05:59:45.77933	2012-10-31 06:21:09.944331
4150	3	620	33	2012-10-31 05:59:45.772242	2012-10-31 06:46:11.68117
4159	12	709	О-00107	2012-10-31 08:05:37.395629	2012-10-31 08:19:18.353941
4160	13	709	ИП Лобкова Любовь Федоровна 	2012-10-31 08:05:37.397465	2012-10-31 08:19:18.355181
4161	1	709		2012-10-31 08:05:37.398879	2012-10-31 08:05:37.398879
4167	7	709		2012-10-31 08:05:37.404906	2012-10-31 08:05:37.404906
4168	8	709	Напротив, в 3 метрах располагается кафе «ЛЮБВИК»	2012-10-31 08:05:37.405845	2012-10-31 08:05:37.405845
4169	9	709		2012-10-31 08:05:37.406773	2012-10-31 08:05:37.406773
4170	10	709		2012-10-31 08:05:37.408233	2012-10-31 08:05:37.408233
4162	2	709	нет	2012-10-31 08:05:37.40017	2012-10-31 08:19:18.356194
4163	3	709	14	2012-10-31 08:05:37.401147	2012-10-31 08:19:18.3572
4164	4	709	  В 5 км от аэропорта г. Анапа, в 7 км от ж/д вокзала г. Анапа.	2012-10-31 08:05:37.402096	2012-10-31 08:19:18.358161
4165	5	709	Организация экскурсий Трансфер	2012-10-31 08:05:37.403036	2012-10-31 08:19:18.359238
4166	6	709	До центрального пляжа по прямой, мимо сувенирных рядов и мини рынка около 12 минут	2012-10-31 08:05:37.403963	2012-10-31 08:19:18.360152
4171	11	709	хорошее	2012-10-31 08:05:37.409658	2012-10-31 08:19:18.361123
4181	8	1211		2012-10-31 10:48:06.764176	2012-10-31 10:48:06.764176
4182	9	1211		2012-10-31 10:48:06.765134	2012-10-31 10:48:06.765134
4183	10	1211		2012-10-31 10:48:06.766122	2012-10-31 10:48:06.766122
4172	12	1211	О-00108	2012-10-31 10:48:06.755215	2012-10-31 11:11:54.274807
4173	13	1211	ИП Левенко Людмила Алексеевна	2012-10-31 10:48:06.756296	2012-10-31 11:11:54.276004
4174	1	1211	К услугам отдыхающих обеденный зал с 3-х разовым питанием, ориентированное как на самых маленьких, так и на взрослых.	2012-10-31 10:48:06.75733	2012-10-31 11:11:54.277107
4175	2	1211	подогреваемый бассейн	2012-10-31 10:48:06.7583	2012-10-31 11:11:54.278067
4176	3	1211	36	2012-10-31 10:48:06.7594	2012-10-31 11:11:54.279094
4177	4	1211	Гостевой дом находится в центре пос.Витязево с хорошо развитой инфраструктурой. 	2012-10-31 10:48:06.760349	2012-10-31 11:11:54.279989
4178	5	1211	Бесплатная парковка, гладильные доски/утюги, мангал, за доп. плату  -  встреча гостей, стирка личных вещей, экскурсии, рыбалка, массаж, няня 	2012-10-31 10:48:06.761291	2012-10-31 11:11:54.280924
4179	6	1211	500 м от пляжа до песчаного пляжа	2012-10-31 10:48:06.762266	2012-10-31 11:11:54.281902
4180	7	1211	 Удобная игровая площадка, велосипеды, самокаты, игрушки. Двор огорожен.	2012-10-31 10:48:06.76323	2012-10-31 11:11:54.282888
4184	11	1211	хорошее	2012-10-31 10:48:06.767138	2012-10-31 11:11:54.283952
4195	9	1212		2012-11-07 06:41:47.788344	2012-11-07 06:41:47.788344
4185	12	1212	О-00109	2012-11-07 06:41:47.776715	2012-11-07 07:05:47.178985
4186	13	1212	ИП Акопян Сусан Артюшовна	2012-11-07 06:41:47.778826	2012-11-07 07:05:47.180372
4187	1	1212	3-х разовое, по желанию. Питание оплачивается отдельно от стоимости проживания. 	2012-11-07 06:41:47.779816	2012-11-07 07:05:47.181334
4188	2	1212	 открытый бассейн с подогревом воды и детским отделением,  лежаки, пляжный инвентарь	2012-11-07 06:41:47.780812	2012-11-07 07:05:47.182294
4189	3	1212	30	2012-11-07 06:41:47.781966	2012-11-07 07:05:47.183285
4190	4	1212	Зона отдыха	2012-11-07 06:41:47.783398	2012-11-07 07:05:47.184258
4191	5	1212	 гладильная комната; электрочайник; оборудованная детская комната, просмотр мультфильмов; настольные игры, бадминтон, настольный теннис; библиотека; мангал, очаг для плова и шурпы; вызов такси; платная автостоянка; трансфер; услуги прачечной; 	2012-11-07 06:41:47.78446	2012-11-07 07:05:47.185353
4192	6	1212	10 минут до песчаного пляжа	2012-11-07 06:41:47.78547	2012-11-07 07:05:47.186522
4193	7	1212	Детские горки, качели 	2012-11-07 06:41:47.786442	2012-11-07 07:05:47.187561
4194	8	1212	На территории гостевого дома есть кафе где можно сделать заказ любых блюд из русской, европейской, кавказкой кухни по меню. Гости могут воспользоваться услугой room-service (доставка блюд в номер).	2012-11-07 06:41:47.787385	2012-11-07 07:05:47.188525
4196	10	1212	оборудованная  кухня	2012-11-07 06:41:47.789306	2012-11-07 07:05:47.18955
4197	11	1212	хорошее	2012-11-07 06:41:47.790355	2012-11-07 07:05:47.190595
4200	1	755		2012-11-07 08:26:52.288729	2012-11-07 08:26:52.288729
4201	2	755		2012-11-07 08:26:52.29017	2012-11-07 08:26:52.29017
4206	7	755		2012-11-07 08:26:52.295918	2012-11-07 08:26:52.295918
4208	9	755		2012-11-07 08:26:52.298019	2012-11-07 08:26:52.298019
4210	11	755		2012-11-07 08:26:52.300123	2012-11-07 08:26:52.300123
4198	12	755	О-00110	2012-11-07 08:26:52.286435	2012-11-07 08:30:39.098413
4199	13	755	ИП Клейно Людмила Федоровна	2012-11-07 08:26:52.287666	2012-11-07 08:30:39.099892
4202	3	755	17	2012-11-07 08:26:52.2916	2012-11-07 08:30:39.101212
4203	4	755	расположен в центре поселка Джемете	2012-11-07 08:26:52.292905	2012-11-07 08:30:39.102423
4204	5	755	Трансфер, автостоянка	2012-11-07 08:26:52.293951	2012-11-07 08:30:39.103364
4205	6	755	30 метров	2012-11-07 08:26:52.294941	2012-11-07 08:30:39.104412
4207	8	755	Рядом находится кафе-столовая	2012-11-07 08:26:52.296876	2012-11-07 08:30:39.105489
4209	10	755	оборудованная  кухня с набором посуды для самостоятельного приготовления пищи, электроплита, микроволновая печь	2012-11-07 08:26:52.298972	2012-11-07 08:30:39.10647
4211	12	1213	О-00111	2012-11-07 10:01:30.877302	2012-11-07 10:01:30.877302
4212	13	1213	ИП Шарапова Марина Барисовна	2012-11-07 10:01:30.878934	2012-11-07 10:01:30.878934
4213	1	1213		2012-11-07 10:01:30.880324	2012-11-07 10:01:30.880324
4214	2	1213		2012-11-07 10:01:30.881744	2012-11-07 10:01:30.881744
4215	3	1213	20	2012-11-07 10:01:30.883108	2012-11-07 10:01:30.883108
4216	4	1213	расположен в самом сердце курортного поселка Витязево на улице Черноморская, которая переходит в главную прогулочную улицу курорта Витязево – набережную «Паралию».	2012-11-07 10:01:30.884473	2012-11-07 10:01:30.884473
4217	5	1213	Трансфер, автостоянка - за доп. плату	2012-11-07 10:01:30.88587	2012-11-07 10:01:30.88587
4218	6	1213		2012-11-07 10:01:30.887356	2012-11-07 10:01:30.887356
4219	7	1213		2012-11-07 10:01:30.888495	2012-11-07 10:01:30.888495
4220	8	1213		2012-11-07 10:01:30.889672	2012-11-07 10:01:30.889672
4221	9	1213		2012-11-07 10:01:30.891004	2012-11-07 10:01:30.891004
4222	10	1213	оборудованная  кухня  для самостоятельного приготовления пищи	2012-11-07 10:01:30.892062	2012-11-07 10:01:30.892062
4223	11	1213		2012-11-07 10:01:30.89351	2012-11-07 10:01:30.89351
4227	2	1214		2012-11-08 05:04:05.030009	2012-11-08 05:04:05.030009
4232	7	1214		2012-11-08 05:04:05.034885	2012-11-08 05:04:05.034885
4234	9	1214		2012-11-08 05:04:05.036999	2012-11-08 05:04:05.036999
4235	10	1214		2012-11-08 05:04:05.03806	2012-11-08 05:04:05.03806
4224	12	1214	О-00112	2012-11-08 05:04:05.026847	2012-11-08 05:14:03.934447
4225	13	1214	ИП Димоева Валентина Алексеевна	2012-11-08 05:04:05.027926	2012-11-08 05:14:03.935967
4226	1	1214	Индивидуальные заказы по меню в собственной столовой. В меню столовой предоставлены блюда русской, европейской, кавказской кухни.  Возможность заказа отдельно завтрака, обеда  и ужина. В стоимость номера не входит. 	2012-11-08 05:04:05.028953	2012-11-08 05:14:03.937219
4228	3	1214	9	2012-11-08 05:04:05.030947	2012-11-08 05:14:03.938156
4229	4	1214	Отель находится в центре поселка Витязево с хорошо развитой инфраструктурой. 	2012-11-08 05:04:05.031933	2012-11-08 05:14:03.939241
4230	5	1214	Трансфер, автостоянка с видеонаблюдением, WiFi, прачечная,  	2012-11-08 05:04:05.032932	2012-11-08 05:14:03.940174
4231	6	1214	15 минут до песчаного пляжа	2012-11-08 05:04:05.033925	2012-11-08 05:14:03.941468
4233	8	1214	Столовая, а также зона отдыха с баром и шашлычной	2012-11-08 05:04:05.035871	2012-11-08 05:14:03.942509
4236	11	1214	хорошее	2012-11-08 05:04:05.039128	2012-11-08 05:14:03.943643
4247	9	1215		2012-11-08 05:39:28.845596	2012-11-08 05:39:28.845596
4248	10	1215		2012-11-08 05:39:28.846627	2012-11-08 05:39:28.846627
4249	11	1215		2012-11-08 05:39:28.847552	2012-11-08 05:39:28.847552
4237	12	1215	О-00113	2012-11-08 05:39:28.83326	2012-11-08 05:48:43.762879
4267	3	1217	30	2012-11-09 05:34:36.244791	2012-11-09 07:16:38.780963
4240	2	1215	Два бассейна с подогревом, в том числе с детским отделением. 	2012-11-08 05:39:28.836309	2012-11-08 05:48:43.765055
4241	3	1215	92	2012-11-08 05:39:28.83773	2012-11-08 05:48:43.765998
4242	4	1215	Гостевой дом находится в центре поселка Витязево с хорошо развитой инфраструктурой. 	2012-11-08 05:39:28.839096	2012-11-08 05:48:43.766923
4243	5	1215	Автостоянка, WiFi, утюг, гладильная доска, бильярд, настольный теннис, на каждом этаже установлены кулеры с питьевой водой, парикмахерская, аптека,  барбекю, винная лавка	2012-11-08 05:39:28.840448	2012-11-08 05:48:43.767837
4244	6	1215	10 минут до песчаного пляжа	2012-11-08 05:39:28.841822	2012-11-08 05:48:43.769465
4245	7	1215	Детская площадка, аниматоры, детская комната с игрушками	2012-11-08 05:39:28.843169	2012-11-08 05:48:43.771268
4246	8	1215	Кафе, бар, столовая. 	2012-11-08 05:39:28.844512	2012-11-08 05:48:43.77276
4238	13	1215	ИП Джеиранова Тина Георгиевна	2012-11-08 05:39:28.834272	2012-11-08 06:03:24.9849
4239	1	1215	3-х разовое питание в столовой (по желанию)	2012-11-08 05:39:28.835209	2012-11-08 06:43:48.623056
4259	8	1216		2012-11-08 07:28:52.081206	2012-11-08 07:28:52.081206
4260	9	1216		2012-11-08 07:28:52.082569	2012-11-08 07:28:52.082569
4250	12	1216	О-00114	2012-11-08 07:28:52.069284	2012-11-08 07:35:59.630916
4251	13	1216	ИП Буланцева Надежда Александровна	2012-11-08 07:28:52.070818	2012-11-08 07:35:59.633128
4252	1	1216	возможна организация питания	2012-11-08 07:28:52.072184	2012-11-08 07:35:59.634435
4253	2	1216	детский бассейн	2012-11-08 07:28:52.073563	2012-11-08 07:35:59.635734
4254	3	1216	18	2012-11-08 07:28:52.074936	2012-11-08 07:35:59.637043
4255	4	1216	Центровое расположение, до центра всех развлечений в Витязево парка Аттракционов и центральной аллеи Паралия 5 минут	2012-11-08 07:28:52.076327	2012-11-08 07:35:59.638507
4256	5	1216	Трансфер, прокат вентилятора, мангал для шашлыка и барбекю.	2012-11-08 07:28:52.07738	2012-11-08 07:35:59.639981
4257	6	1216	15 минут до песчаного пляжа	2012-11-08 07:28:52.078473	2012-11-08 07:35:59.641265
4258	7	1216	детский домик	2012-11-08 07:28:52.079802	2012-11-08 07:35:59.642464
4261	10	1216	оборудованная  кухня  для самостоятельного приготовления пищи.	2012-11-08 07:28:52.083927	2012-11-08 07:35:59.643467
4262	11	1216	хорошее	2012-11-08 07:28:52.085355	2012-11-08 07:35:59.644466
4270	6	1217		2012-11-09 05:34:36.247708	2012-11-09 05:34:36.247708
4272	8	1217		2012-11-09 05:34:36.249678	2012-11-09 05:34:36.249678
4273	9	1217		2012-11-09 05:34:36.25069	2012-11-09 05:34:36.25069
4263	12	1217	О-00115	2012-11-09 05:34:36.240745	2012-11-09 07:16:38.775989
4264	13	1217	ИП Буланцева Марина Анатольевна	2012-11-09 05:34:36.241868	2012-11-09 07:16:38.777595
4265	1	1217	Возможна организация питания в столовой (комплексное меню)	2012-11-09 05:34:36.242842	2012-11-09 07:16:38.77872
4266	2	1217	Разборный взрослый и детский бассейн.	2012-11-09 05:34:36.243809	2012-11-09 07:16:38.779696
4268	4	1217	Расположен в начале поселка Витязево, со стороны Пионерского проспкта	2012-11-09 05:34:36.245772	2012-11-09 07:16:38.782397
4269	5	1217	Трансфер, парковка, интернет, ксерокс - за доп. плату, мангал, детский аниматор, библиотека, гладилка, ,услуги стиральной машины - за доп. плату, прокат вентилятора.	2012-11-09 05:34:36.246739	2012-11-09 07:16:38.783339
4271	7	1217	Детская площадка, аниматоры, детская комната с игрушками	2012-11-09 05:34:36.248713	2012-11-09 07:16:38.784304
4274	10	1217	Оборудованная  кухня  для самостоятельного приготовления пищи.	2012-11-09 05:34:36.251677	2012-11-09 07:16:38.785393
4275	11	1217	хорошее	2012-11-09 05:34:36.252693	2012-11-09 07:16:38.786577
3721	3	1006	44	2012-09-12 15:47:09.832168	2012-11-12 06:51:23.603584
3722	4	1006	Отель "RS-Royal" расположен в самом центре города-курорта Анапа, в 5 минутах ходьбы от различных зон отдыха и проведения досуга. 	2012-09-12 15:47:09.833728	2012-11-12 06:51:23.604552
3723	5	1006	Автостоянка Бильярд Прачечная  Сауна Тренажерный зал Рум-сервис Настольный теннис Трансфер Экскурсии Заказ и доставка авиа и ж/д билетов На территории отеля WI FI Аренда ресторана для конференций Прокат проектора 	2012-09-12 15:47:09.835247	2012-11-12 06:51:23.605508
3724	6	1006	7 минут до песчаного пляжа	2012-09-12 15:47:09.836784	2012-11-12 06:51:23.606515
3726	8	1006	Ресторан, летнее кафе	2012-09-12 15:47:09.840013	2012-11-12 06:51:23.607603
3729	11	1006	отличное	2012-09-12 15:47:09.84476	2012-11-12 06:51:23.608924
4279	2	1218		2012-11-12 06:59:46.107032	2012-11-12 06:59:46.107032
4284	7	1218		2012-11-12 06:59:46.11387	2012-11-12 06:59:46.11387
4286	9	1218		2012-11-12 06:59:46.116857	2012-11-12 06:59:46.116857
4287	10	1218		2012-11-12 06:59:46.117975	2012-11-12 06:59:46.117975
4283	6	1218	5 минут до песчаного пляжа	2012-11-12 06:59:46.112396	2012-11-12 07:11:36.931483
4276	12	1218	О-00070	2012-11-12 06:59:46.103025	2012-11-12 07:15:05.149856
4278	1	1218	3-разовое комплексное	2012-11-12 06:59:46.105891	2012-11-12 07:15:05.151136
4280	3	1218	16	2012-11-12 06:59:46.108347	2012-11-12 07:15:05.1521
4282	5	1218	Трансфер, открытая охраняемая парковка, сауна, бассейн в сауне	2012-11-12 06:59:46.110918	2012-11-12 07:26:26.508468
4315	12	424	О-00092	2012-11-13 09:10:38.034726	2012-11-13 09:27:10.241582
4288	11	1218	хорошее	2012-11-12 06:59:46.11894	2012-11-12 07:44:07.087127
4281	4	1218	 располжен в самом центре курорта Анапа, в 2 мин. от центрального рынка, автовокзала, кинотеатра, аптеки.	2012-11-12 06:59:46.109435	2012-11-12 07:46:07.744811
4285	8	1218	кафе	2012-11-12 06:59:46.11541	2012-11-12 07:46:07.746027
4277	13	1218	ИП Заралиди Мария Кузьминична 	2012-11-12 06:59:46.104717	2012-11-12 07:52:01.57077
4299	9	1219		2012-11-12 09:11:44.252066	2012-11-12 09:11:44.252066
4300	10	1219		2012-11-12 09:11:44.253221	2012-11-12 09:11:44.253221
4289	12	1219	О-00060	2012-11-12 09:11:44.237422	2012-11-12 09:43:41.577
4291	1	1219	Завтрак включен в стоимость размещения. Обед - 310 руб., ужин - 270 руб. Для гостей отеля скидка 10% при заказе по меню в кафе и ресторане.	2012-11-12 09:11:44.240736	2012-11-12 09:43:41.578184
4293	3	1219	50	2012-11-12 09:11:44.243874	2012-11-12 09:43:41.579581
4295	5	1219	Трансфер Библиотека Бильярд Термальный комплекс Салон красоты Wi-Fi Побудка  Вызов скорой  помощи Услуги носильщика Доставка корреспонденции  Парковка Большой и малый конференц-зал, прокат ноутбука, копирование, печать, факс, ламинирование, прокат DVD	2012-11-12 09:11:44.247128	2012-11-12 09:43:41.580948
4297	7	1219	Детской игровая комната  Услуги воспитателя	2012-11-12 09:11:44.249747	2012-11-12 09:43:41.582204
4290	13	1219	ИП Баскаева Сатеник Бедросовна	2012-11-12 09:11:44.239209	2012-11-12 09:49:11.069344
4292	2	1219	открытый летний бассейн, с надувными игрушками для детей	2012-11-12 09:11:44.242254	2012-11-12 09:49:11.070877
4294	4	1219	Гостиничный комплекс "Альбатрос" расположен в самом центре курортной зоны	2012-11-12 09:11:44.245482	2012-11-12 09:49:11.072315
4296	6	1219	5 минут до песчаного пляжа	2012-11-12 09:11:44.248235	2012-11-12 09:49:11.073951
4298	8	1219	Кафе "Баунти", кафе "Альбатрос", кафе «Ти Амо»	2012-11-12 09:11:44.250797	2012-11-12 09:49:11.075242
4301	11	1219	хорошее	2012-11-12 09:11:44.254272	2012-11-12 09:49:11.076532
4304	1	733		2012-11-12 11:34:26.395045	2012-11-12 11:34:26.395045
4305	2	733		2012-11-12 11:34:26.396124	2012-11-12 11:34:26.396124
4310	7	733		2012-11-12 11:34:26.401861	2012-11-12 11:34:26.401861
4311	8	733		2012-11-12 11:34:26.403232	2012-11-12 11:34:26.403232
4312	9	733		2012-11-12 11:34:26.404572	2012-11-12 11:34:26.404572
4302	12	733	О-00073	2012-11-12 11:34:26.392878	2012-11-12 11:39:32.310167
4303	13	733	ИП Найман Галина Павловна	2012-11-12 11:34:26.394043	2012-11-12 11:39:32.311289
4306	3	733	12	2012-11-12 11:34:26.397079	2012-11-12 11:39:32.312253
4307	4	733	Развитая инфраструктура; напротив гостевого дома- рынок «Джемете», магазины, столовые, кафе, рестораны для вечернего отдыха, новый аквапарк в 500 метрах.	2012-11-12 11:34:26.398103	2012-11-12 11:39:32.313194
4308	5	733	 трансфер, стиральная машинка (платно), гладильная + утюг - WI-FI (бесплатно), мангал во дворе, бесплатный прокат шезлонгов, прокат пляжных зонтов, прокат детских надувных кругов	2012-11-12 11:34:26.399228	2012-11-12 11:39:32.314167
4309	6	733	пляж песчаный - 5 минут	2012-11-12 11:34:26.40047	2012-11-12 11:39:32.315196
4313	10	733	оборудованная  кухня  для самостоятельного приготовления пищи	2012-11-12 11:34:26.405912	2012-11-12 11:39:32.316368
4314	11	733	хорошее	2012-11-12 11:34:26.407224	2012-11-12 11:39:32.317408
4325	9	424		2012-11-13 09:10:38.045443	2012-11-13 09:10:38.045443
4326	10	424		2012-11-13 09:10:38.046851	2012-11-13 09:10:38.046851
4316	13	424	ИП Ежелева Татьяна Борисовна	2012-11-13 09:10:38.035907	2012-11-13 09:27:10.242651
4317	1	424	Завтрак включен в стоимость размещения. Обед/ужин за доп. плату	2012-11-13 09:10:38.036854	2012-11-13 09:27:10.243663
4318	2	424	открытый бассейн с подогревом	2012-11-13 09:10:38.037782	2012-11-13 09:27:10.244761
4319	3	424	22	2012-11-13 09:10:38.038708	2012-11-13 09:27:10.245775
4320	4	424	Зона отдыха	2012-11-13 09:10:38.039669	2012-11-13 09:27:10.246918
4321	5	424	Трансфер, автостоянка, магазин, сауна с бассейном-купелью, тренажерный зал, маникюрный кабинет, массаж, аромотерапия, курсовочное лечение, программа по снижению веса, барбекю, экскурсионные услуги, вывоз на рыбалку, настольный теннис, WiFi	2012-11-13 09:10:38.040649	2012-11-13 09:27:10.248234
4322	6	424	10 минут до галечного пляжа, 15 минут до  песчаного	2012-11-13 09:10:38.041694	2012-11-13 09:27:10.249439
4323	7	424	 детская площадка	2012-11-13 09:10:38.042755	2012-11-13 09:27:10.25043
4329	13	631	ИП Батурин Александр Владимирович	2012-11-13 10:57:01.263519	2012-11-14 05:38:33.821539
4327	11	424	хорошее	2012-11-13 09:10:38.04829	2012-11-13 09:27:10.252592
4324	8	424	 кафе	2012-11-13 09:10:38.04399	2012-11-13 10:33:34.248567
4328	12	631		2012-11-13 10:57:01.26212	2012-11-13 10:57:01.26212
4332	3	631		2012-11-13 10:57:01.267393	2012-11-13 10:57:01.267393
4336	7	631		2012-11-13 10:57:01.271665	2012-11-13 10:57:01.271665
4337	8	631		2012-11-13 10:57:01.272818	2012-11-13 10:57:01.272818
4338	9	631		2012-11-13 10:57:01.274125	2012-11-13 10:57:01.274125
4330	1	631	возможна организация 2-х разового питания	2012-11-13 10:57:01.264894	2012-11-14 05:38:33.822761
4331	2	631	детский надуавной бассейн	2012-11-13 10:57:01.266047	2012-11-14 05:38:33.823707
4333	4	631	15 мин. от центра и  парка развлечений	2012-11-13 10:57:01.26853	2012-11-14 05:38:33.824604
4335	6	631	25 минут до песчаного пляжа	2012-11-13 10:57:01.2705	2012-11-14 05:38:33.826675
4478	6	1001	15 минут до песчаного пляжа	2012-11-22 13:22:34.244372	2012-11-22 13:31:03.682717
4480	8	1001	кафе в корпусе, восточно-европейская кухня, часы работы с 08:00 до 23:00, работает в период с 15.05. по 15.09	2012-11-22 13:22:34.246963	2012-11-22 13:31:03.684167
4483	11	1001	хорошее	2012-11-22 13:22:34.250763	2012-11-22 13:31:03.685711
4484	12	1003		2012-11-22 14:51:43.951187	2012-11-22 14:51:43.951187
4334	5	631	Трансфер, детская прогулочная коляска, организация экскурсий, гладильная доска, утюг, эл. чайник, автостоянка, WiFi, шезлонги, мангал	2012-11-13 10:57:01.269524	2012-11-14 05:38:33.825607
4339	10	631	Оборудованная  кухня  для самостоятельного приготовления пищи.	2012-11-13 10:57:01.27515	2012-11-14 05:38:33.827583
4340	11	631	хорошее	2012-11-13 10:57:01.276239	2012-11-14 05:38:33.828495
4341	12	977		2012-11-19 10:05:44.472535	2012-11-19 10:05:44.472535
4342	13	977		2012-11-19 10:05:44.474234	2012-11-19 10:05:44.474234
4345	3	977		2012-11-19 10:05:44.477516	2012-11-19 10:05:44.477516
4349	7	977		2012-11-19 10:05:44.483387	2012-11-19 10:05:44.483387
4351	9	977		2012-11-19 10:05:44.485422	2012-11-19 10:05:44.485422
4353	11	977		2012-11-19 10:05:44.487805	2012-11-19 10:05:44.487805
4343	1	977	3-х разовое питание в столовой отеля (по желанию)	2012-11-19 10:05:44.475546	2012-11-19 10:22:21.262468
4344	2	977	открытый бассейн	2012-11-19 10:05:44.476537	2012-11-19 10:22:21.26351
4346	4	977	Первая курортная зона	2012-11-19 10:05:44.47847	2012-11-19 10:22:21.264425
4347	5	977	Трансфер, автостоянка, утюг, гладильная доска, индивидуальная стирка - за доп. плату,  барбекю, интернет Wi Fi	2012-11-19 10:05:44.48057	2012-11-19 10:22:21.265376
4348	6	977	10 минут до песчаного пляжа	2012-11-19 10:05:44.482062	2012-11-19 10:22:21.266353
4350	8	977	Кафе "Встреча" (возможен заказ в номер или за столик во дворе)	2012-11-19 10:05:44.484407	2012-11-19 10:22:21.267414
4352	10	977	Имеется оборудованная кухня для самостоятельного приготовления пищи	2012-11-19 10:05:44.486508	2012-11-19 10:22:21.268386
4354	12	980		2012-11-19 10:39:01.357679	2012-11-19 10:39:01.357679
4355	13	980		2012-11-19 10:39:01.359269	2012-11-19 10:39:01.359269
4361	6	980		2012-11-19 10:39:01.367762	2012-11-19 10:39:01.367762
4362	7	980		2012-11-19 10:39:01.369318	2012-11-19 10:39:01.369318
4363	8	980		2012-11-19 10:39:01.370409	2012-11-19 10:39:01.370409
4364	9	980		2012-11-19 10:39:01.371334	2012-11-19 10:39:01.371334
4365	10	980		2012-11-19 10:39:01.372292	2012-11-19 10:39:01.372292
4356	1	980	В кафе отеля можно выбрать блюдо из меню, разработанного поваром или заказать еду на свой вкус. Также возможна организация комплексного питания (завтрак, ужин).	2012-11-19 10:39:01.360716	2012-11-19 10:42:22.939724
4357	2	980	детский бассейн	2012-11-19 10:39:01.362048	2012-11-19 10:50:05.936481
4358	3	980	20	2012-11-19 10:39:01.363391	2012-11-19 10:50:05.937663
4359	4	980	20 минут до центра города	2012-11-19 10:39:01.365109	2012-11-19 10:50:05.939103
4360	5	980	Бесплатная парковка, трансфер, прачечная, гладильная комната, Wi Fi, организация экскурсий	2012-11-19 10:39:01.36644	2012-11-19 10:50:05.940456
4366	11	980	хорошее	2012-11-19 10:39:01.373287	2012-11-19 10:50:05.941842
4367	12	986		2012-11-19 15:03:02.294318	2012-11-19 15:03:02.294318
4368	13	986		2012-11-19 15:03:02.296245	2012-11-19 15:03:02.296245
4370	2	986		2012-11-19 15:03:02.299668	2012-11-19 15:03:02.299668
4375	7	986		2012-11-19 15:03:02.308199	2012-11-19 15:03:02.308199
4377	9	986		2012-11-19 15:03:02.311306	2012-11-19 15:03:02.311306
4378	10	986		2012-11-19 15:03:02.312841	2012-11-19 15:03:02.312841
4379	11	986		2012-11-19 15:03:02.314421	2012-11-19 15:03:02.314421
4372	4	986	расположена в исторической части города Анапа, в чистом и спокойном районе «Малая бухта».	2012-11-19 15:03:02.303258	2012-11-19 15:08:15.035915
4374	6	986	расположена в 100-а метрах от галечного пляжа «Малая бухта» 	2012-11-19 15:03:02.306677	2012-11-19 15:08:15.038629
4376	8	986	 кафе «Мирабель» общей вместимостью в 80 чел.,  банкетный зал на 200 чел. и зимний бар на 40 чел	2012-11-19 15:03:02.309816	2012-11-19 15:08:15.039576
4369	1	986	комплексное питание в столовой  (завтрак, обед, ужин ) - по меню и на заказ	2012-11-19 15:03:02.297801	2012-11-19 15:37:14.780908
4371	3	986	115	2012-11-19 15:03:02.301225	2012-11-19 15:37:14.782673
4373	5	986	трансфер, автостоянка, организация экскурсий; телефонная и факсимильная  связь, Интернет, услуги индивидуальной стирки, сейф, ночная няня, машина с водителем, электро-чайник - за доп. плату, детская комната, библиотека, фен, утюг на этаже	2012-11-19 15:03:02.304848	2012-11-19 15:37:14.783821
4383	2	987		2012-11-19 16:48:54.527517	2012-11-19 16:48:54.527517
4388	7	987		2012-11-19 16:48:54.532602	2012-11-19 16:48:54.532602
4390	9	987		2012-11-19 16:48:54.534578	2012-11-19 16:48:54.534578
4391	10	987		2012-11-19 16:48:54.535568	2012-11-19 16:48:54.535568
4381	13	987	ИП Арутюнян Лева Григорьевич	2012-11-19 16:48:54.525469	2012-12-03 11:13:08.19157
4380	12	987	О-00116	2012-11-19 16:48:54.524148	2012-12-19 11:23:18.846799
4386	5	987	Трансфер, открытая охраняемая парковка, утреннее пробуждение по телефону, поднос багажа, сейфовые ячейки, служба портье, заказ такси,  услуги прачечной, банный комплекс, финская сауна и бассейн, конференц-зал, услуга междугородней и международной связи 	2012-11-19 16:48:54.530668	2012-11-20 07:02:52.210182
4385	4	987	расположен в центре города-курорта Анапа.	2012-11-19 16:48:54.529651	2012-12-03 11:13:08.19354
4392	11	987	хорошее	2012-11-19 16:48:54.536536	2012-11-20 07:02:52.21349
4393	12	989		2012-11-20 08:30:16.998578	2012-11-20 08:30:16.998578
4394	13	989		2012-11-20 08:30:17.000388	2012-11-20 08:30:17.000388
4396	2	989		2012-11-20 08:30:17.003333	2012-11-20 08:30:17.003333
4401	7	989		2012-11-20 08:30:17.009717	2012-11-20 08:30:17.009717
4403	9	989		2012-11-20 08:30:17.011861	2012-11-20 08:30:17.011861
4404	10	989		2012-11-20 08:30:17.013158	2012-11-20 08:30:17.013158
4395	1	989	Для отдыхающих в летний период организовано питание по системе "шведский стол". 	2012-11-20 08:30:17.001868	2012-11-20 08:37:17.438886
4397	3	989	55	2012-11-20 08:30:17.004765	2012-11-20 08:37:17.440274
4402	8	989	ресторан «Боспор"	2012-11-20 08:30:17.010873	2012-11-20 08:37:17.446257
4405	11	989	хорошее	2012-11-20 08:30:17.014179	2012-11-20 08:37:17.447585
4485	13	1003		2012-11-22 14:51:43.953251	2012-11-22 14:51:43.953251
4487	2	1003		2012-11-22 14:51:43.95626	2012-11-22 14:51:43.95626
4488	3	1003	41	2012-11-22 14:51:43.957717	2012-11-22 15:07:03.845109
4382	1	987	завтрак комплексный (несколько вариантов)	2012-11-19 16:48:54.526497	2012-12-03 10:57:46.564513
4384	3	987	37	2012-11-19 16:48:54.528489	2012-12-03 10:57:46.565615
4387	6	987	500 метров до песчаного пляжа. 	2012-11-19 16:48:54.531598	2012-12-03 11:13:08.19524
4398	4	989	"Боспор" находится в курортной зоне Анапы Высокий берег, в тихом месте, в стороне от шумных улиц, возле городского маяка.	2012-11-20 08:30:17.005883	2012-11-20 08:37:17.441509
4400	6	989	До галечного городского пляжа «Высокий берег» ~500 м, до нового городского галечного пляжа ~200 м.	2012-11-20 08:30:17.008336	2012-11-20 08:37:17.444804
4399	5	989	Room-servis – до 00.00, сейфовые ячейки на ресепшн. Заказ такси, трансфер.  Финская сауна с бассейном и просторной комнатой отдыха. Тренажерный зал. Кальянный зал, панорамная площадка с видом на море.	2012-11-20 08:30:17.006911	2012-11-20 09:12:10.279359
4406	12	465		2012-11-20 09:28:08.957916	2012-11-20 09:28:08.957916
4407	13	465		2012-11-20 09:28:08.959544	2012-11-20 09:28:08.959544
4409	2	465		2012-11-20 09:28:08.961935	2012-11-20 09:28:08.961935
4413	6	465		2012-11-20 09:28:08.967805	2012-11-20 09:28:08.967805
4414	7	465		2012-11-20 09:28:08.969304	2012-11-20 09:28:08.969304
4415	8	465		2012-11-20 09:28:08.970746	2012-11-20 09:28:08.970746
4416	9	465		2012-11-20 09:28:08.972196	2012-11-20 09:28:08.972196
4417	10	465		2012-11-20 09:28:08.97364	2012-11-20 09:28:08.97364
4418	11	465		2012-11-20 09:28:08.975048	2012-11-20 09:28:08.975048
4408	1	465	По желанию трехразовое в летнем кафе.	2012-11-20 09:28:08.960749	2012-11-20 09:34:28.010272
4412	5	465	 Wi-Fi  Побудка Вызов врача, такси Доставка корреспонденции в номер  Сейфовые ячейки Пляжных коврики  Организация экскурсий Организация пикников (имеется барбекю, домашний очаг) Услугами прачечной Трансфер (встреча и проводы)	2012-11-20 09:28:08.96635	2012-11-20 09:34:28.011351
4411	4	465	в центре Анапы	2012-11-20 09:28:08.964806	2012-11-20 09:36:43.427617
4410	3	465	20	2012-11-20 09:28:08.963381	2012-11-20 09:43:29.961173
4419	12	595		2012-11-22 06:01:16.995563	2012-11-22 06:01:16.995563
4420	13	595		2012-11-22 06:01:16.997186	2012-11-22 06:01:16.997186
4421	1	595	3-х разовое питание в столовой по заказному меню. Также может быть организовано оздоровительное питание, которое может входить в основной курс лечения, или являться его дополнительным видом терапии.	2012-11-22 06:01:16.998422	2012-11-22 06:01:16.998422
4422	2	595		2012-11-22 06:01:16.999369	2012-11-22 06:01:16.999369
4423	3	595		2012-11-22 06:01:17.000317	2012-11-22 06:01:17.000317
4430	10	595		2012-11-22 06:01:17.007352	2012-11-22 06:01:17.007352
4431	11	595	хорошее	2012-11-22 06:01:17.008309	2012-11-22 06:01:17.008309
4434	1	1220	питание в современной столовой работающей по принципу ресторана (заказное меню)	2012-11-22 07:51:35.78147	2012-11-22 07:56:05.368133
4427	7	595	детская игровая площадка, спортивные площадки (волейбольная площадка, баскетбольная площадка и др.)	2012-11-22 06:01:17.004353	2012-11-22 06:28:13.277836
4429	9	595		2012-11-22 06:01:17.006368	2012-11-22 06:28:13.278763
4424	4	595	расположен в центральной части города Анапа, в первой курортной зоне, на берегу пляжа Малая бухта.	2012-11-22 06:01:17.001316	2012-11-22 06:51:07.258514
4437	4	1220	 Пансионат-отель "София" расположился на первой линии Пионерского проспекта курорта Анапа и имеет прямой выход к собственному оборудованному пляжу. 	2012-11-22 07:51:35.785368	2012-11-22 07:56:05.369373
4426	6	595	в 300 метрах от пансионата расположен собственный оборудованный галечный пляж.	2012-11-22 06:01:17.003249	2012-11-22 06:51:07.260512
4492	7	1003		2012-11-22 14:51:43.963063	2012-11-22 14:51:43.963063
4425	5	595	трансфер, камера хранения, заказ билетов, сейф, прокат спортинвентаря, бильярд,  тренажерный зал, салон красоты и косметологический,  массажный, стоматологический кабинет, автостоянка, две сауны, экскурсионное бюро, дайвинг-центр, конференц-за	2012-11-22 06:01:17.002278	2012-11-22 06:54:08.577334
4428	8	595	кафе,  ресторан, состоящий из 3 стилизованных залов: охотничий домик, морской зал и итальянский дворик. Питание можно заказать прямо в номер.	2012-11-22 06:01:17.005414	2012-11-22 06:54:08.578775
4432	12	1220		2012-11-22 07:51:35.779418	2012-11-22 07:51:35.779418
4433	13	1220		2012-11-22 07:51:35.780525	2012-11-22 07:51:35.780525
4435	2	1220	большой  открытый бассейн (площадь зеркала свыше 600 кв. м.) с оборудованной прилегающей территорией шезлонгами, зонтами, имеет собственный бар.	2012-11-22 07:51:35.782814	2012-11-22 07:51:35.782814
4436	3	1220		2012-11-22 07:51:35.784204	2012-11-22 07:51:35.784204
4494	9	1003		2012-11-22 14:51:43.965681	2012-11-22 14:51:43.965681
4495	10	1003		2012-11-22 14:51:43.96709	2012-11-22 14:51:43.96709
4486	1	1003	В кафе предоставляется 3-х разовое комплексное питание (по желанию).	2012-11-22 14:51:43.954816	2012-11-22 15:04:18.792725
4489	4	1003	Отель расположен в центре курортной зоны.	2012-11-22 14:51:43.959134	2012-11-22 15:04:18.794229
4490	5	1003	сауна с  бассейном; бильярд; экскурсионное обслуживание; трансфер, автопарковка расположена  рядом с отелем.	2012-11-22 14:51:43.960573	2012-11-22 15:04:18.795474
4491	6	1003	Пляж общегородской в 10 минутах от Отеля.	2012-11-22 14:51:43.961929	2012-11-22 15:04:18.797178
4493	8	1003	Кафе-столовая	2012-11-22 14:51:43.964096	2012-11-22 15:04:18.798523
4496	11	1003	хорошее	2012-11-22 14:51:43.968436	2012-11-22 15:04:18.800088
4497	12	474		2012-11-23 06:38:48.253513	2012-11-23 06:38:48.253513
4498	13	474		2012-11-23 06:38:48.256486	2012-11-23 06:38:48.256486
4500	2	474		2012-11-23 06:38:48.26061	2012-11-23 06:38:48.26061
4505	7	474		2012-11-23 06:38:48.267277	2012-11-23 06:38:48.267277
4507	9	474		2012-11-23 06:38:48.270048	2012-11-23 06:38:48.270048
4499	1	474	Питание в кафе "Ташкент", заказное меню	2012-11-23 06:38:48.259148	2012-11-23 06:43:48.244918
4502	4	474	в черте города.	2012-11-23 06:38:48.263265	2012-11-23 06:43:48.245951
4504	6	474	Общегородской пляж. До городского пляжа ехать на маршрутном такси 15 минут; на такси 10 минут .	2012-11-23 06:38:48.265899	2012-11-23 06:43:48.247818
4509	11	474	хорошее	2012-11-23 06:38:48.272818	2012-11-23 06:43:48.251251
4501	3	474	21	2012-11-23 06:38:48.26208	2012-11-23 06:56:13.872524
4503	5	474	парковка, прачечная, трансфер, сауна	2012-11-23 06:38:48.264457	2012-11-23 06:56:13.874058
4728	9	587		2012-11-28 08:49:27.612593	2012-11-28 08:49:27.612593
4729	10	587		2012-11-28 08:49:27.613563	2012-11-28 08:49:27.613563
4727	8	587	кафе-бар	2012-11-28 08:49:27.611615	2012-11-28 08:52:44.527221
4439	6	1220	 Собственный песчаный пляж на берегу моря (25 метров от территории отеля) оборудованный спасательным и медицинским постом, шезлонгами, зонтами и теневыми навесами	2012-11-22 07:51:35.787842	2012-11-22 07:51:35.787842
4440	7	1220	игровые комнаты для самых маленьких (под присмотром воспитателей),детский боулинг, автодром, лабиринт, детский кинозал, детские игровые автоматы (более 30 видов) 	2012-11-22 07:51:35.789219	2012-11-22 07:51:35.789219
4441	8	1220	На территории пансионата на площади 600 кв.м располагается прекрасный зимний сад, в котором собранны более 100 экзотических растений со всех концов света, так же в зимнем саду расположен бар.	2012-11-22 07:51:35.790619	2012-11-22 07:51:35.790619
4442	9	1220		2012-11-22 07:51:35.791913	2012-11-22 07:51:35.791913
4443	10	1220		2012-11-22 07:51:35.793017	2012-11-22 07:51:35.793017
4444	11	1220	отличное	2012-11-22 07:51:35.794175	2012-11-22 07:56:05.370678
4438	5	1220	WiFi, игровой центр: боулинг, бильярд, SPA комплекс (физио процедуры, спелео камера, альфа капсула, комплекс бань (фито, инфракрасная, русская, финская, турецкий хамам, японская), современный комплекс для мыльного массажа, конференц зал.  	2012-11-22 07:51:35.786341	2012-11-22 09:36:31.897299
4446	13	472		2012-11-22 10:22:48.368203	2012-11-22 10:22:48.368203
4449	3	472		2012-11-22 10:22:48.372798	2012-11-22 10:22:48.372798
4453	7	472		2012-11-22 10:22:48.37872	2012-11-22 10:22:48.37872
4455	9	472		2012-11-22 10:22:48.381706	2012-11-22 10:22:48.381706
4456	10	472		2012-11-22 10:22:48.383196	2012-11-22 10:22:48.383196
4447	1	472	Питание за доп. плату в ресторане «Паланга», имеются комплексные обеды.	2012-11-22 10:22:48.369729	2012-11-22 10:32:24.371344
4448	2	472	открытый  бассейн (с подогревом в зимний период).Оборудован площадкой с современными лежаками. При желании гостей на площадку бассейна может быть подан завтрак или ужин при свечах.	2012-11-22 10:22:48.371232	2012-11-22 10:32:24.372947
4450	4	472	 2-я линия. Район моршколы	2012-11-22 10:22:48.37432	2012-11-22 10:32:24.37402
4451	5	472	Сауна, салон красоты, прачечная, автостоянка, интернет, телефонная связь; Бесплатный трансфер; Организация экскурсий; Организация корпоративных вечеринок, праздников и мероприятий; Организация детского отдыха (летний детский отдых, каникулы, праздники).\t 	2012-11-22 10:22:48.375845	2012-11-22 10:32:24.374983
4452	6	472	15 минут до галечного пляжа	2012-11-22 10:22:48.377319	2012-11-22 10:32:24.375929
4454	8	472	бар, ресторан	2012-11-22 10:22:48.380137	2012-11-22 10:32:24.377007
4457	11	472	хорошее	2012-11-22 10:22:48.384462	2012-11-22 10:32:24.378239
4459	13	475		2012-11-22 11:05:39.549684	2012-11-22 11:05:39.549684
4465	6	475	 В 150 метрах от санатория расположен лечебный пляж, оборудованный шезлонгами и навесами.	2012-11-22 11:05:39.556445	2012-11-22 11:05:39.556445
4469	10	475		2012-11-22 11:05:39.561642	2012-11-22 11:05:39.561642
4460	1	475	в ресторане санатория по системе "шведский стол". Кому необходимо - приготовят лечебное питание по назначению врача.	2012-11-22 11:05:39.550801	2012-11-22 11:16:46.975056
4474	2	1001	открытый бассейн 2*8 с пресной водой, пользование бассейном входит в стоимость, работает 15.05.-15.09	2012-11-22 13:22:34.238746	2012-11-22 13:31:03.679524
4464	5	475	СПА-центр Салон красоты Парикмахерская Косметологический и массажный кабинет Библиотека Терминал  Парковка Багажная комната Прачечная; Утреннее пробуждение по телефону, поднос багажа, служба портье Wi-Fi на территории (платно) Заказ такси, цветов	2012-11-22 11:05:39.555012	2012-11-22 11:16:46.977795
4467	8	475	столовая, летнее кафе, лобби-бар, фито-бар	2012-11-22 11:05:39.55853	2012-11-22 11:16:46.979139
4468	9	475	сердечно-сосудистой системы; нервной системы; опорно-двигательного аппарата; пищеварительного тракта; эндокринной системы (сахарный диабет и ожирение); ЛОР-органов и дыхательных путей.   	2012-11-22 11:05:39.560142	2012-11-22 11:30:48.109537
4461	2	475	крытый бассейн  20*9, вода пресная, детское отделение, пользование бассейном, входит в стоимость, открытый 17*9, вода пресная, детское отделение, пользование бассейном, входит в стоимость, работает сезонно с мая по октябрь	2012-11-22 11:05:39.551748	2012-11-22 11:35:32.907376
4462	3	475	88	2012-11-22 11:05:39.552786	2012-11-22 11:35:32.908437
4463	4	475	расположен в центральной части Анапы на городской набережной практически у берега Черного моря.	2012-11-22 11:05:39.553752	2012-11-22 11:35:32.909554
4470	11	475	хорошее	2012-11-22 11:05:39.56322	2012-11-22 11:40:52.284209
4466	7	475	оборудованная детская площадка и детская комната	2012-11-22 11:05:39.557515	2012-11-22 11:46:32.828038
4471	12	1001		2012-11-22 13:22:34.235065	2012-11-22 13:22:34.235065
4472	13	1001		2012-11-22 13:22:34.236433	2012-11-22 13:22:34.236433
4473	1	1001		2012-11-22 13:22:34.237743	2012-11-22 13:22:34.237743
4479	7	1001		2012-11-22 13:22:34.245648	2012-11-22 13:22:34.245648
4481	9	1001		2012-11-22 13:22:34.248392	2012-11-22 13:22:34.248392
4482	10	1001		2012-11-22 13:22:34.249534	2012-11-22 13:22:34.249534
4476	4	1001	расположен в центральной части города-курорта Анапа.	2012-11-22 13:22:34.241608	2012-11-22 13:31:03.680804
4477	5	1001	Персональный будильник  За доп. плату: Сауна с бассейном  Массажист(оплата по договоренности) Персональные экскурсии( по договоренности) Встреча с иных пунктов прибытия(по договоренности) Услуги прачечной(1 загрузка-1 барабан) 	2012-11-22 13:22:34.242932	2012-11-22 13:31:03.681792
4475	3	1001	22	2012-11-22 13:22:34.240184	2012-11-22 13:57:18.514146
4445	12	472	О-00119	2012-11-22 10:22:48.366572	2012-12-19 12:03:51.278034
4458	12	475	О-00120	2012-11-22 11:05:39.547952	2012-12-19 12:31:55.790658
4506	8	474	Кафе "Ташкент" предлагает национальную узбекскую и русскую кухни. Время работы кафе с 9.00 до "последнего посетителя".	2012-11-23 06:38:48.268642	2012-11-23 06:43:48.248914
4508	10	474	Имеется оборудованная кухня для самостоятельного приготовления пищи (Холодильник, газовая плита, микроволновая печь, электрический чайник, кухонный стол, кухонная раковина, стол обеденный, стулья). 	2012-11-23 06:38:48.271416	2012-11-23 06:43:48.250191
4510	12	998		2012-11-23 07:22:59.024818	2012-11-23 07:22:59.024818
4511	13	998		2012-11-23 07:22:59.026688	2012-11-23 07:22:59.026688
4513	2	998		2012-11-23 07:22:59.028936	2012-11-23 07:22:59.028936
4514	3	998		2012-11-23 07:22:59.029901	2012-11-23 07:22:59.029901
4516	5	998		2012-11-23 07:22:59.031956	2012-11-23 07:22:59.031956
4518	7	998		2012-11-23 07:22:59.033949	2012-11-23 07:22:59.033949
4519	8	998		2012-11-23 07:22:59.034954	2012-11-23 07:22:59.034954
4520	9	998		2012-11-23 07:22:59.035952	2012-11-23 07:22:59.035952
4521	10	998		2012-11-23 07:22:59.037155	2012-11-23 07:22:59.037155
4512	1	998	По желанию клиента гостиница "Чайка" предоставляет 2х разовое питание(завтрак, обед).	2012-11-23 07:22:59.027904	2012-11-23 07:37:31.767274
4515	4	998	центр Анапы	2012-11-23 07:22:59.0309	2012-11-23 07:37:31.769219
4517	6	998	7 минут  до центрального пляжа.	2012-11-23 07:22:59.033017	2012-11-23 07:37:31.770944
4522	11	998	хорошее	2012-11-23 07:22:59.038117	2012-11-23 07:37:31.772624
4531	7	1004		2012-11-23 10:43:51.773045	2012-11-23 10:43:51.773045
4533	9	1004		2012-11-23 10:43:51.775543	2012-11-23 10:43:51.775543
4534	10	1004		2012-11-23 10:43:51.776597	2012-11-23 10:43:51.776597
4525	1	1004	 3-х разовое по системе “заказное меню”, за доп. плату.	2012-11-23 10:43:51.765793	2012-11-23 10:48:03.54685
4527	3	1004	22	2012-11-23 10:43:51.767632	2012-11-23 10:48:03.547918
4528	4	1004	 центральная часть курортного города	2012-11-23 10:43:51.768809	2012-11-23 10:48:03.548846
4530	6	1004	400 метров.	2012-11-23 10:43:51.771824	2012-11-23 10:48:03.549812
4526	2	1004	нет	2012-11-23 10:43:51.766712	2012-11-23 10:53:13.039733
4529	5	1004	Утреннее пробуждение по телефону Доставка корреспонденции в номер Открытая охраняемая парковка Организация экскурсий Сейфовые ячейки Услуги прачечной Финская сауна  Кальянная Заказ такси Трансфер Парикмахерская 	2012-11-23 10:43:51.770067	2012-11-23 10:53:13.041303
4532	8	1004	Кафе «Нева»	2012-11-23 10:43:51.774564	2012-11-23 10:53:13.042655
4535	11	1004	хорошее	2012-11-23 10:43:51.777793	2012-11-23 10:53:13.043989
4536	12	478		2012-11-23 11:28:24.406045	2012-11-23 11:28:24.406045
4537	13	478		2012-11-23 11:28:24.40788	2012-11-23 11:28:24.40788
4544	7	478		2012-11-23 11:28:24.416074	2012-11-23 11:28:24.416074
4545	8	478		2012-11-23 11:28:24.41705	2012-11-23 11:28:24.41705
4546	9	478		2012-11-23 11:28:24.418129	2012-11-23 11:28:24.418129
4547	10	478		2012-11-23 11:28:24.41924	2012-11-23 11:28:24.41924
4538	1	478	Питание в столовой при гостинице, по желанию возможно 3-х разовое комплексное питание.	2012-11-23 11:28:24.409404	2012-11-23 11:35:03.650672
4539	2	478	открытый бассейн с площадкой для отдыха	2012-11-23 11:28:24.410902	2012-11-23 11:35:03.651774
4540	3	478	30	2012-11-23 11:28:24.411911	2012-11-23 11:35:03.652702
4541	4	478	Находится в 1 км от аквапарка «Золотой пляж», в 2 км от центрального парка развлечений.	2012-11-23 11:28:24.413029	2012-11-23 11:35:03.653622
4542	5	478	автостоянка, трансфер,  бильярд, сауна с комнатой отдыха  	2012-11-23 11:28:24.414054	2012-11-23 11:35:03.654559
4543	6	478	20 минут до песчаного пляжа	2012-11-23 11:28:24.415099	2012-11-23 11:35:03.655495
4548	11	478	хорошее	2012-11-23 11:28:24.420391	2012-11-23 11:35:03.656473
4549	12	1009		2012-11-23 12:17:03.897051	2012-11-23 12:17:03.897051
4550	13	1009		2012-11-23 12:17:03.898642	2012-11-23 12:17:03.898642
4551	1	1009		2012-11-23 12:17:03.900135	2012-11-23 12:17:03.900135
4552	2	1009		2012-11-23 12:17:03.90155	2012-11-23 12:17:03.90155
4553	3	1009		2012-11-23 12:17:03.902958	2012-11-23 12:17:03.902958
4557	7	1009		2012-11-23 12:17:03.907415	2012-11-23 12:17:03.907415
4559	9	1009		2012-11-23 12:17:03.90995	2012-11-23 12:17:03.90995
4560	10	1009		2012-11-23 12:17:03.911098	2012-11-23 12:17:03.911098
4561	11	1009		2012-11-23 12:17:03.91203	2012-11-23 12:17:03.91203
4554	4	1009	расположен в центре города-курорта Анапа	2012-11-23 12:17:03.904175	2012-11-23 12:35:47.466062
4555	5	1009	Организация экскурсий, терминал, парковка, утреннее пробуждение по телефону, сейфовые ячейки, Wi-Fi на территории, заказ такси, цветов, прокат DVD. Возможность прохождения лечения по необходимому профилю в крупнейших базах на Юге Росси как ДиЛуч и БФО.	2012-11-23 12:17:03.905106	2012-11-23 12:35:47.467233
4556	6	1009	70 метров от моря	2012-11-23 12:17:03.906342	2012-11-23 12:35:47.4682
4558	8	1009	кафе «Два Континента»	2012-11-23 12:17:03.908727	2012-11-23 12:35:47.469446
4563	13	486		2012-11-23 13:55:40.181536	2012-11-23 13:55:40.181536
4564	1	486	питание  в кафе  (завтрак, обед, ужин), завтрак для детей до 6 лет	2012-11-23 13:55:40.182921	2012-11-23 13:55:40.182921
4565	2	486		2012-11-23 13:55:40.184308	2012-11-23 13:55:40.184308
4566	3	486		2012-11-23 13:55:40.185725	2012-11-23 13:55:40.185725
4567	4	486	расположен а скалистом высоком берегу, в Ореховой роще	2012-11-23 13:55:40.187044	2012-11-23 14:08:07.163876
4635	7	572		2012-11-27 06:42:22.407932	2012-11-27 06:42:22.407932
4636	8	572		2012-11-27 06:42:22.409254	2012-11-27 06:42:22.409254
4637	9	572		2012-11-27 06:42:22.410214	2012-11-27 06:42:22.410214
4638	10	572		2012-11-27 06:42:22.411233	2012-11-27 06:42:22.411233
4639	11	572		2012-11-27 06:42:22.412209	2012-11-27 06:42:22.412209
4634	6	572	400 метров.	2012-11-27 06:42:22.406982	2012-11-27 06:44:16.115441
4629	1	572	комплексное питание. Завтрак входит в стоимость проживания.	2012-11-27 06:42:22.401889	2012-11-27 06:53:58.84662
4640	12	1030		2012-11-27 08:07:18.710482	2012-11-27 08:07:18.710482
4641	13	1030		2012-11-27 08:07:18.712206	2012-11-27 08:07:18.712206
4643	2	1030		2012-11-27 08:07:18.714786	2012-11-27 08:07:18.714786
4644	3	1030	19	2012-11-27 08:07:18.716046	2012-11-27 08:07:18.716046
4648	7	1030		2012-11-27 08:07:18.720222	2012-11-27 08:07:18.720222
4649	8	1030	кафе "Луна и Яичница", интернет-кафе "Джуманджи".	2012-11-27 08:07:18.721273	2012-11-27 08:07:18.721273
4650	9	1030		2012-11-27 08:07:18.722612	2012-11-27 08:07:18.722612
4651	10	1030		2012-11-27 08:07:18.724016	2012-11-27 08:07:18.724016
4642	1	1030	3-х разовое комплексное питание.	2012-11-27 08:07:18.713493	2012-11-27 08:24:15.89213
4647	6	1030	 500 м от моря	2012-11-27 08:07:18.719293	2012-11-27 08:24:15.895573
4804	7	1226		2012-12-04 09:01:33.393704	2012-12-04 09:01:33.393704
4806	9	1226		2012-12-04 09:01:33.396135	2012-12-04 09:01:33.396135
4807	10	1226		2012-12-04 09:01:33.397527	2012-12-04 09:01:33.397527
4523	12	1004	О-00121	2012-11-23 10:43:51.763738	2012-12-19 13:17:03.310248
4562	12	486	О-00122	2012-11-23 13:55:40.179638	2012-12-19 13:39:39.551639
4572	9	486		2012-11-23 13:55:40.194208	2012-11-23 13:55:40.194208
4573	10	486		2012-11-23 13:55:40.195604	2012-11-23 13:55:40.195604
4568	5	486	Экскурсии Трансфер Стоянка у отеля Закрытая стоянка Шезлонги, зонтики на территории Фен Депозитарий Гладильная+утюг Прачечная Велосипеды Спортинвентарь (тренажеры, стол для малого тенниса) Массаж Прокат летнего кафе и мангала на скале	2012-11-23 13:55:40.188431	2012-11-23 13:56:05.579951
4569	6	486	5 минут до галечного пляжа	2012-11-23 13:55:40.19	2012-11-23 14:08:07.16543
4570	7	486	Детская площадка с надувным бассейном, качели, песочница Видеозал для детей	2012-11-23 13:55:40.191381	2012-11-23 14:08:07.16663
4571	8	486	Кафе	2012-11-23 13:55:40.192833	2012-11-23 14:08:07.167806
4574	11	486	хорошее	2012-11-23 13:55:40.197014	2012-11-23 14:08:07.16914
4576	13	1052		2012-11-26 09:20:05.17227	2012-11-26 09:20:05.17227
4578	2	1052		2012-11-26 09:20:05.174874	2012-11-26 09:20:05.174874
4579	3	1052		2012-11-26 09:20:05.176223	2012-11-26 09:20:05.176223
4583	7	1052		2012-11-26 09:20:05.18184	2012-11-26 09:20:05.18184
4585	9	1052		2012-11-26 09:20:05.184762	2012-11-26 09:20:05.184762
4586	10	1052		2012-11-26 09:20:05.186369	2012-11-26 09:20:05.186369
4577	1	1052	3-х разовое питание в кафе. Завтрак включен в стоимость проживания. На крыше место для барбекю. 	2012-11-26 09:20:05.173718	2012-11-26 09:30:22.58324
4580	4	1052	Удачное месторасположение отеля позволяет ходить и на песчаный, и на галечный пляжи.	2012-11-26 09:20:05.177582	2012-11-26 09:30:22.584833
4581	5	1052	 Трансфер Банкетный зал Стоянка неохраняемая напротив отеля Камера хранения Прачечная Заказ такси Интернет бесплатно	2012-11-26 09:20:05.178843	2012-11-26 09:30:22.586103
4582	6	1052	400 метров до галечного пляжа.	2012-11-26 09:20:05.180313	2012-11-26 09:30:22.587407
4584	8	1052	Кафе	2012-11-26 09:20:05.183299	2012-11-26 09:30:22.588715
4587	11	1052	хорошее	2012-11-26 09:20:05.187937	2012-11-26 09:30:22.589984
4589	13	1221		2012-11-26 10:06:20.201527	2012-11-26 10:06:20.201527
4591	2	1221		2012-11-26 10:06:20.203503	2012-11-26 10:06:20.203503
4592	3	1221		2012-11-26 10:06:20.204436	2012-11-26 10:06:20.204436
4595	6	1221	в 10 минутах ходьбы от галечного пляжа и 15 минутах от песочного пляжа. 	2012-11-26 10:06:20.207326	2012-11-26 10:06:20.207326
4596	7	1221		2012-11-26 10:06:20.208273	2012-11-26 10:06:20.208273
4598	9	1221		2012-11-26 10:06:20.210252	2012-11-26 10:06:20.210252
4599	10	1221		2012-11-26 10:06:20.211212	2012-11-26 10:06:20.211212
4590	1	1221	В пансионате есть своя собственная столовая, питание двухразовое, а третье питание за дополнительную плату, по заказному меню. Для детей до пяти лет предусматривается отдельное детское питание.	2012-11-26 10:06:20.202502	2012-11-26 10:12:03.683111
4593	4	1221	расположен в частном секторе города Анапа район Высокого берега.	2012-11-26 10:06:20.205406	2012-11-26 10:12:03.68418
4594	5	1221	организация экскурсий, платная охраняемая автостоянка, сауна с бассейном, бильярд, боулинг,Площадка для игры в малый теннис, где предоставляется прокат спортинвентаря, дискотека кафе, танцзал	2012-11-26 10:06:20.206361	2012-11-26 10:12:03.685494
4597	8	1221	кафе, бар	2012-11-26 10:06:20.209231	2012-11-26 10:12:03.686801
4600	11	1221	хорошее	2012-11-26 10:06:20.212261	2012-11-26 10:12:03.687826
4601	12	571		2012-11-26 16:24:29.937967	2012-11-26 16:24:29.937967
4602	13	571		2012-11-26 16:24:29.939648	2012-11-26 16:24:29.939648
4603	1	571	предоставляется комплексное трехразовое питание.. 	2012-11-26 16:24:29.941087	2012-11-26 16:24:29.941087
4604	2	571		2012-11-26 16:24:29.942494	2012-11-26 16:24:29.942494
4606	4	571		2012-11-26 16:24:29.945295	2012-11-26 16:24:29.945295
4607	5	571	Трансфер (за доп. плату) Организвция экскурсий Гладильная доска + утюг; Мангал; Летняя беседка; Автостоянка; Wi-Fi; настольные игры	2012-11-26 16:24:29.946677	2012-11-26 16:24:29.946677
4608	6	571	Ближайший спуск к морю находится на улице 40 лет Победы (галечный пляж), в 15 минутах ходьбы пешком. Песчаный пляж расположен в 20 минутах ходьбы пешком по ул. Астраханской.	2012-11-26 16:24:29.948067	2012-11-26 16:24:29.948067
4609	7	571		2012-11-26 16:24:29.94949	2012-11-26 16:24:29.94949
4611	9	571		2012-11-26 16:24:29.952338	2012-11-26 16:24:29.952338
4612	10	571	Имеется оборудованная кухня для самостоятельного приготовления пищи	2012-11-26 16:24:29.953735	2012-11-26 16:24:29.953735
4610	8	571	кафе	2012-11-26 16:24:29.950939	2012-11-26 16:30:46.578272
4613	11	571	хорошее	2012-11-26 16:24:29.955121	2012-11-26 16:30:46.580254
4605	3	571	33	2012-11-26 16:24:29.943883	2012-11-26 16:47:07.734705
4614	12	1222		2012-11-26 17:12:08.896808	2012-11-26 17:12:08.896808
4615	13	1222		2012-11-26 17:12:08.898383	2012-11-26 17:12:08.898383
4616	1	1222		2012-11-26 17:12:08.899812	2012-11-26 17:12:08.899812
4619	4	1222	курортная часть поселка Витязево.	2012-11-26 17:12:08.904126	2012-11-26 17:12:08.904126
4621	6	1222	100 м до песчаного пляжа.	2012-11-26 17:12:08.906993	2012-11-26 17:12:08.906993
4622	7	1222		2012-11-26 17:12:08.908414	2012-11-26 17:12:08.908414
4623	8	1222	 летнее кафе (шашлык, напитки)	2012-11-26 17:12:08.909904	2012-11-26 17:12:08.909904
4624	9	1222		2012-11-26 17:12:08.911313	2012-11-26 17:12:08.911313
4626	11	1222	хорошее	2012-11-26 17:12:08.914181	2012-11-26 17:12:08.914181
4617	2	1222	открытый бассейн с подогревом	2012-11-26 17:12:08.901266	2012-11-27 05:48:48.34725
4618	3	1222	30	2012-11-26 17:12:08.902681	2012-11-27 05:48:48.34881
4620	5	1222	Трансфер Автостоянка Гладильная Утюг и гладильная доска на каждом этаже Предоставляются сушилки для белья 	2012-11-26 17:12:08.905576	2012-11-27 05:48:48.350183
4625	10	1222	 имеется ухня для самостоятельного приготовления пищи	2012-11-26 17:12:08.912764	2012-11-27 05:48:48.351512
4627	12	572		2012-11-27 06:42:22.399766	2012-11-27 06:42:22.399766
4628	13	572		2012-11-27 06:42:22.40096	2012-11-27 06:42:22.40096
4630	2	572		2012-11-27 06:42:22.402818	2012-11-27 06:42:22.402818
4631	3	572		2012-11-27 06:42:22.40405	2012-11-27 06:42:22.40405
4632	4	572		2012-11-27 06:42:22.405115	2012-11-27 06:42:22.405115
4633	5	572	междугородная и международная связь, организация экскурсий, трансфер, выезд на рыбалку и охоту, автостоянка, WI-FI, стиральная машина, доставка корреспонденции в номер, побудка, заказ такси, пользование мед. аптечкой, вызов врача.	2012-11-27 06:42:22.406043	2012-11-27 06:42:22.406043
4588	12	1221	О-00123	2012-11-26 10:06:20.200434	2012-12-19 13:59:17.930154
4575	12	1052	О-00124	2012-11-26 09:20:05.170404	2012-12-19 14:09:18.067055
4645	4	1030	 Отель находится за пределами жилого массива.	2012-11-27 08:07:18.717279	2012-11-27 08:24:15.893162
4646	5	1030	автостоянка, кафе-бар, интернет-кафе, катамараны, танцпол,	2012-11-27 08:07:18.718306	2012-11-27 08:24:15.894301
4652	11	1030	хорошее	2012-11-27 08:07:18.725445	2012-11-27 08:24:15.896571
4654	13	550		2012-11-27 08:47:26.122186	2012-11-27 08:47:26.122186
4656	2	550		2012-11-27 08:47:26.125143	2012-11-27 08:47:26.125143
4658	4	550		2012-11-27 08:47:26.127184	2012-11-27 08:47:26.127184
4661	7	550		2012-11-27 08:47:26.130086	2012-11-27 08:47:26.130086
4663	9	550		2012-11-27 08:47:26.131962	2012-11-27 08:47:26.131962
4664	10	550		2012-11-27 08:47:26.133303	2012-11-27 08:47:26.133303
4655	1	550	Организовано 3-х разовое питание. Питание оплачивается отдельно от стоимости проживания. 	2012-11-27 08:47:26.123615	2012-11-27 09:19:56.465876
4657	3	550	18	2012-11-27 08:47:26.126199	2012-11-27 09:19:56.467274
4659	5	550	Трансфер Сауна Гладильная Парковка перед гостиницей, под видео-наблюдением, бесплатно Электрочайник, фен выдаются по требованию, бесплатно  	2012-11-27 08:47:26.128158	2012-11-27 09:19:56.468517
4660	6	550	800 м до песчаного пляжа	2012-11-27 08:47:26.129132	2012-11-27 09:19:56.469797
4662	8	550	кафе	2012-11-27 08:47:26.131038	2012-11-27 09:19:56.47116
4665	11	550	хорошее	2012-11-27 08:47:26.134466	2012-11-27 09:19:56.472421
4666	12	568		2012-11-27 09:47:07.859953	2012-11-27 09:47:07.859953
4667	13	568		2012-11-27 09:47:07.8614	2012-11-27 09:47:07.8614
4668	1	568		2012-11-27 09:47:07.862829	2012-11-27 09:47:07.862829
4669	2	568		2012-11-27 09:47:07.864084	2012-11-27 09:47:07.864084
4670	3	568		2012-11-27 09:47:07.865176	2012-11-27 09:47:07.865176
4671	4	568		2012-11-27 09:47:07.86653	2012-11-27 09:47:07.86653
4672	5	568		2012-11-27 09:47:07.867882	2012-11-27 09:47:07.867882
4673	6	568		2012-11-27 09:47:07.86931	2012-11-27 09:47:07.86931
4674	7	568		2012-11-27 09:47:07.870689	2012-11-27 09:47:07.870689
4675	8	568		2012-11-27 09:47:07.871644	2012-11-27 09:47:07.871644
4676	9	568		2012-11-27 09:47:07.872589	2012-11-27 09:47:07.872589
4677	10	568		2012-11-27 09:47:07.873674	2012-11-27 09:47:07.873674
4678	11	568		2012-11-27 09:47:07.874607	2012-11-27 09:47:07.874607
4679	12	570		2012-11-27 10:02:32.270951	2012-11-27 10:02:32.270951
4680	13	570		2012-11-27 10:02:32.272392	2012-11-27 10:02:32.272392
4681	1	570	2-х, 3-х разовое питание в кафе-столовой на территории гостиницы.	2012-11-27 10:02:32.273468	2012-11-27 10:02:32.273468
4682	2	570	бассейн  (6х8) с подогревом	2012-11-27 10:02:32.274687	2012-11-27 10:02:32.274687
4683	3	570		2012-11-27 10:02:32.276112	2012-11-27 10:02:32.276112
4684	4	570		2012-11-27 10:02:32.277118	2012-11-27 10:02:32.277118
4685	5	570	Трансфер, парковка,  Wi-Fi интернет бесплатно, сейф (у хозяина), гладильная + утюг, прачечная (платно),  чай, кофе в течении дня бесплатно.	2012-11-27 10:02:32.278438	2012-11-27 10:02:32.278438
4686	6	570	10 минут до галечного пляжа, 15 минут до  песчаного. Для желающих купаться и загорать на пляже за городом организована бесплатная доставка два раза в день. 	2012-11-27 10:02:32.279956	2012-11-27 10:02:32.279956
4687	7	570	Качели.  Каждый вечер для детей показ мультфильмов и фильмов в кафе.	2012-11-27 10:02:32.281261	2012-11-27 10:02:32.281261
4688	8	570	Кафе-столовая	2012-11-27 10:02:32.28222	2012-11-27 10:02:32.28222
4689	9	570		2012-11-27 10:02:32.283263	2012-11-27 10:02:32.283263
4690	10	570		2012-11-27 10:02:32.284263	2012-11-27 10:02:32.284263
4691	11	570	хорошее	2012-11-27 10:02:32.285256	2012-11-27 10:02:32.285256
4692	12	556		2012-11-28 07:44:45.344966	2012-11-28 07:44:45.344966
4693	13	556		2012-11-28 07:44:45.346773	2012-11-28 07:44:45.346773
4694	1	556		2012-11-28 07:44:45.348227	2012-11-28 07:44:45.348227
4695	2	556		2012-11-28 07:44:45.349375	2012-11-28 07:44:45.349375
4697	4	556	1-я береговая линия	2012-11-28 07:44:45.351684	2012-11-28 07:44:45.351684
4698	5	556		2012-11-28 07:44:45.353012	2012-11-28 07:44:45.353012
4699	6	556	 150 метрах от галечного пляжа	2012-11-28 07:44:45.354469	2012-11-28 07:44:45.354469
4700	7	556		2012-11-28 07:44:45.355789	2012-11-28 07:44:45.355789
4701	8	556		2012-11-28 07:44:45.357109	2012-11-28 07:44:45.357109
4702	9	556		2012-11-28 07:44:45.358315	2012-11-28 07:44:45.358315
4696	3	556	12	2012-11-28 07:44:45.350366	2012-11-28 07:54:21.69777
4703	10	556	Имеется оборудованная кухня для самостоятельного приготовления пищи.	2012-11-28 07:44:45.359446	2012-11-28 07:54:21.698977
4704	11	556	хорошее	2012-11-28 07:44:45.360854	2012-11-28 07:54:21.700331
4705	12	1043		2012-11-28 08:16:47.175276	2012-11-28 08:16:47.175276
4706	13	1043		2012-11-28 08:16:47.176692	2012-11-28 08:16:47.176692
4707	1	1043	2-разовое завтрак+ужин комплексное.	2012-11-28 08:16:47.177656	2012-11-28 08:16:47.177656
4708	2	1043	крытый бассейн 7*3, вода пресная, пользование бассейном, входит в стоимость, работает, круглогодично	2012-11-28 08:16:47.17859	2012-11-28 08:16:47.17859
4710	4	1043		2012-11-28 08:16:47.181038	2012-11-28 08:16:47.181038
4711	5	1043	трансфер, Wi Fi, стирка, глажка, пользование сейфом, пользование утюгом, оргаенизация экскурсий, услуги межгорода, вызоа такси, вызов врача,  финская сауна с бассейном, открытая бесплатная парковка	2012-11-28 08:16:47.182524	2012-11-28 08:16:47.182524
4712	6	1043	800 м	2012-11-28 08:16:47.18405	2012-11-28 08:16:47.18405
4713	7	1043		2012-11-28 08:16:47.185653	2012-11-28 08:16:47.185653
4715	9	1043		2012-11-28 08:16:47.18859	2012-11-28 08:16:47.18859
4716	10	1043		2012-11-28 08:16:47.190048	2012-11-28 08:16:47.190048
4717	11	1043	хорошее	2012-11-28 08:16:47.191448	2012-11-28 08:16:47.191448
4709	3	1043	21	2012-11-28 08:16:47.179532	2012-11-28 08:25:19.441918
4714	8	1043		2012-11-28 08:16:47.187145	2012-11-28 08:37:03.600992
4718	12	587		2012-11-28 08:49:27.601473	2012-11-28 08:49:27.601473
4719	13	587		2012-11-28 08:49:27.602867	2012-11-28 08:49:27.602867
4720	1	587	В стоимость номера входит двухразовое питание: усиленный завтрак с 8-00 до 10-30 - молочное, мясные блюда, выпечка, сыр, салаты; ужин с 18-00 до 20-30 : Фрукты, овощи, соки, мясное блюдо, выпечка, салаты, фрукты, овощи,со 	2012-11-28 08:49:27.604127	2012-11-28 08:49:27.604127
4721	2	587		2012-11-28 08:49:27.605159	2012-11-28 08:49:27.605159
4722	3	587		2012-11-28 08:49:27.606109	2012-11-28 08:49:27.606109
4723	4	587		2012-11-28 08:49:27.607272	2012-11-28 08:49:27.607272
4726	7	587		2012-11-28 08:49:27.610639	2012-11-28 08:49:27.610639
4724	5	587	охраняемая автостоянка, сейф, экскурсионное бюро, сауна, зал для игр (бильярд,настольный теннис). Отдыхающим может быть предложен лечебный массаж, курсовки на санаторное лечение. 	2012-11-28 08:49:27.608485	2012-11-28 08:52:44.525032
4725	6	587	900 метров до галечного пляжа	2012-11-28 08:49:27.609521	2012-11-28 08:52:44.526231
4653	12	550	О-00118	2012-11-27 08:47:26.121001	2012-12-19 11:43:20.641153
4730	11	587	хорошее	2012-11-28 08:49:27.614549	2012-11-28 08:52:44.528446
4731	12	593		2012-11-28 09:39:29.78689	2012-11-28 09:39:29.78689
4732	13	593		2012-11-28 09:39:29.788472	2012-11-28 09:39:29.788472
4734	2	593		2012-11-28 09:39:29.791004	2012-11-28 09:39:29.791004
4736	4	593		2012-11-28 09:39:29.793549	2012-11-28 09:39:29.793549
4740	8	593		2012-11-28 09:39:29.79748	2012-11-28 09:39:29.79748
4741	9	593		2012-11-28 09:39:29.79854	2012-11-28 09:39:29.79854
4733	1	593	3-х разовое питание в столовой, расположенной в здании пансионата. 	2012-11-28 09:39:29.789486	2012-11-28 09:48:30.724991
4735	3	593	25	2012-11-28 09:39:29.792391	2012-11-28 09:48:30.727225
4776	5	1224	Автостоянка Сауна Гладильная Трансферт	2012-12-03 14:55:11.784486	2012-12-03 14:59:58.02341
4738	6	593	20 минут пешей прогулки до песчаного пляжа.	2012-11-28 09:39:29.79549	2012-11-28 09:48:30.730981
4739	7	593	имеется игровая площадка (песочница, качели, батут, надувной бассейн). 	2012-11-28 09:39:29.796524	2012-11-28 09:48:30.732726
4742	10	593	Имеется оборудованная кухня для самостоятельного приготовления пищи.	2012-11-28 09:39:29.799501	2012-11-28 09:48:30.734388
4743	11	593	хорошее	2012-11-28 09:39:29.800476	2012-11-28 09:48:30.736078
4737	5	593	Трансфер  Парковка Русская баня на дровах Большой внутренний двор, столики и стулья для отдыха, мангал	2012-11-28 09:39:29.794536	2012-11-28 10:12:52.940321
4744	12	1051		2012-11-28 12:28:35.063548	2012-11-28 12:28:35.063548
4745	13	1051		2012-11-28 12:28:35.064987	2012-11-28 12:28:35.064987
4747	2	1051	бассейн с подогревом, оснащенный гидромассажным оборудованием и водными аттракционами, имеющий детскую чащу	2012-11-28 12:28:35.067053	2012-11-28 12:28:35.067053
4748	3	1051	38	2012-11-28 12:28:35.068018	2012-11-28 12:28:35.068018
4750	5	1051	конференц-зал, библиотека; видеотека; «финская» сауна; тренажерный зал; массажный салон; оксигенотерапия, фитотерапия; автостоянка; трансфер, организация экскурсий; телеф., факсим., электр связь, Интернет, Room-сервис, индивидуальная стирка	2012-11-28 12:28:35.070124	2012-11-28 12:28:35.070124
4752	7	1051	детская игровая территория	2012-11-28 12:28:35.072553	2012-11-28 12:28:35.072553
4753	8	1051	Ресторан и бар	2012-11-28 12:28:35.073763	2012-11-28 12:28:35.073763
4754	9	1051		2012-11-28 12:28:35.074929	2012-11-28 12:28:35.074929
4755	10	1051		2012-11-28 12:28:35.076371	2012-11-28 12:28:35.076371
4746	1	1051	Трехразовое: завтрак «шведский стол», заказное меню. В ресторане организовано детское питание.	2012-11-28 12:28:35.066049	2012-11-28 12:35:35.76521
4749	4	1051	Отель находится в прибрежной зоне благоустроенного пляжа "Малая бухта", расстояние до которого составляет 100 метров. 	2012-11-28 12:28:35.069012	2012-11-28 12:35:35.766563
4751	6	1051	100 м. до галечного пляжа	2012-11-28 12:28:35.071363	2012-11-28 12:35:35.767869
4756	11	1051	хорошее	2012-11-28 12:28:35.077469	2012-11-28 12:35:35.769033
4389	8	987	 Ресторан «ВАН»	2012-11-19 16:48:54.533613	2012-12-03 10:57:46.566599
4757	12	1223		2012-12-03 11:46:40.887194	2012-12-03 11:46:40.887194
4758	13	1223		2012-12-03 11:46:40.888756	2012-12-03 11:46:40.888756
4759	1	1223	Питание за дополнительную плату рядом в кафе. По желанию гостей, организовывается двух- или трехразовое питание в кафе-столовой (меню на выбор по талонной оплачиваемой системе).	2012-12-03 11:46:40.890154	2012-12-03 11:46:40.890154
4760	2	1223		2012-12-03 11:46:40.891556	2012-12-03 11:46:40.891556
4761	3	1223		2012-12-03 11:46:40.89298	2012-12-03 11:46:40.89298
4765	7	1223		2012-12-03 11:46:40.898687	2012-12-03 11:46:40.898687
4766	8	1223		2012-12-03 11:46:40.900084	2012-12-03 11:46:40.900084
4767	9	1223		2012-12-03 11:46:40.901525	2012-12-03 11:46:40.901525
4768	10	1223		2012-12-03 11:46:40.902929	2012-12-03 11:46:40.902929
4762	4	1223	Первая курортная зона.	2012-12-03 11:46:40.894331	2012-12-03 11:53:34.191737
4763	5	1223	интернет WI-FI,  услуги прачечной за доп. плату, трансфер,  электрочайник, утюг, детские кроватки, прогулочные коляски за доп. плату.	2012-12-03 11:46:40.895753	2012-12-03 11:53:34.192821
4764	6	1223	5 минут до песчаного пляжа.  Собственный автобус отеля доставляет отдыхающих в ежедневном режиме на любой пляж Анапы в соответствии с расписанием.	2012-12-03 11:46:40.897355	2012-12-03 11:53:34.193781
4769	11	1223	хорошее	2012-12-03 11:46:40.904298	2012-12-03 11:53:34.194763
4770	12	1224		2012-12-03 14:55:11.776316	2012-12-03 14:55:11.776316
4771	13	1224		2012-12-03 14:55:11.777511	2012-12-03 14:55:11.777511
4772	1	1224		2012-12-03 14:55:11.778755	2012-12-03 14:55:11.778755
4773	2	1224		2012-12-03 14:55:11.780551	2012-12-03 14:55:11.780551
4774	3	1224		2012-12-03 14:55:11.782027	2012-12-03 14:55:11.782027
4775	4	1224		2012-12-03 14:55:11.783486	2012-12-03 14:55:11.783486
4778	7	1224		2012-12-03 14:55:11.786476	2012-12-03 14:55:11.786476
4779	8	1224		2012-12-03 14:55:11.787483	2012-12-03 14:55:11.787483
4780	9	1224		2012-12-03 14:55:11.788524	2012-12-03 14:55:11.788524
4777	6	1224	10 минут до песчаного пляжа	2012-12-03 14:55:11.785504	2012-12-03 14:59:58.024499
4781	10	1224	Имеется оборудованная кухня для самостоятельного приготовления пищи.	2012-12-03 14:55:11.789509	2012-12-03 14:59:58.025422
4782	11	1224	хорошее	2012-12-03 14:55:11.790962	2012-12-03 14:59:58.026319
4783	12	1225		2012-12-04 06:30:10.928546	2012-12-04 06:30:10.928546
4784	13	1225		2012-12-04 06:30:10.930454	2012-12-04 06:30:10.930454
4785	1	1225		2012-12-04 06:30:10.931844	2012-12-04 06:30:10.931844
4786	2	1225		2012-12-04 06:30:10.933315	2012-12-04 06:30:10.933315
4787	3	1225		2012-12-04 06:30:10.934711	2012-12-04 06:30:10.934711
4788	4	1225	Первая курортная зона.	2012-12-04 06:30:10.936095	2012-12-04 06:30:10.936095
4789	5	1225	Трансфер Интернет Wi Fi Бесплатная парковка Сейф Настольный теннис Пешие прогулки Барбекю Прачечная Завтрак в номер Услуги по глажению одежды	2012-12-04 06:30:10.937682	2012-12-04 06:30:10.937682
4790	6	1225	350 м до пляжа "Малая бухта"	2012-12-04 06:30:10.939039	2012-12-04 06:30:10.939039
4791	7	1225	обустроена детская игровая площадка. 	2012-12-04 06:30:10.940197	2012-12-04 06:30:10.940197
4792	8	1225	кафе	2012-12-04 06:30:10.941726	2012-12-04 06:30:10.941726
4793	9	1225		2012-12-04 06:30:10.943245	2012-12-04 06:30:10.943245
4794	10	1225		2012-12-04 06:30:10.944777	2012-12-04 06:30:10.944777
4795	11	1225	хорошее	2012-12-04 06:30:10.9463	2012-12-04 06:30:10.9463
4796	12	1226		2012-12-04 09:01:33.384015	2012-12-04 09:01:33.384015
4797	13	1226		2012-12-04 09:01:33.385671	2012-12-04 09:01:33.385671
4799	2	1226		2012-12-04 09:01:33.387772	2012-12-04 09:01:33.387772
4800	3	1226	33	2012-12-04 09:01:33.388918	2012-12-04 09:01:33.388918
4801	4	1226	центр города.	2012-12-04 09:01:33.390351	2012-12-04 09:08:15.95417
4798	1	1226	На выбор завтрак, обед, ужин. По заказному меню. Питание оплачивается отдельно от стоимости проживания. 	2012-12-04 09:01:33.38678	2012-12-04 09:08:15.952609
4802	5	1226	Трансфер Сауна  Автостоянка  Охрана Доставка корреспонденции в номер Вызов скорой мед. помощи Аптечка Побудка ко времени Вызов такси Пользование электрочайником, утюгом Заказ в номер из кофейни Регистрация иностранных граждан в ОВИР Факс (прием, передач	2012-12-04 09:01:33.391448	2012-12-04 09:08:15.955116
4803	6	1226	5 минут до песчаного пляжа	2012-12-04 09:01:33.392752	2012-12-04 09:08:15.956168
4805	8	1226	кафе	2012-12-04 09:01:33.394942	2012-12-04 09:08:15.957199
4808	11	1226	хорошее	2012-12-04 09:01:33.398866	2012-12-04 09:08:15.958547
4809	12	1227		2012-12-04 09:38:05.3421	2012-12-04 09:38:05.3421
4810	13	1227		2012-12-04 09:38:05.343728	2012-12-04 09:38:05.343728
4811	1	1227	3-х разовое питание (Шведский стол)	2012-12-04 09:38:05.345122	2012-12-04 09:38:05.345122
4812	2	1227	 открытый бассейн с джакузи, около которого работает круглосуточный лобби-бар. 	2012-12-04 09:38:05.346446	2012-12-04 09:38:05.346446
4816	6	1227	5 метров до моря.  В распоряжении отдыхающих благоустроенный пляж с мелкой галькой. На пляже есть все необходимое для комфортного отдыха - зонты, лежаки, душевые комнаты и камеры хранения.	2012-12-04 09:38:05.35184	2012-12-04 09:38:05.35184
4817	7	1227	современная детская игровая площадка	2012-12-04 09:38:05.353163	2012-12-04 09:38:05.353163
4818	8	1227	Таверна "27 причал", бар "Cocos", бар "Frappe", чайхана "Аладдин"	2012-12-04 09:38:05.354487	2012-12-04 09:38:05.354487
4819	9	1227		2012-12-04 09:38:05.355851	2012-12-04 09:38:05.355851
4820	10	1227		2012-12-04 09:38:05.357166	2012-12-04 09:38:05.357166
4821	11	1227	Отличное	2012-12-04 09:38:05.358503	2012-12-04 09:38:05.358503
4815	5	1227	Трансферт, заказ билетов, организация экскурсий, рыбалка в открытом море, морские путешествия на катере или яхте, дайв-клуб, морские аттракционы, стоянка для яхт и катеров (по договорённости), автостоянка, территория круглосуточно под охраной.	2012-12-04 09:38:05.350522	2012-12-04 09:39:14.833321
4813	3	1227	22	2012-12-04 09:38:05.347737	2012-12-04 09:56:31.41712
4814	4	1227	1-я береговая линия	2012-12-04 09:38:05.349088	2012-12-04 09:56:31.418693
4822	12	999		2012-12-04 11:01:27.100215	2012-12-04 11:01:27.100215
4823	13	999		2012-12-04 11:01:27.101459	2012-12-04 11:01:27.101459
4826	3	999		2012-12-04 11:01:27.104447	2012-12-04 11:01:27.104447
4828	5	999	Бильярд Тренажерный зал Сауна Трансфер  Солярий Автостоянка Служба «room-service» Мини-бар Доставка авиа- и ж/д- билетов Массажный, косметолог., мед.кабинет Прачечная Бизнес-центр Телефонная связь Организация экскурсий, морских прогулок, рыбалки  Дайвинг	2012-12-04 11:01:27.106581	2012-12-04 11:01:27.106581
4829	6	999		2012-12-04 11:01:27.107845	2012-12-04 11:01:27.107845
4830	7	999	Анимационные программы	2012-12-04 11:01:27.108796	2012-12-04 11:01:27.108796
4831	8	999	Ресторан «Эгоист», кафе «У бассейна».	2012-12-04 11:01:27.109728	2012-12-04 11:01:27.109728
4832	9	999		2012-12-04 11:01:27.110671	2012-12-04 11:01:27.110671
4833	10	999		2012-12-04 11:01:27.111673	2012-12-04 11:01:27.111673
4824	1	999	в сезон на выбор «шведский» стол , в межсезонье на выбор комплексное	2012-12-04 11:01:27.102431	2012-12-04 11:07:01.437956
4825	2	999	Открытый бассейн	2012-12-04 11:01:27.103428	2012-12-04 11:07:01.439552
4827	4	999	Первая курортная зона.	2012-12-04 11:01:27.105426	2012-12-04 11:07:01.440917
4834	11	999	хорошее	2012-12-04 11:01:27.112663	2012-12-04 11:07:01.442313
4835	12	597		2012-12-04 14:08:20.708809	2012-12-04 14:08:20.708809
4836	13	597		2012-12-04 14:08:20.710759	2012-12-04 14:08:20.710759
4837	1	597		2012-12-04 14:08:20.713645	2012-12-04 14:08:20.713645
4838	2	597		2012-12-04 14:08:20.715168	2012-12-04 14:08:20.715168
4843	7	597		2012-12-04 14:08:20.722195	2012-12-04 14:08:20.722195
4845	9	597		2012-12-04 14:08:20.725656	2012-12-04 14:08:20.725656
4846	10	597		2012-12-04 14:08:20.72701	2012-12-04 14:08:20.72701
4840	4	597	Отель расположен в самом центре курортной зоны Анапы – на новой Набережной.	2012-12-04 14:08:20.717748	2012-12-04 14:20:04.854646
4844	8	597	 ресторан, кафе «Мир шашлыка»	2012-12-04 14:08:20.723615	2012-12-04 14:20:04.858446
4841	5	597	 организация экскурсий, дайвинг; прокат яхт, катеров, конные прогулки, две сауны, фитнес-центр, салон красоты, тату-салон	2012-12-04 14:08:20.7195	2012-12-04 14:24:56.657164
4842	6	597	в 30-ти метрах от отеля собственный пляж.Для маленьких детей сооружен небольшой бассейн с прогретой морской водой. К услугам гостей бесплатные зонтики и шезлонги. 	2012-12-04 14:08:20.720794	2012-12-04 14:24:56.65865
4847	11	597	хорошее	2012-12-04 14:08:20.728235	2012-12-04 14:24:56.659828
4839	3	597	26	2012-12-04 14:08:20.716406	2012-12-04 14:29:16.471644
4848	12	1228		2012-12-18 08:32:57.897471	2012-12-18 08:32:57.897471
4849	13	1228		2012-12-18 08:32:57.898695	2012-12-18 08:32:57.898695
4850	1	1228	За дополнительную плату гостям предоставляется одноразовое или двухразовое питание (блюда домашней кухни). 	2012-12-18 08:32:57.899869	2012-12-18 08:32:57.899869
4851	2	1228		2012-12-18 08:32:57.901142	2012-12-18 08:32:57.901142
4852	3	1228		2012-12-18 08:32:57.902407	2012-12-18 08:32:57.902407
4853	4	1228		2012-12-18 08:32:57.903648	2012-12-18 08:32:57.903648
4854	5	1228	тWi-Fi, трансфер с ж/д вокзала Новороссийска, а также из аэропортов Анапы и Геленджика (цена договорная), банкетный зал на 24 места, баня, стационарные мангалы, пловница, настольный теннис, бильярд, дартс и другие игры, организация экскурсий.	2012-12-18 08:32:57.904735	2012-12-18 08:32:57.904735
4855	6	1228	350 метров до галечного пляжа	2012-12-18 08:32:57.905704	2012-12-18 08:32:57.905704
4856	7	1228	детская площадка с качелями	2012-12-18 08:32:57.906848	2012-12-18 08:32:57.906848
4857	8	1228	кафе	2012-12-18 08:32:57.908194	2012-12-18 08:32:57.908194
4858	9	1228		2012-12-18 08:32:57.909359	2012-12-18 08:32:57.909359
4859	10	1228	 В апартаментах имеется кухня, оснащенная всем необходимым для самостоятельного приготовления пищи.	2012-12-18 08:32:57.910531	2012-12-18 08:32:57.910531
4860	11	1228	хорошее	2012-12-18 08:32:57.911626	2012-12-18 08:35:12.269821
4524	13	1004	ИП Джермакян Артур Ардашевич	2012-11-23 10:43:51.764868	2012-12-19 13:17:03.31156
\.


--
-- Data for Name: hotel_services; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_services (id, name, created_at, updated_at, "default", default_value, only_signed, multiline, "position", include_to_print, filter_item_id) FROM stdin;
7	Детская площадка	2012-05-18 07:23:14.456846	2012-09-08 19:11:41.569336	f		f	f	9	t	\N
6	Расстояние до моря	2012-05-18 07:23:14.423882	2012-09-08 19:11:43.509123	f		f	f	8	t	\N
5	Дополнительные услуги	2012-05-18 07:23:14.419027	2012-09-08 19:11:45.750532	\N	\N	\N	\N	7	\N	\N
4	Расположение	2012-05-18 07:23:14.39671	2012-09-08 19:11:47.435492	\N	\N	\N	\N	6	\N	\N
2	Бассейн	2012-05-18 07:23:14.376063	2012-09-08 19:11:50.953817	f		f	f	4	t	\N
1	Питание	2012-05-18 07:23:14.367857	2012-09-08 19:11:54.308621	f		f	f	3	t	\N
13	Юридическое лицо	2012-09-05 03:56:52.295413	2012-09-08 19:11:54.311322	f		t	f	2	f	\N
3	Количество номеров	2012-05-18 07:23:14.391073	2012-09-23 04:17:54.349398	f		f	f	5	f	\N
12	Номер договора	2012-09-05 03:55:35.607523	2012-09-08 19:11:29.100626	f		t	f	1	f	\N
11	Состояние гостиницы	2012-05-18 07:23:14.477342	2012-09-08 19:11:35.526161	\N	\N	\N	\N	13	\N	\N
10	Кухня	2012-05-18 07:23:14.472962	2012-09-08 19:11:37.01845	\N	\N	\N	\N	12	\N	\N
9	Специализация санатория	2012-05-18 07:23:14.468606	2012-09-08 19:11:38.512122	f		f	f	11	t	5
8	Ресторан, кафе, бар	2012-05-18 07:23:14.463795	2012-09-08 19:11:40.000504	\N	\N	\N	\N	10	\N	\N
\.


--
-- Data for Name: hotel_special_offers; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_special_offers (id, hotel_id, "from", "to", description, created_at, updated_at, title) FROM stdin;
10	386	2012-07-03	2012-07-21	Не дождемся!!!	2012-07-04 09:16:19.784332	2012-07-04 09:16:19.784332	Ждемссс!!!
11	386	2012-07-05	2012-07-05		2012-07-04 12:09:49.38465	2012-07-04 12:09:49.38465	Активное только сегодня
12	383	2012-08-01	2012-08-31	Всем лимонада! Алкоголь вреден!	2012-07-04 14:51:06.677759	2012-07-05 08:38:35.526351	Конец лета - скоро в школу!
13	383	2012-07-06	2012-07-06	Invokes the block passing in successive elements from self, deleting elements for which the block returns a false value. It returns self if changes were made, otherwise it returns nil.	2012-07-05 09:37:28.460611	2012-07-05 09:37:28.460611	Активно только завтра!
14	383	2012-07-04	2012-07-04	Invokes the block passing in successive elements from self, deleting elements for which the block returns a false value. It returns self if changes were made, otherwise it returns nil.	2012-07-05 09:37:28.463161	2012-07-05 09:37:28.463161	Было активно вчера
15	383	2012-07-06	2012-07-20	Invokes the block passing in successive elements from self, deleting elements for which the block returns a false value. It returns self if changes were made, otherwise it returns nil.	2012-07-05 09:37:28.464457	2012-07-05 09:37:28.464457	Активно скоро
16	383	2012-07-04	2012-07-07	Invokes the block passing in successive elements from self, deleting elements for which the block returns a false value. It returns self if changes were made, otherwise it returns nil.	2012-07-05 09:38:10.715996	2012-07-05 09:38:10.715996	Активно сейчас
3	377	2012-04-04	2012-04-08	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nВещи из номера	2012-05-26 04:53:52.203806	2012-05-27 16:31:55.824331	Вещи из номера
1	377	2012-05-24	2012-07-05	\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nШампанское в номер\r\n\r\n\r\n\r\n\r\nКаждому приехавшему гостю бутылку шампанского в номер	2012-05-18 18:18:10.795078	2012-05-27 16:31:55.826153	Шампанское в номер
4	377	2012-05-11	2012-06-04	Каждому клиенту мешок сахара в номер!	2012-05-27 16:31:55.828707	2012-06-29 08:58:27.18581	Сахар под язык каждому
7	384	2012-07-11	2012-07-20	asdfadsf	2012-07-01 07:24:18.588867	2012-07-01 07:24:18.588867	asdfasdf
17	391	2012-07-24	2012-07-31	в каждый номер бочка пепси	2012-07-24 12:03:50.20135	2012-07-24 12:03:50.20135	Всем пепси
21	395	2012-07-18	2012-07-28	asdfasdf	2012-07-24 12:13:30.409987	2012-07-24 12:13:30.409987	sadfadsfasd
22	396	2012-07-16	2012-07-25	asd	2012-07-24 12:14:22.021422	2012-07-24 12:14:22.021422	asd
25	399	2012-07-10	2012-07-29	asdadasdasd	2012-07-24 12:35:50.422764	2012-07-24 12:35:50.422764	asdasdasd
26	386	2012-07-26	2012-07-31	Актуальное предложение!!!!!Актуальное предложение!!!!!!	2012-07-28 03:22:02.159895	2012-07-28 03:22:02.159895	Актуальное предложение!!!!!!
2	378	2012-06-01	2012-08-31	\r\n\r\nНа все типы номеров	2012-05-19 03:46:25.939976	2012-08-16 08:16:20.825495	Комиссионные 20%
35	390	2012-07-03	2012-07-31	тбьтюб бьтбюьтюбтюбт ююбибиюиюбию	2012-07-28 03:58:10.985168	2012-07-28 03:58:10.985168	тьбтбюьтьтб ьбтбтбтбюьтбьютбюьтю юбтбютюб
36	390	2012-07-04	2012-07-31	иьюиюьб ию юиюиюьиюи лдо плп пшдг пшгш	2012-07-28 03:58:11.007374	2012-07-28 03:58:11.007374	июьию и юбилюип лдоол плою
37	390	2012-07-03	2012-07-31	тбтюбь бь бюьтбьютюбтбюьтдюр жшщ рщш рщгж	2012-07-28 03:59:05.787336	2012-07-28 03:59:43.3422	тлтб/юьтбьтиьюб бт бьтбтбю б бюьт бтюбтю
38	390	2012-07-04	2012-07-31	ьбюьтимоп опа веяы ыпяарп	2012-07-28 04:00:50.454764	2012-07-28 04:00:50.454764	ьтб/т/бт/бт //т /т/бтюбю/
39	390	2012-07-11	2012-08-31	 ьб юлри пдш пшндапгнщиащегнеш внше	2012-07-28 04:00:50.473959	2012-07-28 04:00:50.473959	ьдоьжд л лэд рэдл рджэ 
40	390	2012-07-31	2012-08-31	тьбитюмиюбмобслпснплчонча	2012-07-28 04:01:42.643153	2012-07-28 04:01:42.643153	джллтржлдр жо пдл пдлп олр паодп ало 
42	401	2012-07-06	2012-07-31	иолпдрп ддп пд дд пд д	2012-07-28 04:31:04.359993	2012-07-28 04:31:04.359993	гшещигшигшщишщщгщг
43	401	2012-07-02	2012-07-23	иолд лдп одрл продл ало ааагн гн г	2012-07-28 04:34:34.792837	2012-07-28 04:34:34.792837	тлдтлдт ллд джл рлдж рджл рдж дж джл р дж рж
44	401	2012-07-02	2012-09-20	тор жжг гдш пнд аег вен вк ыу фцкр оеоадюл лю	2012-07-28 04:34:34.893243	2012-07-28 04:34:34.893243	иромр дн агл агелагкикен ш709ж /щжг щж ж
45	403	2012-07-04	2012-07-25	тлдтдлтдл э лд лдтдтдлтлдтлдт длт длт лджтлд т	2012-07-28 16:38:08.354657	2012-07-28 16:38:08.354657	Проверка!!!!!
46	404	2012-07-03	2012-07-31	тлдт/л  лд дл тдл лддлт дл длт лд лддл дл дтлтидлт/тю/т/ ю/ю/ю/тюбт /ю /тт/тют/ /ю/т т/ю /тт / /т	2012-07-29 08:05:38.805117	2012-07-29 08:08:41.638809	ПРоверка !!!!!ПРоверка !!!!!ПРоверка !!!!!ПРоверка !!!!!!
41	400	2012-07-03	2012-07-27	ролр жл жлр ожролрдрдлплжрпжлп	2012-07-28 04:11:12.468218	2012-07-29 08:14:46.731045	 ролрпдлорлор лорлор лдор лдо
27	390	2012-07-11	2012-08-12	Пользуйтесь пока можно!!!!!Пользуйтесь пока можно!!!!!Пользуйтесь пока можно!!!!!	2012-07-28 03:53:39.038457	2012-08-09 04:45:43.506965	Пользуйтесь пока можно!!!!!
48	411	2012-08-16	2012-08-23	всем гостям пиво в номер	2012-08-16 07:15:33.901142	2012-08-16 07:15:33.901142	неделя запоя
49	411	2012-08-24	2012-08-30	Всем гостям клубника Всем гостям клубника Всем гостям клубника Всем гостям клубника Всем гостям клубника Всем гостям клубника Всем гостям клубника 	2012-08-16 07:15:33.963754	2012-08-16 07:15:33.963754	клубника и лед
50	400	2012-08-01	2012-08-31	Отличное предложение !!!!!!Отличное предложение !!!!!!Отличное предложение !!!!!!Отличное предложение !!!!!!Отличное предложение !!!!!!Отличное предложение !!!!!!	2012-08-18 08:02:42.116181	2012-08-18 08:02:42.116181	Отличное предложение !!!!!!!
\.


--
-- Data for Name: hotel_streets; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_streets (id, name) FROM stdin;
1	40 лет Победы
2	Астраханская
3	Гоголя
4	Горького
5	Горького (пер. Малинкин, 15)
6	Гребенская
7	Гребенская 
8	Джеметинский проезд
9	Заводская
10	Зеленая
11	Ивана Голубца
12	Калинина 
13	Кати Соловьяновой
14	Кирова
15	Красноармейская
16	Краснодарская
17	Краснозеленых
18	Крепостная
19	Крепостная 
20	Крымская
21	Кубанская
22	Ленина
23	Ленинградская
24	Мирная
25	Набережная
26	Некрасова
27	Новороссийская
28	Островского
29	пер. Комсомольский
30	пер. Крутой
31	пер. Сиреневый
32	Пионерский проспект
33	Пионерский проспект 
34	Пионерский проспект  
35	Пролетарская
36	Протапова
37	Пушкина
38	Родниковая
39	Рождественская 
40	Садовая
41	Самбурова
42	Северная
43	Советская
44	Таманская
45	Терновая
46	Терская
47	Терская/Горького
48	Терская/Первомайская
49	Тираспольская
50	Трудящихся
51	Тургенева
52	Черноморская
53	Шевченко
54	Пионерский  проспект
55	1-ый Черноморский переулок
56	3-ий Черноморский проезд
57	Батарейная
58	Восточная
59	\N
60	Горького/Объездная
61	Горького/Шардоне
62	Золотые пески
63	Коморова
64	Комсомольская
65	Кооперативная
66	Курганная
67	Лазурная
68	Лермонтова
69	Лизы Чайкиной
70	Лиманная
71	Майора Витязя
72	Мира
73	Московская 
74	Объездная
75	Овражная
76	пер. Александрийский
77	пер. Ангарский
78	пер. Благовещенский
79	пер. Горный 
80	пер. Звездный
81	пер. ЛОК Витязь
82	пер. Цветочный
83	Победы
84	Понтийская (Горького)
85	пр-т Александрийский
86	пр-т Южный
87	пр. Южный
88	Роз
89	Светлая
90	Святого Георгия
91	Сельская
92	Серебряная
93	Солнечная
94	Толстого
95	Тракторная
96	Уютная
97	Цветочный
98	Центральная
99	1-ый проезд
100	1-ый проезд/Песчаная
101	Виноградная
102	Морская
103	Песчаная
104	Пионерский пр-т, 1-ый проезд
105	Поинерский проспект
106	пр. Престижный
107	проезд Золотой берег
108	проезд Курортный
109	Славная
110	Юбилейный тупик
111	Аэродромная
112	3-ий проезд
113	Кавказская
114	Казачий стан
115	Лесная
116	Приморская
117	район Варваровсой щели
118	Рекордная
119	Строителей
120	Таманский переулок
121	Таманский проезд
122	Центральная 
123	Центральная, 1-ый проезд
124	Центральная, проезд 14
125	Бугазская коса
126	Казачий
127	Кубанский
128	Лобача
129	пер. Вишневый
130	пер. Кубанский 
131	пер. Светлый
132	Слесова
133	
134	Красная
135	Пионерский пр.
136	Советов 
137	Советов
138	Солнеч
139	Портовая
140	чячсмч
142	Суворовская
143	Ctdthyfz
144	J,]tpyfz
145	Объезная
146	пионерский
\.


--
-- Data for Name: hotel_types; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotel_types (id, name) FROM stdin;
\.


--
-- Data for Name: hotels; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotels (id, name, description, created_at, updated_at, reviews_count, city_id, phone, email, site, route_description, iin, kpp, ogrn, legal_address, post_address, street_number, way_file_name, way_content_type, way_file_size, way_updated_at, booking_id, booking_description, published, street_id, min_age_children, adjacent_territory, min_price_winter, min_price_summer, checkout_time, documents, agency_commission, rooms_count, images_count, all_rooms_count, special_offers_count, map_latitude, map_longitude, street) FROM stdin;
420	Анастасия	\N	2012-08-31 13:16:31.250859	2012-11-22 05:57:03.042341	0	25	8 (86133)58-279, 8 918  44-707-90	\N	\N	\N	\N	\N	\N	\N	\N	29 А	\N	\N	\N	\N	1	\N	f	\N	0	\N	\N	\N	12:00	\N	0	0	0	4	0	\N	\N	Астраханская
1087	На Солнечной	\N	2012-08-31 13:31:14.301229	2012-08-31 13:31:14.301229	0	27	8 (86133) 73974	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Солнечная
461	Жемчужина на Крепостной	\N	2012-08-31 13:16:31.899958	2012-09-07 05:57:17.471277	0	25	8 988 3119294, 8 (86133) 31915	\N	\N	\N	\N	\N	\N	\N	\N	68	\N	\N	\N	\N	1	\N	t	\N	0	рядом кафе, столовая	0	1500	12:00	\N	10	1	1	0	0	44.8937960000000018	37.3105369999999965	Крепостная
446	На Кати Соловьяновой 36 	\N	2012-08-31 13:16:31.637416	2012-08-31 13:16:31.637416	0	25	8 909 4511664, 8 918 1916821; 8 (86133) 54457	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
1088	Алмаз	\N	2012-08-31 13:31:14.361981	2012-08-31 13:31:14.361981	0	27	8 86133 48025;  8 961 5356028, 8 918 3494586	\N	\N	\N	\N	\N	\N	\N	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Толстого
448	Замок 3* 	\N	2012-08-31 13:16:31.68141	2012-08-31 13:16:31.68141	0	25	8(91832)70100	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
418	Ны Высоком берегу	\N	2012-08-31 13:16:31.217971	2012-08-31 13:16:31.217971	0	25	8 (86133) 5-81-27; 8 918 4307710	\N	\N	\N	\N	\N	\N	\N	\N	100	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	40 лет Победы
462	На Крепостной 	\N	2012-08-31 13:16:31.912671	2012-08-31 13:16:31.912671	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	47 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крепостная 
421	Исток	\N	2012-08-31 13:16:31.268822	2012-08-31 13:16:31.268822	0	25	8 (86133) 43-680, 8 918 44-54-491	\N	\N	\N	\N	\N	\N	\N	\N	53 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Астраханская
423	Садко	\N	2012-08-31 13:16:31.292246	2012-08-31 13:16:31.292246	0	25	8 918 137 000 4	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Астраханская
443	Юнона	\N	2012-08-31 13:16:31.585875	2012-08-31 13:16:31.585875	0	25	8 (918) 314-37-70	\N	\N	\N	\N	\N	\N	\N	\N	52 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
428	Ла-Пальма	\N	2012-08-31 13:16:31.376147	2012-08-31 13:16:31.376147	0	25	8 988 6693000, 8 961 592-333-8	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
457	Морская звезда	\N	2012-08-31 13:16:31.85449	2012-08-31 13:16:31.85449	0	34	8  (918) 550-77-16, 8 (86141) 60-52-0,  8-800-331-06-31	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ореховая
430	На Горького 65 А	\N	2012-08-31 13:16:31.412874	2012-08-31 13:16:31.412874	0	25	8 (918) 4839570, 8 (918) 3206025	\N	\N	\N	\N	\N	\N	\N	\N	65 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
431	Алекс-2	\N	2012-08-31 13:16:31.426292	2012-08-31 13:16:31.426292	0	25	8-(918)-672-34-08	\N	\N	\N	\N	\N	\N	\N	\N	67	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
432	Патио	\N	2012-08-31 13:16:31.436637	2012-08-31 13:16:31.436637	0	25	8 918 9856513, 8 (86133) 43146	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького (пер. Малинкин, 15)
433	Анапа	\N	2012-08-31 13:16:31.450062	2012-08-31 13:16:31.450062	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гребенская
434	Океан Южный	\N	2012-08-31 13:16:31.463268	2012-08-31 13:16:31.463268	0	25	8 (918) 46-000-18	\N	\N	\N	\N	\N	\N	\N	\N	83	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гребенская 
435	Каро	\N	2012-08-31 13:16:31.472965	2012-08-31 13:16:31.472965	0	25	8 918 6585009, 8 918 4932540, 8 (86133) 33041	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Джеметинский проезд
444	У Лайлы	\N	2012-08-31 13:16:31.610435	2012-08-31 13:16:31.610435	0	25	8 918 04-04-175, 8 918 64-40-555, 8 928 61-09-557	\N	\N	\N	\N	\N	\N	\N	\N	122	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
438	Олива	\N	2012-08-31 13:16:31.504307	2012-08-31 13:16:31.504307	0	25	8(86133) 54897; 8 918 3337718, 8 918 4405563, 8 918 2457190	\N	\N	\N	\N	\N	\N	\N	\N	80	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Заводская
439	На Зеленой 10	\N	2012-08-31 13:16:31.517011	2012-08-31 13:16:31.517011	0	25	8 (86133) 24428, 8 918 3598420, 8 918 3261374	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Зеленая
440	На Зеленой 2В!!!!!	\N	2012-08-31 13:16:31.531881	2012-08-31 13:16:31.531881	0	25	8 (86133) 57374 8 918 2523281, 8 918 4390730	\N	\N	\N	\N	\N	\N	\N	\N	2 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Зеленая
441	На Ивана Голубца	\N	2012-08-31 13:16:31.558235	2012-08-31 13:16:31.558235	0	25	8 (86133)32-318, 8 918 99-09-065, 8 918 43-66-048	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ивана Голубца
442	Семейный	\N	2012-08-31 13:16:31.570968	2012-08-31 13:16:31.570968	0	25	8 918 1844417, 8 918 3375383	\N	\N	\N	\N	\N	\N	\N	\N	28/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ивана Голубца
447	На Кати Соловьяновой 53	\N	2012-08-31 13:16:31.664488	2012-08-31 13:16:31.664488	0	25	8 918 6401322; 8 (86133) 28458	\N	\N	\N	\N	\N	\N	\N	\N	53	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
600	Русь	\N	2012-08-31 13:16:34.254119	2012-08-31 13:16:34.254119	0	32	8 (86141) 7-17-21, 7-17-26, 7-17-28	\N	\N	\N	\N	\N	\N	\N	\N	25 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
449	Тихий уголок	\N	2012-08-31 13:16:31.697094	2012-08-31 13:16:31.697094	0	25	8 (86133) 40404, 8 918 4863231	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
451	Марина-Дом с Аистом	\N	2012-08-31 13:16:31.777355	2012-08-31 13:16:31.777355	0	25	8(86133) 46017, 8 918 4783809, 8 967 3051590	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
452	Смоковница	\N	2012-08-31 13:16:31.789768	2012-08-31 13:16:31.789768	0	25	8(86133) 45104, 8 918 4841770	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
455	Мечты сбываются	\N	2012-08-31 13:16:31.828568	2012-08-31 13:16:31.828568	0	25	8 918 461-20-86, 8 918 66-28-000, 8 (86133)45-490	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Краснодарская
445	Ника	\N	2012-08-31 13:16:31.621613	2012-08-31 13:16:31.621613	0	27	8(86133) 7-36-39; 8 918 172-40-58; 8 918 329-57-70	\N	\N	\N	\N	\N	\N	\N	\N	18/29	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Восточная/Тракторная
1089	Влентина	\N	2012-08-31 13:31:14.388966	2012-08-31 13:31:14.388966	0	27	8(86133) 73-9-15, 8 961 5137790	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
686	Марина	\N	2012-08-31 13:16:35.882572	2012-08-31 13:16:35.882572	0	31	 8 (918) 356-45-85, 8 (861) 337-82-56	\N	\N	\N	\N	\N	\N	\N	\N	130	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
417	Элита	\N	2012-08-31 13:16:31.182365	2012-08-31 13:16:31.182365	0	31	8(86133) 3-39-02, 8 (918) 214-24-28, 8 (988) 344-07-08	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
425	Лотос	\N	2012-08-31 13:16:31.331056	2012-08-31 13:16:31.331056	0	31	8 (962) 874-94-97	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
422	На Астраханской  61 А	\N	2012-08-31 13:16:31.280556	2012-08-31 13:16:31.280556	0	25	8 (86133)43-335, 8 918 64-84-068, 8 918 606-41-80	\N	\N	\N	\N	\N	\N	\N	\N	61 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Астраханская
974	Владимирская 14	\N	2012-08-31 13:31:08.033404	2012-08-31 13:31:08.033404	0	25	8 918 999-61-84, 8 928 217-67-16	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Владимирская
975	Владимирская 18	\N	2012-08-31 13:31:08.04866	2012-08-31 13:31:08.04866	0	25	8 918 35-39-639, 8 (86133)42-520	\N	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Владимирская
976	Горького 13	\N	2012-08-31 13:31:08.107029	2012-08-31 13:31:08.107029	0	25	8 918 951-79-78, 8 928 239-81-84	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
507	Одиссея 	\N	2012-08-31 13:16:32.682249	2012-08-31 13:16:32.682249	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	267	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
471	Рич	\N	2012-08-31 13:16:32.041069	2012-08-31 13:16:32.041069	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	56А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
473	В.А.Ш.	\N	2012-08-31 13:16:32.069453	2012-08-31 13:16:32.069453	0	25	8 918 4564834 , 8 918 6659219	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленинградская
468	Жемчужина 	\N	2012-08-31 13:16:32.001802	2012-08-31 13:16:32.001802	0	30	89,181,395,764	\N	\N	\N	\N	\N	\N	\N	\N	82	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Строителей
504	Янтарь	\N	2012-08-31 13:16:32.573872	2012-08-31 13:16:32.573872	0	34	8 (86141) 6-00-65, 8 (928) 333-89-33,8 (988) 333-89-33	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новая
481	На Новороссийской 88 А	\N	2012-08-31 13:16:32.208917	2012-08-31 13:16:32.208917	0	25	8 (86133) 30625, 8 918 9938838, 8 918 9951545	\N	\N	\N	\N	\N	\N	\N	\N	88 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
493	Десантник	\N	2012-08-31 13:16:32.401013	2012-08-31 13:16:32.401013	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
476	Караван-2	\N	2012-08-31 13:16:32.122066	2012-08-31 13:16:32.122066	0	25	8(86133) 33868;  8(86133) 51733, 8 918 4624717, 8 918 4643914	\N	\N	\N	\N	\N	\N	\N	\N	110 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Некрасова
477	Дуэт	\N	2012-08-31 13:16:32.140438	2012-08-31 13:16:32.140438	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	35	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
492	Мечта	\N	2012-08-31 13:16:32.38837	2012-08-31 13:16:32.38837	0	35	8 (918) 396-19-33, 8 (918) 999-21-11	\N	\N	\N	\N	\N	\N	\N	\N	7Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
482	Тихий дворик	\N	2012-08-31 13:16:32.22743	2012-08-31 13:16:32.22743	0	25	8 918 95-83-578	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
484	У Виктора	\N	2012-08-31 13:16:32.252686	2012-08-31 13:16:32.252686	0	25	8 (86133) 54497,  8 918 4652020	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
485	Комсомольский	\N	2012-08-31 13:16:32.282697	2012-08-31 13:16:32.282697	0	25	8 918 32-66-971	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Комсомольский
487	На пер. Сиреневом 3	\N	2012-08-31 13:16:32.314528	2012-08-31 13:16:32.314528	0	25	8 (86133) 37254, 8 918 4159307	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Сиреневый
488	Звездочка	\N	2012-08-31 13:16:32.336953	2012-08-31 13:16:32.336953	0	25	8 (86133) 3-12-28	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
490	Россиянка	\N	2012-08-31 13:16:32.366467	2012-08-31 13:16:32.366467	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
491	Урал	\N	2012-08-31 13:16:32.377455	2012-08-31 13:16:32.377455	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
508	Ланги Анапа	\N	2012-08-31 13:16:32.6959	2012-08-31 13:16:32.6959	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
494	Родник	\N	2012-08-31 13:16:32.415192	2012-08-31 13:16:32.415192	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
495	Анапа-Лазурная	\N	2012-08-31 13:16:32.432467	2012-08-31 13:16:32.432467	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	34	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
496	Фея-3	\N	2012-08-31 13:16:32.454004	2012-08-31 13:16:32.454004	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	100	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
497	Джемете	\N	2012-08-31 13:16:32.468412	2012-08-31 13:16:32.468412	0	25	(86133) 3-23-70 	\N	\N	\N	\N	\N	\N	\N	\N	103	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
498	Парус	\N	2012-08-31 13:16:32.479852	2012-08-31 13:16:32.479852	0	25	8 (861) 224-50-46, 224-40-69	\N	\N	\N	\N	\N	\N	\N	\N	114	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
499	Динамо	\N	2012-08-31 13:16:32.502155	2012-08-31 13:16:32.502155	0	25	8 86133) 3-39-65, 3-30-70	\N	\N	\N	\N	\N	\N	\N	\N	233	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
500	Анапские зори-3	\N	2012-08-31 13:16:32.523198	2012-08-31 13:16:32.523198	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	289	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
501	Анапа-Нептун	\N	2012-08-31 13:16:32.536154	2012-08-31 13:16:32.536154	0	25	8 (86133) 33-061, 8(86133) 33-225	\N	\N	\N	\N	\N	\N	\N	\N	106	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
502	Уральские самоцветы	\N	2012-08-31 13:16:32.549691	2012-08-31 13:16:32.549691	0	25	8 (861) 333-31-57 ,  8 (902) 801-40-63	\N	\N	\N	\N	\N	\N	\N	\N	107	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
479	Визит	\N	2012-08-31 13:16:32.185193	2012-08-31 13:16:32.185193	0	34	 8 (918) 392-34-64, 8 (918) 484-25-78	\N	\N	\N	\N	\N	\N	\N	\N	40	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пограничная
509	Анапа Лазурная 3*	\N	2012-08-31 13:16:32.707489	2012-08-31 13:16:32.707489	0	25	8  (86133) 3-35-69	\N	\N	\N	\N	\N	\N	\N	\N	34	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
510	Onix Marco Polo	\N	2012-08-31 13:16:32.722255	2012-08-31 13:16:32.722255	0	25	8 (495) 79-29-500	\N	\N	\N	\N	\N	\N	\N	\N	36 Г	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
505	Агат	\N	2012-08-31 13:16:32.652029	2012-08-31 13:16:32.652029	0	34	8 (86141) 6-05-89, 8 (86141) 6-16-11, 8 (918) 312-40-92\n	\N	\N	\N	\N	\N	\N	\N	\N	49	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красных Партизан
978	Сан-Саныч	\N	2012-08-31 13:31:08.138681	2012-08-31 13:31:08.138681	0	25	8 (86133) 5-62-46, 8 928 113-22-14	\N	\N	\N	\N	\N	\N	\N	\N	63 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
517	Соловей 	\N	2012-08-31 13:16:32.813359	2012-08-31 13:16:32.813359	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	74	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
979	Богема	\N	2012-08-31 13:31:08.177599	2012-08-31 13:31:08.177599	0	25	8 (86133) 4-50-01, (86133) 2-00-04	\N	\N	\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гребенская
981	Галина и Виталий	\N	2012-08-31 13:31:08.259835	2012-08-31 13:31:08.259835	0	25	8-918-18-444-17	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ивана Голубца
982	Марионелла	\N	2012-08-31 13:31:08.271483	2012-08-31 13:31:08.271483	0	25	 8 (86133)54-511, 8 988 322-08-25	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ивана Голубца
545	Авантаж	\N	2012-08-31 13:16:33.2385	2012-08-31 13:16:33.2385	0	25	8 (86133) 393-47; 8 918 987-22-89	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
513	Уютный дворик	\N	2012-08-31 13:16:32.756911	2012-08-31 13:16:32.756911	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	56	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
515	Ундина	\N	2012-08-31 13:16:32.783408	2012-08-31 13:16:32.783408	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	62	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
516	Улыбка	\N	2012-08-31 13:16:32.801599	2012-08-31 13:16:32.801599	0	25	89,180,414,062	\N	\N	\N	\N	\N	\N	\N	\N	70 Г	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
529	СК БФО	\N	2012-08-31 13:16:32.968854	2012-08-31 13:16:32.968854	0	25	8 (86133) 4-57-97	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пушкина
519	Юбилейный	\N	2012-08-31 13:16:32.851821	2012-08-31 13:16:32.851821	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	171	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект 
520	Ласточка	\N	2012-08-31 13:16:32.864934	2012-08-31 13:16:32.864934	0	25	8(86133)33176	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект  
521	5 Звезд	\N	2012-08-31 13:16:32.874874	2012-09-23 04:40:57.937413	0	25	89,186,221,496	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	1	\N	f	\N	0	\N	0	0	12:00	\N	0	1	0	2	0	\N	\N	пр-д Золотой берег
522	Оникс	\N	2012-08-31 13:16:32.885323	2012-08-31 13:16:32.885323	0	25	8 988 5266666, 8 918 4107758; 8 988 3130401	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пролетарская
524	На Протапова	\N	2012-08-31 13:16:32.910095	2012-08-31 13:16:32.910095	0	25	8(86133) 42575, 8 918 6694215	\N	\N	\N	\N	\N	\N	\N	\N	46	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Протапова
525	БФО	\N	2012-08-31 13:16:32.919758	2012-08-31 13:16:32.919758	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пушкина
526	Анапа-Океан	\N	2012-08-31 13:16:32.929864	2012-08-31 13:16:32.929864	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пушкина
527	ДиЛУЧ	\N	2012-08-31 13:16:32.942007	2012-08-31 13:16:32.942007	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пушкина
530	На Родниковой	\N	2012-08-31 13:16:32.983791	2012-08-31 13:16:32.983791	0	25	8 (86133) 2-46-45; 8 (918) 392-30-00	\N	\N	\N	\N	\N	\N	\N	\N	31	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Родниковая
531	Морской прибой	\N	2012-08-31 13:16:32.997664	2012-08-31 13:16:32.997664	0	25	8 (86133)2-11-45, 8 905 495-89-98, 8 918 05-07-515	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Рождественская 
532	Цветочный дворик	\N	2012-08-31 13:16:33.008897	2012-08-31 13:16:33.008897	0	25	8 918 0883367, 8 918 9637555	\N	\N	\N	\N	\N	\N	\N	\N	16 Д	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Садовая
533	На Самбурова 103	\N	2012-08-31 13:16:33.033995	2012-08-31 13:16:33.033995	0	25	8 (918) 217-84-28, 8 (918) 454-28-31	\N	\N	\N	\N	\N	\N	\N	\N	103	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
535	Морские врата	\N	2012-08-31 13:16:33.066168	2012-08-31 13:16:33.066168	0	25	8(86133) 4-44-21,  8 918 4848290	\N	\N	\N	\N	\N	\N	\N	\N	155	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
536	Эрсико	\N	2012-08-31 13:16:33.077814	2012-08-31 13:16:33.077814	0	25	8(86133) 30670, 39128;8 918 4740955, 8 965 4603564, 8 928 8428134	\N	\N	\N	\N	\N	\N	\N	\N	162	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
537	Южный берег	\N	2012-08-31 13:16:33.089323	2012-08-31 13:16:33.089323	0	25	8 (86133) 4-62-36, 8 918 467-13-18	\N	\N	\N	\N	\N	\N	\N	\N	176	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
538	На Самбурова	\N	2012-08-31 13:16:33.100471	2012-08-31 13:16:33.100471	0	25	8-918-386-777-3	\N	\N	\N	\N	\N	\N	\N	\N	213	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
539	Рапсодия	\N	2012-08-31 13:16:33.118981	2012-08-31 13:16:33.118981	0	25	8 918 2357721, 9 918 3206205	\N	\N	\N	\N	\N	\N	\N	\N	229 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
542	Христина	\N	2012-08-31 13:16:33.17408	2012-08-31 13:16:33.17408	0	25	8(86133) 58277; 8 918 3707944	\N	\N	\N	\N	\N	\N	\N	\N	45	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
543	О-Марета	\N	2012-08-31 13:16:33.189807	2012-08-31 13:16:33.189807	0	25	8(918)96-00-099,  8(918)44-44-833	\N	\N	\N	\N	\N	\N	\N	\N	70	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
419	У Натальи	\N	2012-08-31 13:16:31.239327	2012-08-31 13:16:31.239327	0	25	8 918 6653326, 8 960 4037798	\N	\N	\N	\N	\N	\N	\N	\N	95	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
546	Катамаран	\N	2012-08-31 13:16:33.298532	2012-08-31 13:16:33.298532	0	25	8 (86133) 3-03-24	\N	\N	\N	\N	\N	\N	\N	\N	43 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
547	Ромашка	\N	2012-08-31 13:16:33.314096	2012-08-31 13:16:33.314096	0	25	8 (86133) 56543, 8 961 5120059	\N	\N	\N	\N	\N	\N	\N	\N	48	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
548	Зеленый дворик	\N	2012-08-31 13:16:33.334883	2012-08-31 13:16:33.334883	0	25	8 (86133) 4-24-22, 8 918 012-02-16	\N	\N	\N	\N	\N	\N	\N	\N	71	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
549	Магадан	\N	2012-08-31 13:16:33.367541	2012-08-31 13:16:33.367541	0	25	(8-861-33) 4-60-79	\N	\N	\N	\N	\N	\N	\N	\N	1 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
551	Малая бухта	\N	2012-08-31 13:16:33.398995	2012-08-31 13:16:33.398995	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
528	Кубань	\N	2012-08-31 13:16:32.957539	2012-08-31 13:16:32.957539	0	32	8 (86141) 3-19-81, 3-19-09	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер.Больничный
584	На Тургенева 	\N	2012-08-31 13:16:33.981262	2012-08-31 13:16:33.981262	0	25	8 (86133) 32425;  8 962 8581354 и 8 918 6625742, 8 918 2610368	\N	\N	\N	\N	\N	\N	\N	\N	79-1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
984	На Кати Соловьяновой 36 	\N	2012-08-31 13:31:08.367843	2012-08-31 13:31:08.367843	0	25	8 909 4511664, 8 918 1916821; 8 (86133) 54457	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
563	На Терской 	\N	2012-08-31 13:16:33.673526	2012-08-31 13:16:33.673526	0	25	89,184,924,440	\N	\N	\N	\N	\N	\N	\N	\N	50	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
985	Замок 3* 	\N	2012-08-31 13:31:08.612363	2012-08-31 13:31:08.612363	0	25	8(91832)70100	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кати Соловьяновой
566	ВиЖен	\N	2012-08-31 13:16:33.732114	2012-08-31 13:16:33.732114	0	25	8 918 4634325, 8(86133)58762	\N	\N	\N	\N	\N	\N	\N	\N	183/10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская/Первомайская
564	Ясон	\N	2012-08-31 13:16:33.686941	2012-08-31 13:16:33.686941	0	25	8 (86133)3-17-25, 3-17-45,  8 (918) 498-55-42	\N	\N	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
557	На Терновой 11	\N	2012-08-31 13:16:33.497556	2012-08-31 13:16:33.497556	0	25	89,184,369,205	\N	\N	\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терновая
588	Москва	\N	2012-08-31 13:16:34.053334	2012-08-31 13:16:34.053334	0	32	 8 (86141) 3-46-01, 8 (928) 433-01-88, 8(928) 247-24-47	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
559	Терская 100	\N	2012-08-31 13:16:33.601295	2012-08-31 13:16:33.601295	0	25	8 (86133)2-08-48, 2-08-68, 8 928 240-08-98	\N	\N	\N	\N	\N	\N	\N	\N	100	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
589	Илиос	\N	2012-08-31 13:16:34.079204	2012-08-31 13:16:34.079204	0	25	8 918 4745870; 8 918 4745841	\N	\N	\N	\N	\N	\N	\N	\N	154	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
560	Гранд Отель Валентина 5*	\N	2012-08-31 13:16:33.613872	2012-08-31 13:16:33.613872	0	25	8 (86133) 3-98-28	\N	\N	\N	\N	\N	\N	\N	\N	103	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
562	Мария	\N	2012-08-31 13:16:33.661483	2012-08-31 13:16:33.661483	0	31	8 (988) 770-43-24	\N	\N	\N	\N	\N	\N	\N	\N	151	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
565	На Терской 63/1	\N	2012-08-31 13:16:33.701464	2012-08-31 13:16:33.701464	0	25	8(86133) 56924, 45806; 8 928 4374650	\N	\N	\N	\N	\N	\N	\N	\N	63/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
567	Застава	\N	2012-08-31 13:16:33.747895	2012-08-31 13:16:33.747895	0	25	8 (86133) 54-921, 8 (86133) 4-68-95	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тираспольская
569	Три сестры	\N	2012-08-31 13:16:33.778647	2012-08-31 13:16:33.778647	0	25	8(86133) 42352; 8 918 1168745	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Трудящихся
573	Частный дом	\N	2012-08-31 13:16:33.839835	2012-08-31 13:16:33.839835	0	25	8(86133) 52907;  8 918 6640519; 8 918 9964104	\N	\N	\N	\N	\N	\N	\N	\N	115	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
574	Малый исток	\N	2012-08-31 13:16:33.852089	2012-08-31 13:16:33.852089	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	184	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
575	У Дениса	\N	2012-08-31 13:16:33.863255	2012-08-31 13:16:33.863255	0	25	8(86133) 4-25-96, 8 918 4158855	\N	\N	\N	\N	\N	\N	\N	\N	221	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
577	Амена	\N	2012-08-31 13:16:33.883951	2012-08-31 13:16:33.883951	0	25	8(86133) 4 08 70;   8 961 53 46 275	\N	\N	\N	\N	\N	\N	\N	\N	238	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
578	Синдика	\N	2012-08-31 13:16:33.897516	2012-08-31 13:16:33.897516	0	25	8 918 4482327; 8 918 3357280	\N	\N	\N	\N	\N	\N	\N	\N	299	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
579	На Тургенева 3	\N	2012-08-31 13:16:33.908478	2012-08-31 13:16:33.908478	0	25	8 (86133) 37254, 8 918 4159307	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
580	Лера	\N	2012-08-31 13:16:33.930863	2012-08-31 13:16:33.930863	0	25	8 (86133) 42-926, 8 918 48-69-018, 8 918 39-63-517	\N	\N	\N	\N	\N	\N	\N	\N	42 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
581	На Тургенева 44	\N	2012-08-31 13:16:33.942128	2012-08-31 13:16:33.942128	0	25	8(86133) 32388, 31979; 8 918 6463848	\N	\N	\N	\N	\N	\N	\N	\N	44	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
583	Сим-Сим	\N	2012-08-31 13:16:33.965188	2012-08-31 13:16:33.965188	0	25	89184625354	\N	\N	\N	\N	\N	\N	\N	\N	57	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
585	Агрия	\N	2012-08-31 13:16:33.995121	2012-08-31 13:16:33.995121	0	25	8 918 46-22-776, 8 918 43-43-322,  8 (86133)54-801	\N	\N	\N	\N	\N	\N	\N	\N	97	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
586	Тургенева 98 Б	\N	2012-08-31 13:16:34.009782	2012-08-31 13:16:34.009782	0	25	8 918 4987952,  8 911 7932185	\N	\N	\N	\N	\N	\N	\N	\N	98 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
429	Эдем	\N	2012-08-31 13:16:31.393488	2012-08-31 13:16:31.393488	0	34	8 (962) 455-05-04	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кленовая
590	Колибри	\N	2012-08-31 13:16:34.09707	2012-08-31 13:16:34.09707	0	25	8(86133)3-27-21, 8-918-4382240	\N	\N	\N	\N	\N	\N	\N	\N	183	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
592	Золушка	\N	2012-08-31 13:16:34.119062	2012-08-31 13:16:34.119062	0	25	8(86133) 24275, 8 918 4429309	\N	\N	\N	\N	\N	\N	\N	\N	222/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
594	Черноморский	\N	2012-08-31 13:16:34.152579	2012-08-31 13:16:34.152579	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Джеметинский проезд
596	Нива	\N	2012-08-31 13:16:34.187143	2012-08-31 13:16:34.187143	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крымская
561	Алла	\N	2012-08-31 13:16:33.639256	2012-08-31 13:16:33.639256	0	31	8 (918) 055-20-52 ; 8 (918) 446-07-03	\N	\N	\N	\N	\N	\N	\N	\N	3-Feb	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
988	Лидия	\N	2012-08-31 13:31:08.847742	2012-08-31 13:31:08.847742	0	25	8 918 43-84-557, 8 918 49-18-452, 8 (96133) 52-606	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Краснозеленых
629	На Лазурной	\N	2012-08-31 13:16:34.803068	2012-08-31 13:16:34.803068	0	32	8-918-986-94-85, 8-918-218-73-21	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лазурная
636	Ромио 	\N	2012-08-31 13:16:34.918209	2012-08-31 13:16:34.918209	0	27	8 (86133) 74-6-81, 8 918 6452951, 8 918 4617124	\N	\N	\N	\N	\N	\N	\N	\N	51 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лиманная
604	У Юры	\N	2012-08-31 13:16:34.318858	2012-08-31 13:16:34.318858	0	27	8-918-4614726, 8(86133)73303	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	3-ий Черноморский проезд
605	Солнечный дом	\N	2012-08-31 13:16:34.349467	2012-08-31 13:16:34.349467	0	27	8 (918) 4800062	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Батарейная
619	У Марии	\N	2012-08-31 13:16:34.626519	2012-08-31 13:16:34.626519	0	27	8 861-33 74-7-05	\N	\N	\N	\N	\N	\N	\N	\N	55	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Заводская
617	Азалия	\N	2012-08-31 13:16:34.603067	2012-08-31 13:16:34.603067	0	32	8 (918) 461-48-87, 8  (961) 511-08-96	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя
606	Сябры	\N	2012-08-31 13:16:34.363483	2012-08-31 13:16:34.363483	0	27	8(86133) 75417,8 918 4833210, 8 918 6687376	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Восточная
640	Понтос	\N	2012-08-31 13:16:34.980834	2012-08-31 13:16:34.980834	0	27	8 (86133) 74 960	\N	\N	\N	\N	\N	\N	\N	\N	211/6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
607	Арарат	\N	2012-08-31 13:16:34.377546	2012-08-31 13:16:34.377546	0	27	8 918 6737677; 8 918 9515515	\N	\N	\N	\N	\N	\N	\N	\N	31	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Восточная
608	Сканчели	\N	2012-08-31 13:16:34.405787	2012-08-31 13:16:34.405787	0	27	8(86133) 74574, 8 918 4651030, 8 918 2121919	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
609	Гелиос	\N	2012-08-31 13:16:34.416801	2012-08-31 13:16:34.416801	0	27	(86133)75560	\N	\N	\N	\N	\N	\N	\N	\N	2 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
610	Ксенофонт-Мария	\N	2012-08-31 13:16:34.428297	2012-08-31 13:16:34.428297	0	27	8 (86133) 7-41-51, 8 918 6640511	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
611	Глориэс	\N	2012-08-31 13:16:34.43922	2012-08-31 13:16:34.43922	0	27	 8 964 9276607, 8 964 9343704; 8 918 4169868, 8 964 9276609; 8 (86133) 48092	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
613	Янис	\N	2012-08-31 13:16:34.532502	2012-08-31 13:16:34.532502	0	27	8(86133) 74859; 8 918 4937078	\N	\N	\N	\N	\N	\N	\N	\N	39/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
614	Элита 3*	\N	2012-08-31 13:16:34.551708	2012-08-31 13:16:34.551708	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	41 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
615	Антураж	\N	2012-08-31 13:16:34.572466	2012-08-31 13:16:34.572466	0	27	89,180,504,501	\N	\N	\N	\N	\N	\N	\N	\N	83	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
598	Черноморец	\N	2012-08-31 13:16:34.216302	2012-08-31 13:16:34.216302	0	32	8 (86141) 3-37-85, 7-12-74, 7-12-75	\N	\N	\N	\N	\N	\N	\N	\N	128	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
621	На Комрова 17	\N	2012-08-31 13:16:34.671614	2012-08-31 13:16:34.671614	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Коморова
622	В гостях у Ольги	\N	2012-08-31 13:16:34.690244	2012-08-31 13:16:34.690244	0	27	89,189,945,014	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Комсомольская
623	В гостях у Яниса	\N	2012-08-31 13:16:34.704851	2012-08-31 13:16:34.704851	0	27	8 918 4543488, 8 988 3143089	\N	\N	\N	\N	\N	\N	\N	\N	24 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Комсомольская
626	Николетта	\N	2012-08-31 13:16:34.758931	2012-08-31 13:16:34.758931	0	27	8 (918) 285-6267, 8 (909) 448-3518	\N	\N	\N	\N	\N	\N	\N	\N	94/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красноармейская
627	Алина	\N	2012-08-31 13:16:34.775052	2012-08-31 13:16:34.775052	0	27	8(86133) 75384; 8 918 2510723	\N	\N	\N	\N	\N	\N	\N	\N	94/4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красноармейская
628	Парус-Анапа	\N	2012-08-31 13:16:34.790008	2012-08-31 13:16:34.790008	0	27	8 903 9930150 , 8 918 3461408	\N	\N	\N	\N	\N	\N	\N	\N	26 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курганная
639	Людмила	\N	2012-08-31 13:16:34.966871	2012-08-31 13:16:34.966871	0	34	 8 (86141) 6-16-62, 8 (928) 434-04-51	\N	\N	\N	\N	\N	\N	\N	\N	47	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красных Партизан
632	Ирина	\N	2012-08-31 13:16:34.854191	2012-08-31 13:16:34.854191	0	27	8 (86133) 48-0-71, 8 928 2471894	\N	\N	\N	\N	\N	\N	\N	\N	2 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лермонтова
634	Южное  море	\N	2012-08-31 13:16:34.882494	2012-08-31 13:16:34.882494	0	27	8 960 4789234, 8 918 9870997	\N	\N	\N	\N	\N	\N	\N	\N	2 Г	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лермонтова
638	Луиза	\N	2012-08-31 13:16:34.94837	2012-08-31 13:16:34.94837	0	27	8(86133) 73621; 8 918 4555561	\N	\N	\N	\N	\N	\N	\N	\N	125	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
601	Южный	\N	2012-08-31 13:16:34.271338	2012-08-31 13:16:34.271338	0	39	 8 (86141) 2-11-45, 3-30-86	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Подгоная
641	Патра	\N	2012-08-31 13:16:34.99341	2012-08-31 13:16:34.99341	0	27	8 (86133) 7 56 72, 8 988 336 0948	\N	\N	\N	\N	\N	\N	\N	\N	221	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
642	У Софии	\N	2012-08-31 13:16:35.01057	2012-08-31 13:16:35.01057	0	27	8(86133) 73938; 8 918 6439678, 8 918 2422823 	\N	\N	\N	\N	\N	\N	\N	\N	53	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
618	Аквамарин	\N	2012-08-31 13:16:34.613568	2012-08-31 13:16:34.613568	0	32	8 (929) 830-90-43	\N	\N	\N	\N	\N	\N	\N	\N	65	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
684	Енисей	\N	2012-08-31 13:16:35.832406	2012-08-31 13:16:35.832406	0	27	8 (86133) 74-992	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Солнечная
678	Белый парус	\N	2012-08-31 13:16:35.735342	2012-08-31 13:16:35.735342	0	27	8(86133) 61035, 8 988 3361035, 8 928 2315930, 8 964 9321165	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Святого Георгия
660	Алроса	\N	2012-08-31 13:16:35.341888	2012-08-31 13:16:35.341888	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Горный 
646	Норильчанка	\N	2012-08-31 13:16:35.083445	2012-08-31 13:16:35.083445	0	27	8(86133) 74-593; 8 918 4931929	\N	\N	\N	\N	\N	\N	\N	\N	31	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Объездная
659	Галина	\N	2012-08-31 13:16:35.32573	2012-08-31 13:16:35.32573	0	27	8(86133) 75356; 8 918 4901033	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Благовещенский
647	Елизавета	\N	2012-08-31 13:16:35.098412	2012-08-31 13:16:35.098412	0	27	89,184,856,905	\N	\N	\N	\N	\N	\N	\N	\N	35	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Объездная
657	Золотой клен	\N	2012-08-31 13:16:35.295043	2012-08-31 13:16:35.295043	0	27	8(86133) 74667, 74668; 8 918 3366376	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Благовещенский
650	Николай	\N	2012-08-31 13:16:35.15206	2012-08-31 13:16:35.15206	0	27	8(86133) 73630; 8 918 6711906	\N	\N	\N	\N	\N	\N	\N	\N	76	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Овражная
665	Галатея	\N	2012-08-31 13:16:35.500989	2012-08-31 13:16:35.500989	0	27	 (86133) 74-7-74	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	переулок ЛОК "Витязь"
648	Елена	\N	2012-08-31 13:16:35.113535	2012-08-31 13:16:35.113535	0	33	8 (918) 327-93-15, 8 (964) 934-00-17	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приветливая
652	Александрийский 2	\N	2012-08-31 13:16:35.186432	2012-08-31 13:16:35.186432	0	27	8 988 3414173, 8 928 8820125	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Александрийский
653	Манго	\N	2012-08-31 13:16:35.202959	2012-08-31 13:16:35.202959	0	27	8 918 4150929, 8 961 5157767	\N	\N	\N	\N	\N	\N	\N	\N	4 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Александрийский
654	Имера	\N	2012-08-31 13:16:35.217126	2012-08-31 13:16:35.217126	0	27	8 (988) 330-03-73, 8 (988) 320-33-88	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Александрийский
655	Родос	\N	2012-08-31 13:16:35.252047	2012-08-31 13:16:35.252047	0	33	8 (928) 360-76-01	\N	\N	\N	\N	\N	\N	\N	\N	41	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Абрикосовая
664	Ретро	\N	2012-08-31 13:16:35.411472	2012-08-31 13:16:35.411472	0	35	8 (918) 48-42-420, 8 (918) 234-44-08	\N	\N	\N	\N	\N	\N	\N	\N	11 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
771	Круиз	\N	2012-08-31 13:16:37.543134	2012-08-31 13:16:37.543134	0	30	89,054,043,765	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманский проезд
661	Любомир	\N	2012-08-31 13:16:35.360613	2012-08-31 13:16:35.360613	0	27	8 (86133) 7-54-15, 8 (988) 321-91-91, 8(988) 321-81-81	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Звездный
663	Retro	\N	2012-08-31 13:16:35.392733	2012-08-31 13:16:35.392733	0	27	8 (86133) 75-495	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Цветочный
667	Янакис	\N	2012-08-31 13:16:35.535993	2012-08-31 13:16:35.535993	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Победы
668	Спатрак	\N	2012-08-31 13:16:35.55012	2012-08-31 13:16:35.55012	0	27	8 (86133) 48105, 8 928 9019519	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Победы
669	Мария на Просторной	\N	2012-08-31 13:16:35.566466	2012-08-31 13:16:35.566466	0	27	8 918 4610400; 8 918 4778600	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Понтийская (Горького)
670	Олимпик	\N	2012-08-31 13:16:35.57774	2012-08-31 13:16:35.57774	0	27	8 918 3595886, 8 928 2607814, 8 918 9943393	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр-т Александрийский
673	Зодиак	\N	2012-08-31 13:16:35.640811	2012-08-31 13:16:35.640811	0	27	8 (86133) 75-6-20,  8 (918) 112-50-10	\N	\N	\N	\N	\N	\N	\N	\N	24, 26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр. Южный
674	Konstantinopol	\N	2012-08-31 13:16:35.670746	2012-08-31 13:16:35.670746	0	27	8 (988) 32-04-488	\N	\N	\N	\N	\N	\N	\N	\N	5 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Роз
675	Зиридис	\N	2012-08-31 13:16:35.681412	2012-08-31 13:16:35.681412	0	27	8 918 6647796, 8 928 2920095, 8 918 9855009	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Светлая
676	Марсель	\N	2012-08-31 13:16:35.699812	2012-08-31 13:16:35.699812	0	27	89,184,554,285	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Светлая
677	София	\N	2012-08-31 13:16:35.713871	2012-08-31 13:16:35.713871	0	34	 (918) 444-78-91, 8 (918) 160-66-06 	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Альпийская
679	Три богатыря	\N	2012-08-31 13:16:35.749403	2012-08-31 13:16:35.749403	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Святого Георгия
680	Греческий дворик	\N	2012-08-31 13:16:35.764112	2012-08-31 13:16:35.764112	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Сельская
681	Орхидея	\N	2012-08-31 13:16:35.780561	2012-08-31 13:16:35.780561	0	27	8(86133) 73-074, 8-928-20-866-40, 8-918-969-74-44	\N	\N	\N	\N	\N	\N	\N	\N	9 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Сельская
682	Флора	\N	2012-08-31 13:16:35.795089	2012-08-31 13:16:35.795089	0	27	8 918 222 53 31	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Серебряная
685	Аврора	\N	2012-08-31 13:16:35.866054	2012-08-31 13:16:35.866054	0	27	8 918 6645556; 8 905 4763158	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Солнечная
732	Фея-2	\N	2012-08-31 13:16:36.712171	2012-08-31 13:16:36.712171	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	107 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
458	Семейный отдых	\N	2012-08-31 13:16:31.866242	2012-08-31 13:16:31.866242	0	31	8 928 4405344, 8 952 8450239	\N	\N	\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Кубанский 
658	Астра	\N	2012-08-31 13:16:35.313334	2012-08-31 13:16:35.313334	0	34	8 (918) 442-42-64, 8 (928) 037-80-10	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луговая
991	На Крепостной 	\N	2012-08-31 13:31:09.015008	2012-08-31 13:31:09.015008	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	47 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крепостная 
702	Антей	\N	2012-08-31 13:16:36.148399	2012-08-31 13:16:36.148399	0	27	8 918 4660245  ; 8 918 4446248	\N	\N	\N	\N	\N	\N	\N	\N	119 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
687	Руслана	\N	2012-08-31 13:16:35.896541	2012-08-31 13:16:35.896541	0	27	8 (86133) 48110, 8 961 5123060, 8 964 9152603	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Толстого
717	Дом у моря	\N	2012-08-31 13:16:36.458209	2012-08-31 13:16:36.458209	0	32	 8 (918) 385-17-05	\N	\N	\N	\N	\N	\N	\N	\N	8 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курзальная 
688	Маруся	\N	2012-08-31 13:16:35.912792	2012-08-31 13:16:35.912792	0	27	8(952) 8289207, 8(928) 4335779, 8(909) 4649926 	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Толстого
718	Мишутка	\N	2012-08-31 13:16:36.478307	2012-08-31 13:16:36.478307	0	28	8 (86133) 3-36-51, 8 (909) 456-40-83	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Виноградная
689	У Александра	\N	2012-08-31 13:16:35.930201	2012-08-31 13:16:35.930201	0	27	8(86133) 73805, 8 988 3157425 ; 81049912262849	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
690	Югра	\N	2012-08-31 13:16:35.94383	2012-08-31 13:16:35.94383	0	27	8 (86133) 7-46-71, 7-46-74 \n	\N	\N	\N	\N	\N	\N	\N	\N	33/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
691	Зеленый попугай	\N	2012-08-31 13:16:35.963038	2012-08-31 13:16:35.963038	0	27	8(86133) 74-675;8 918 4144507; 8 960 4831981	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
692	У Михалыча	\N	2012-08-31 13:16:35.977364	2012-08-31 13:16:35.977364	0	27	8(86133) 75678; 8 918 9415914, 8 918 0498472	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
693	Рандеву	\N	2012-08-31 13:16:35.991605	2012-08-31 13:16:35.991605	0	27	8(86133) 74623; 8-918-4404757	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
694	Любава	\N	2012-08-31 13:16:36.005274	2012-08-31 13:16:36.005274	0	27	8 918 2309613; 8 918 0377917	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тракторная
695	Панаетис	\N	2012-08-31 13:16:36.033674	2012-08-31 13:16:36.033674	0	27	8 (86133) 66545; 8 (86133) 48098	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Уютная
696	Уютная 22	\N	2012-08-31 13:16:36.048259	2012-08-31 13:16:36.048259	0	27	8 961 5179718; 8 918 3213564, 8 918 3803918	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Уютная
698	Восторг	\N	2012-08-31 13:16:36.075356	2012-08-31 13:16:36.075356	0	27	(86133) 75-335, 48-035, (918) 386-70-63, 05-07-440	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
699	Ирийский сад	\N	2012-08-31 13:16:36.099666	2012-08-31 13:16:36.099666	0	27	8 918 4981484, 8 (86133) 48127	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
703	Санта	\N	2012-08-31 13:16:36.164757	2012-08-31 13:16:36.164757	0	27	8 918 4340786; 8 918 1310031	\N	\N	\N	\N	\N	\N	\N	\N	136 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
704	Симона	\N	2012-08-31 13:16:36.18789	2012-08-31 13:16:36.18789	0	27	8 916 2507727, 8 918 0584685, 8 918 9858350	\N	\N	\N	\N	\N	\N	\N	\N	143 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
705	Домашний	\N	2012-08-31 13:16:36.200104	2012-08-31 13:16:36.200104	0	27	8 (918) 4730373, 8 (918) 2122056	\N	\N	\N	\N	\N	\N	\N	\N	147 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
706	Джули	\N	2012-08-31 13:16:36.210964	2012-08-31 13:16:36.210964	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	150 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
707	Тихий берег	\N	2012-08-31 13:16:36.226095	2012-08-31 13:16:36.226095	0	27	8 (86133) 7-48-40,  8 (918) 319-73-35\n	\N	\N	\N	\N	\N	\N	\N	\N	164 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
712	Сибирь	\N	2012-08-31 13:16:36.321315	2012-08-31 13:16:36.321315	0	28	8 918 4438404, 8 918 6723075	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	1-ый проезд
713	Азат (Azat)	\N	2012-08-31 13:16:36.333116	2012-08-31 13:16:36.333116	0	28	8 (86133) 333-85, 8-918-4633639	\N	\N	\N	\N	\N	\N	\N	\N	18/13 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	1-ый проезд/Песчаная
714	На Виноградной 10	\N	2012-08-31 13:16:36.350695	2012-08-31 13:16:36.350695	0	28	8 918 0152342, 8 918 6716653	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Виноградная
715	На Виноградной 4	\N	2012-08-31 13:16:36.363511	2012-08-31 13:16:36.363511	0	28	ре	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Виноградная
700	Лазурный	\N	2012-08-31 13:16:36.111981	2012-08-31 13:16:36.111981	0	33	8 (86141) 6-54-06, 6-61-12, 8 (918) 233-94-93	\N	\N	\N	\N	\N	\N	\N	\N	115	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
719	Камена	\N	2012-08-31 13:16:36.501788	2012-08-31 13:16:36.501788	0	28	8(86133)3-36-31; 8(918) 474-03-52	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Морская
720	Веселый рапан	\N	2012-08-31 13:16:36.514885	2012-08-31 13:16:36.514885	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	19 А/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Морская
721	Каурма	\N	2012-08-31 13:16:36.528371	2012-08-31 13:16:36.528371	0	28	8-918-275-31-33, 8-918-055-98-31	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Морская
722	Песчаный берег	\N	2012-08-31 13:16:36.552525	2012-08-31 13:16:36.552525	0	28	8(86133) 3-35-95;  8 918 6252001	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
723	На Песчаной	\N	2012-08-31 13:16:36.567506	2012-08-31 13:16:36.567506	0	28	8-918-46-33-639	\N	\N	\N	\N	\N	\N	\N	\N	13 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
724	Песчаная 18	\N	2012-08-31 13:16:36.588751	2012-08-31 13:16:36.588751	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
725	На Песчаной 22	\N	2012-08-31 13:16:36.600962	2012-08-31 13:16:36.600962	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
726	Песчаная 25-1	\N	2012-08-31 13:16:36.614305	2012-08-31 13:16:36.614305	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	25-1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
727	Отдых у моря	\N	2012-08-31 13:16:36.62742	2012-08-31 13:16:36.62742	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
728	Ани	\N	2012-08-31 13:16:36.64764	2012-08-31 13:16:36.64764	0	28	8 918 419-06-49 , 8 918 482-73-84	\N	\N	\N	\N	\N	\N	\N	\N	9 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Песчаная
729	Фея-1	\N	2012-08-31 13:16:36.660409	2012-08-31 13:16:36.660409	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский пр-т, 1-ый проезд
701	Валентина	\N	2012-08-31 13:16:36.124515	2012-08-31 13:16:36.124515	0	32	8  (918) 648-33-34	\N	\N	\N	\N	\N	\N	\N	\N	46	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Адмирала Холостякого
463	Солнышко	\N	2012-08-31 13:16:31.930319	2012-08-31 13:16:31.930319	0	25	8(86133) 46416, 8 918 1628424	\N	\N	\N	\N	\N	\N	\N	\N	47 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крепостная 
464	Илиадис	\N	2012-08-31 13:16:31.941081	2012-08-31 13:16:31.941081	0	25	8 918 640-47-53, 8 918 390-78-04	\N	\N	\N	\N	\N	\N	\N	\N	139	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крымская
753	Пять звезд	\N	2012-08-31 13:16:37.142271	2012-08-31 13:16:37.142271	0	28	8 918 6221496, 8 918 4805100	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	проезд Золотой берег
739	Ёргос	\N	2012-08-31 13:16:36.806349	2012-08-31 13:16:36.806349	0	28	8(86133) 33448; 8 918 3691211	\N	\N	\N	\N	\N	\N	\N	\N	229	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
624	Алиса	\N	2012-08-31 13:16:34.727112	2012-08-31 13:16:34.727112	0	37	8 (918) 292-52-55	\N	\N	\N	\N	\N	\N	\N	\N	4 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
762	Престиж-отель 4*	\N	2012-08-31 13:16:37.332427	2012-08-31 13:16:37.332427	0	30	8 (918) 44-48-774\n 	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
734	Проспект 135	\N	2012-08-31 13:16:36.73786	2012-08-31 13:16:36.73786	0	28	89,184,138,803	\N	\N	\N	\N	\N	\N	\N	\N	135	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
730	Лиза	\N	2012-08-31 13:16:36.682335	2012-08-31 13:16:36.682335	0	28	89,883,453,010	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр. Престижный
735	Евдокия	\N	2012-08-31 13:16:36.749686	2012-08-31 13:16:36.749686	0	28	8(86133) 33851; 8 918 4543992, 8 918 0153277	\N	\N	\N	\N	\N	\N	\N	\N	137	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
736	Катюша	\N	2012-08-31 13:16:36.760238	2012-08-31 13:16:36.760238	0	28	8(86133) 33407; 8 918 4561852	\N	\N	\N	\N	\N	\N	\N	\N	147	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
737	Русич	\N	2012-08-31 13:16:36.773068	2012-08-31 13:16:36.773068	0	28	8 (86133) 33142; 8 918 9928820; 8 (86133) 33-5-33;	\N	\N	\N	\N	\N	\N	\N	\N	20 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
738	Натали	\N	2012-08-31 13:16:36.787532	2012-08-31 13:16:36.787532	0	28	8(86133) 3-35-38; 8 918 3293054	\N	\N	\N	\N	\N	\N	\N	\N	219	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
740	Бухта Императора	\N	2012-08-31 13:16:36.819917	2012-08-31 13:16:36.819917	0	28	8 918 3600039, 8 918 1537201	\N	\N	\N	\N	\N	\N	\N	\N	40 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
741	Аист	\N	2012-08-31 13:16:36.83175	2012-08-31 13:16:36.83175	0	28	89,184,668,600	\N	\N	\N	\N	\N	\N	\N	\N	42/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
742	Эллина-Морячка	\N	2012-08-31 13:16:36.859286	2012-08-31 13:16:36.859286	0	28	8 (86133) 3-09-31	\N	\N	\N	\N	\N	\N	\N	\N	64/4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
743	Звездный	\N	2012-08-31 13:16:36.879386	2012-08-31 13:16:36.879386	0	28	8 918 3409147 ; 8 918 6434724	\N	\N	\N	\N	\N	\N	\N	\N	70 Г/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
744	Иволга	\N	2012-08-31 13:16:36.905266	2012-08-31 13:16:36.905266	0	28	8 (86133) 3-39-51, 8 918 3135217	\N	\N	\N	\N	\N	\N	\N	\N	74	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
745	Ассоль	\N	2012-08-31 13:16:36.920874	2012-08-31 13:16:36.920874	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	75 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
746	Прибой-отдых у Полины	\N	2012-08-31 13:16:36.936656	2012-08-31 13:16:36.936656	0	28	89,184,466,846	\N	\N	\N	\N	\N	\N	\N	\N	81 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
748	Максим	\N	2012-08-31 13:16:36.97676	2012-08-31 13:16:36.97676	0	28	89,883,887,849	\N	\N	\N	\N	\N	\N	\N	\N	88/13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
749	Томич	\N	2012-08-31 13:16:37.001582	2012-08-31 13:16:37.001582	0	28	8-918-9693502, 9-918-1611474	\N	\N	\N	\N	\N	\N	\N	\N	88/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
750	Дельта	\N	2012-08-31 13:16:37.027005	2012-08-31 13:16:37.027005	0	28	8-918-4774305, 8-918-3206412	\N	\N	\N	\N	\N	\N	\N	\N	88/7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
751	Аква-Солярис	\N	2012-08-31 13:16:37.049322	2012-08-31 13:16:37.049322	0	28	8 905 4736400; 8 918 4713355	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
770	Солнечный	\N	2012-08-31 13:16:37.513154	2012-08-31 13:16:37.513154	0	33	 8 (86141) 6-51-66, 6-56-41	\N	\N	\N	\N	\N	\N	\N	\N	77	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
754	Пантелей	\N	2012-08-31 13:16:37.183524	2012-08-31 13:16:37.183524	0	28	8 918 4442726, 8 918 1224444 , 8 918 3107710	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Славная
756	Бревенчатый рай	\N	2012-08-31 13:16:37.213848	2012-08-31 13:16:37.213848	0	29	8 (86133) 2-96-59; 8 918 4383396	\N	\N	\N	\N	\N	\N	\N	\N	80	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Аэродромная
757	На трезвую голову	\N	2012-08-31 13:16:37.230498	2012-08-31 13:16:37.230498	0	30	89,184,629,721	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	3-ий проезд
758	Вика	\N	2012-08-31 13:16:37.264024	2012-08-31 13:16:37.264024	0	30	8 918 4749341, 8 918 6729608	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Казачий стан
761	Винговер	\N	2012-08-31 13:16:37.310459	2012-08-31 13:16:37.310459	0	30	89,183,432,603	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
763	Шингари	\N	2012-08-31 13:16:37.345579	2012-08-31 13:16:37.345579	0	30	8 918 049-92-44	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	район Варваровсой щели
764	У Левона	\N	2012-08-31 13:16:37.356785	2012-08-31 13:16:37.356785	0	30	8 (918) 444-36-54; 8 (918) 672-6	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Рекордная
765	Южная дача	\N	2012-08-31 13:16:37.368289	2012-08-31 13:16:37.368289	0	30	8 (918) 666-78-99; 8 (928) 881-73-82\n	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Рекордная
766	Русское поместье	\N	2012-08-31 13:16:37.385456	2012-08-31 13:16:37.385456	0	30	8 918 1331603, 8 929 8264851	\N	\N	\N	\N	\N	\N	\N	\N	143	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
767	Белая роза	\N	2012-08-31 13:16:37.398763	2012-08-31 13:16:37.398763	0	30	8 (918) 489-34-91; 8 (918) 191-61-51\n	\N	\N	\N	\N	\N	\N	\N	\N	149	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
768	Ромео	\N	2012-08-31 13:16:37.412484	2012-08-31 13:16:37.412484	0	30	8 (918) 434-22-72; 8 (918) 002-78-32	\N	\N	\N	\N	\N	\N	\N	\N	175 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
769	Аннушка	\N	2012-08-31 13:16:37.485289	2012-08-31 13:16:37.485289	0	30	8 918 1395764, 8 928 4005234	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Солнечная
752	Афродита	\N	2012-08-31 13:16:37.071988	2012-08-31 13:16:37.071988	0	35	 8 (918) 139-34-48	\N	\N	\N	\N	\N	\N	\N	\N	9 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
970	Императрица 	\N	2012-08-31 13:16:41.863572	2012-08-31 13:16:41.863572	0	38	8  (918) 632-68-55	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
760	уЮТ	\N	2012-08-31 13:16:37.295491	2012-08-31 13:16:37.295491	0	34	 8 (86141) 6-01-23	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Курортный
792	У Леонида	\N	2012-08-31 13:16:38.068215	2012-08-31 13:16:38.068215	0	31	8 (918) 410-93-86 ; 8 (918) 444-02-48	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Самбурова
993	Анапка-2	\N	2012-08-31 13:31:09.064623	2012-08-31 13:31:09.064623	0	25	8 (86133)43309, 8 918 4766537	\N	\N	\N	\N	\N	\N	\N	\N	41 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крымская
790	Татьяна	\N	2012-08-31 13:16:37.886867	2012-08-31 13:16:37.886867	0	31	89,184,390,207	\N	\N	\N	\N	\N	\N	\N	\N	98	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
784	Кассандра	\N	2012-08-31 13:16:37.731725	2012-08-31 13:16:37.731725	0	31	8 (86133) 664-41, 664-42, 8 (918) 493-51-97	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Бугазская коса, причал 14
716	Акварель 	\N	2012-08-31 13:16:36.378574	2012-08-31 13:16:36.378574	0	31	8 (918) 171-77-53, 8 (928) 660-62-54	\N	\N	\N	\N	\N	\N	\N	\N	25 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
799	Кубанский хуторок	\N	2012-08-31 13:16:38.169342	2012-08-31 13:16:38.169342	0	31	 8(918) 23-15-755	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
789	На Самбурова 8	\N	2012-08-31 13:16:37.862706	2012-08-31 13:16:37.862706	0	31	89,183,616,175	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
786	Алания	\N	2012-08-31 13:16:37.81219	2012-08-31 13:16:37.81219	0	31	8 918 0516553, 8 918 9963227, 8 (86133) 78205	\N	\N	\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Кубанский 
971	Джанхот	\N	2012-08-31 13:16:41.87936	2012-08-31 13:16:41.87936	0	38	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
616	Анжела	\N	2012-08-31 13:16:34.59243	2012-08-31 13:16:34.59243	0	30	8-918-171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Утришская
992	Ольга	\N	2012-08-31 13:31:09.052928	2012-08-31 13:31:09.052928	0	32	8 (918) 399-41-99, 8 (86141) 3-51-22	\N	\N	\N	\N	\N	\N	\N	\N	133	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
772	7-ая Миля	\N	2012-08-31 13:16:37.580464	2012-08-31 13:16:37.580464	0	30	89,181,118,802	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
798	Марго	\N	2012-08-31 13:16:38.149019	2012-08-31 13:16:38.149019	0	31	 (86133) 7-81-68, 8 (918) 443-90-34, 8 (918) 461-62-75	\N	\N	\N	\N	\N	\N	\N	\N	116	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Слесова
788	На Самбурова 37	\N	2012-08-31 13:16:37.841671	2012-08-31 13:16:37.841671	0	31	89,284,124,826	\N	\N	\N	\N	\N	\N	\N	\N	37	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
773	Долина	\N	2012-08-31 13:16:37.599645	2012-08-31 13:16:37.599645	0	30	8-918-4628461	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
774	E.V.A	\N	2012-08-31 13:16:37.612184	2012-08-31 13:16:37.612184	0	30	\N	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
778	Центральный	\N	2012-08-31 13:16:37.656665	2012-08-31 13:16:37.656665	0	30	\N	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная 
780	Сукко	\N	2012-08-31 13:16:37.677815	2012-08-31 13:16:37.677815	0	30	8-918-171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная, проезд 14
781	Ивушка	\N	2012-08-31 13:16:37.690685	2012-08-31 13:16:37.690685	0	30	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
783	Горный	\N	2012-08-31 13:16:37.717089	2012-08-31 13:16:37.717089	0	30	8 (918) 055-54-72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
785	Green's	\N	2012-08-31 13:16:37.742579	2012-08-31 13:16:37.742579	0	31	8-917-059-70-66, 8-965-432-10-57	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Виноградная
793	Лёва	\N	2012-08-31 13:16:38.079132	2012-08-31 13:16:38.079132	0	31	 8 (988) 242-30-94 ; 8 (918) 969-69-67	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Вишневый
794	Благовещенский	\N	2012-08-31 13:16:38.090799	2012-08-31 13:16:38.090799	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	15 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Пограничный
795	Домашний отель	\N	2012-08-31 13:16:38.103158	2012-08-31 13:16:38.103158	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	42	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 пер Лазурный
797	Ранчо	\N	2012-08-31 13:16:38.130984	2012-08-31 13:16:38.130984	0	31	 8(918) 175-28-70, 8(960)49-10-867, 8(918)37-90-235	\N	\N	\N	\N	\N	\N	\N	\N	17/13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 Таманская , Черноморская 
803	Ладога	\N	2012-08-31 13:16:38.341671	2012-08-31 13:16:38.341671	0	31	8 (86133) 7-82-47 	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная 
800	Черномор	\N	2012-08-31 13:16:38.18114	2012-08-31 13:16:38.18114	0	31	8(918) 459-000-9	\N	\N	\N	\N	\N	\N	\N	\N	2+E624	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
801	Анапчанка	\N	2012-08-31 13:16:38.194554	2012-08-31 13:16:38.194554	0	31	8 (918) 240-21-18	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
802	Молдованочка	\N	2012-08-31 13:16:38.22102	2012-08-31 13:16:38.22102	0	31	8 (918) 219-92-98, 8(918) 365-22-74	\N	\N	\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Слесова
649	Дарья	\N	2012-08-31 13:16:35.128011	2012-08-31 13:16:35.128011	0	31	8 (918) 190-14-76	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
804	Уралочка	\N	2012-08-31 13:16:38.481159	2012-08-31 13:16:38.481159	0	31	 8 (86133) 6-11-78	\N	\N	\N	\N	\N	\N	\N	\N	55	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
805	Азимут	\N	2012-08-31 13:16:38.49679	2012-08-31 13:16:38.49679	0	31	8 (918) 170-91-22	\N	\N	\N	\N	\N	\N	\N	\N	72	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
806	Абсолют на Школьной	\N	2012-08-31 13:16:38.510141	2012-08-31 13:16:38.510141	0	31	8 (918) 954-56-83	\N	\N	\N	\N	\N	\N	\N	\N	57	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
807	Дельфин	\N	2012-08-31 13:16:38.523721	2012-08-31 13:16:38.523721	0	31	8 (918) 315-56-03, 8  (961) 521-81-43	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Пограничный
808	Домик у моря	\N	2012-08-31 13:16:38.590293	2012-08-31 13:16:38.590293	0	31	8 (918) 456-46-70	\N	\N	\N	\N	\N	\N	\N	\N	62	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Слесова
809	Нептун	\N	2012-08-31 13:16:38.61504	2012-08-31 13:16:38.61504	0	31	8 (86133) 78-19-8, 8 (918) 93-53-834	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
928	Гармония	\N	2012-08-31 13:16:40.96722	2012-08-31 13:16:40.96722	0	34	8 (86141) 6-05-67	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 мкр. Санаторная поляна, ул. Речная
972	Альфа	\N	2012-08-31 13:16:41.900377	2012-08-31 13:16:41.900377	0	39	8 (86141) 5-33-06, 6-86-88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
811	На Новой 	\N	2012-08-31 13:16:38.659758	2012-08-31 13:16:38.659758	0	31	8 (918) 395-76-69, 8 (918) 482-73-69 	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новая
825	Колумб и Я 	\N	2012-08-31 13:16:38.91439	2012-08-31 13:16:38.91439	0	32	8 (86141) 3-46-38, 3-24-12	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
466	Южное настроение	\N	2012-08-31 13:16:31.972034	2012-08-31 13:16:31.972034	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	55 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крымская
830	Tristar Hotel (Тристар Отель) 	\N	2012-08-31 13:16:39.007958	2012-08-31 13:16:39.007958	0	32	8 (916) 086-54-54	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Восточный
832	Абул 	\N	2012-08-31 13:16:39.039803	2012-08-31 13:16:39.039803	0	32	8 (918) 396-45-55, 8 (918) 440-00-04	\N	\N	\N	\N	\N	\N	\N	\N	68/2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
994	Крымская 88	\N	2012-08-31 13:31:09.088855	2012-08-31 13:31:09.088855	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	88	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крымская
841	Lime (Лайм) 	\N	2012-08-31 13:16:39.20921	2012-08-31 13:16:39.20921	0	32	8 (928) 429-86-84	\N	\N	\N	\N	\N	\N	\N	\N	54	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Десантная
467	Мотылек	\N	2012-08-31 13:16:31.986303	2012-08-31 13:16:31.986303	0	25	8( 6133) 4-53-98	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кубанская
846	Viktoria&K 	\N	2012-08-31 13:16:39.369039	2012-08-31 13:16:39.369039	0	32	8 (928) 437-69-27, 8 (918) 987-84-25, 8 (961) 519-65-05	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Первомайская
848	Гостевой дом На Кирова 	\N	2012-08-31 13:16:39.394337	2012-08-31 13:16:39.394337	0	32	 8 (86141) 3-32-30, 8 (928) 661-88-99	\N	\N	\N	\N	\N	\N	\N	\N	 41 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
842	Абсолют	\N	2012-08-31 13:16:39.23781	2012-08-31 13:16:39.23781	0	32	8 (918 ) 461-87-52, 8 (928) 282-09-09	\N	\N	\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Анапская
747	Ксения	\N	2012-08-31 13:16:36.956506	2012-08-31 13:16:36.956506	0	31	8 (918) 384-16-42	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
812	На Таманской	\N	2012-08-31 13:16:38.688387	2012-08-31 13:16:38.688387	0	31	8 (918) 370-80-39, 8 (86133) 78-2-62	\N	\N	\N	\N	\N	\N	\N	\N	97	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
814	На Пограничном	\N	2012-08-31 13:16:38.728896	2012-08-31 13:16:38.728896	0	31	8 (918) 05-05-302, 8 (918) 670-24-42	\N	\N	\N	\N	\N	\N	\N	\N	6 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Пограничный
815	На Приморской	\N	2012-08-31 13:16:38.742057	2012-08-31 13:16:38.742057	0	31	8 (918) 386-75-73, 8 (86133) 78-114	\N	\N	\N	\N	\N	\N	\N	\N	68	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
816	Под акациями	\N	2012-08-31 13:16:38.754094	2012-08-31 13:16:38.754094	0	31	8 (918) 480-58-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
817	Золотые ворота	\N	2012-08-31 13:16:38.77063	2012-08-31 13:16:38.77063	0	31	8 (918) 636-16-16, 8 (928) 415-69-18	\N	\N	\N	\N	\N	\N	\N	\N	124 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Слесова
818	Немецкая Слобода	\N	2012-08-31 13:16:38.79073	2012-08-31 13:16:38.79073	0	31	8 (918) 32-35-385	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Лазурный
819	Наталинна	\N	2012-08-31 13:16:38.803973	2012-08-31 13:16:38.803973	0	31	8 (918) 392-61-67, 8 (918) 933-49-60	\N	\N	\N	\N	\N	\N	\N	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
820	Комильфо	\N	2012-08-31 13:16:38.818507	2012-08-31 13:16:38.818507	0	31	8 (918) 662-86-28	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
821	На Казачьем	\N	2012-08-31 13:16:38.828679	2012-08-31 13:16:38.828679	0	31	8 (918) 469-30-41	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
822	Никлена	\N	2012-08-31 13:16:38.84235	2012-08-31 13:16:38.84235	0	31	8 (918) 464-64-83	\N	\N	\N	\N	\N	\N	\N	\N	65	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
823	Усадьба Елизаветты	\N	2012-08-31 13:16:38.86632	2012-08-31 13:16:38.86632	0	31	8 (918)447-43-38, 8(86133)78-193	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
824	Гостевой дом у моря	\N	2012-08-31 13:16:38.898396	2012-08-31 13:16:38.898396	0	31	 8 (926)389-57-36, 8 (903)774-38-55	\N	\N	\N	\N	\N	\N	\N	\N	121	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
827	Версаль	\N	2012-08-31 13:16:38.958865	2012-08-31 13:16:38.958865	0	32	8 (86141) 4-35-80, 4-38-50, 8-929-844-34-48	\N	\N	\N	\N	\N	\N	\N	\N	180 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
828	КОZМОС	\N	2012-08-31 13:16:38.981875	2012-08-31 13:16:38.981875	0	32	8 (86141) 2-76-96, 2-76-97	\N	\N	\N	\N	\N	\N	\N	\N	230	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
829	Самара	\N	2012-08-31 13:16:38.996055	2012-08-31 13:16:38.996055	0	32	8 (86141) 5-06-05, 5-06-04	\N	\N	\N	\N	\N	\N	\N	\N	25 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
831	Феерия	\N	2012-08-31 13:16:39.0283	2012-08-31 13:16:39.0283	0	32	8 (918) 994-89-04	\N	\N	\N	\N	\N	\N	\N	\N	133	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
834	Анфиса	\N	2012-08-31 13:16:39.104709	2012-08-31 13:16:39.104709	0	32	8 (86141) 5-91-10	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
835	Baden-Baden	\N	2012-08-31 13:16:39.118074	2012-08-31 13:16:39.118074	0	32	8 (918) 360-22-73, 8 (918) 216-39-80	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Васильковая
836	Бухта удачи	\N	2012-08-31 13:16:39.131344	2012-08-31 13:16:39.131344	0	32	8 (918) 445-19-18, 8 (928) 417-85-09, 8 (961) 534-91-44	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Почтовая
838	Гостевой дом на Херсонской	\N	2012-08-31 13:16:39.165336	2012-08-31 13:16:39.165336	0	32	 8 (86141) 3-50-18, 8 (928) 440-00-95	\N	\N	\N	\N	\N	\N	\N	\N	69	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Херсонская
839	Гостевой дом Пекинский Дворик	\N	2012-08-31 13:16:39.176507	2012-08-31 13:16:39.176507	0	32	8 (861) 415-11-16, 8 (928) 043-74-10	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красногвардейская
840	Кипарис	\N	2012-08-31 13:16:39.197637	2012-08-31 13:16:39.197637	0	32	8 (86141) 5-38-98	\N	\N	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская
782	Райский уголок	\N	2012-08-31 13:16:37.701328	2012-08-31 13:16:37.701328	0	32	 8 (86141) 2-00-40	\N	\N	\N	\N	\N	\N	\N	\N	7 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лазурная
843	Александр	\N	2012-08-31 13:16:39.29495	2012-08-31 13:16:39.29495	0	32	 8 (928) 041-53-54; 8 (928) 041-53-55; 8 (86141) 3-29-66	\N	\N	\N	\N	\N	\N	\N	\N	70	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
845	Белая лебедь	\N	2012-08-31 13:16:39.349113	2012-08-31 13:16:39.349113	0	32	 8 (8617) 27-01-88	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкр. Голубая бухта, ул. Голубая бухта
847	Вилла-Марина	\N	2012-08-31 13:16:39.381772	2012-08-31 13:16:39.381772	0	32	8 (918) 110-06-89, 8 (928) 037-84-09, 8 (906) 432-79-59	\N	\N	\N	\N	\N	\N	\N	\N	20 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Морская
849	Гостевой дом по ул. Тельмана 23 	\N	2012-08-31 13:16:39.413718	2012-08-31 13:16:39.413718	0	32	8 (918) 986-95-06	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
995	Дон Педро	\N	2012-08-31 13:31:09.119409	2012-08-31 13:31:09.119409	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	46	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
865	Голубая Волна	\N	2012-08-31 13:16:39.73351	2012-08-31 13:16:39.73351	0	32	 (86141) 7-04-84, 8 (86141) 7-02-43, 7-02-00, 8 (86141) 7-03-00 	\N	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
850	Дивный	\N	2012-08-31 13:16:39.430266	2012-08-31 13:16:39.430266	0	32	8 (84141) 3-55-50, 8 (903) 450-48-69, 8 (928) 280-00-05	\N	\N	\N	\N	\N	\N	\N	\N	28 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Дивноморская
908	Жемчужина 	\N	2012-08-31 13:16:40.586659	2012-08-31 13:16:40.586659	0	30	89,181,395,764	\N	\N	\N	\N	\N	\N	\N	\N	82	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Строителей
851	Диона	\N	2012-08-31 13:16:39.442407	2012-08-31 13:16:39.442407	0	32	8 (86141) 3-03-03, 8 (928) 040-28-92	\N	\N	\N	\N	\N	\N	\N	\N	34 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Циолковского
852	Дубрава	\N	2012-08-31 13:16:39.476815	2012-08-31 13:16:39.476815	0	32	8 (918) 056-66-38, 8 (951) 973-09-77	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 мкр. Голубая бухта, ул. Лабинская
854	Европейский	\N	2012-08-31 13:16:39.501589	2012-08-31 13:16:39.501589	0	32	8 (918) 255-97-81	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тихорецкая
855	Золотой орел	\N	2012-08-31 13:16:39.513241	2012-08-31 13:16:39.513241	0	32	 8 (928) 410-77-36, 8 (928) 404-85-85	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 Голубая бухта, ул. Фисташковая
856	Мистраль	\N	2012-08-31 13:16:39.526808	2012-08-31 13:16:39.526808	0	32	 8 (929) 832-00-59, 8 (905) 494-49-63	\N	\N	\N	\N	\N	\N	\N	\N	318 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
857	У Елизаветы	\N	2012-08-31 13:16:39.61638	2012-08-31 13:16:39.61638	0	32	 8 (86141) 3-21-84, 8 (918) 442-46-16	\N	\N	\N	\N	\N	\N	\N	\N	5 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
858	У Степаныча	\N	2012-08-31 13:16:39.629816	2012-08-31 13:16:39.629816	0	32	8 (918) 419-53-89	\N	\N	\N	\N	\N	\N	\N	\N	238	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
860	У Зори	\N	2012-08-31 13:16:39.664652	2012-08-31 13:16:39.664652	0	32	8 (86141) 3-29-17, 8 (928) 435-07-54	\N	\N	\N	\N	\N	\N	\N	\N	44 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
861	Дружба	\N	2012-08-31 13:16:39.683241	2012-08-31 13:16:39.683241	0	32	 8 (86141) 7-15-55	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
862	Лето	\N	2012-08-31 13:16:39.694295	2012-08-31 13:16:39.694295	0	32	8 (86141) 2-11-23, 2-11-25, 2-11-27, 3-50-50	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя
863	Сосновая роща	\N	2012-08-31 13:16:39.707893	2012-08-31 13:16:39.707893	0	32	8 (86141) 3-37-85, 3-37-86, 7-12-73, 7-12-74, 7-12-75, 7-12-54	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Маячная
867	Геленджикская Бухта	\N	2012-08-31 13:16:39.773272	2012-08-31 13:16:39.773272	0	32	8 (86141) 2-13-58 ,3-26-42 	\N	\N	\N	\N	\N	\N	\N	\N	39	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Первомайская
866	Красная Талка	\N	2012-08-31 13:16:39.748526	2012-08-31 13:16:39.748526	0	32	 8 (86141) 3-33-60	\N	\N	\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
864	Геленджик	\N	2012-08-31 13:16:39.718678	2012-08-31 13:16:39.718678	0	32	8 (86141) 2-81-15, 2-80-51	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Парковая
869	Кавказ	\N	2012-08-31 13:16:39.8028	2012-08-31 13:16:39.8028	0	32	 8 (86141) 7-11-12, 7-12-25, 3-36-71	\N	\N	\N	\N	\N	\N	\N	\N	105	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Маячная
870	Лазуревый берег	\N	2012-08-31 13:16:39.845081	2012-08-31 13:16:39.845081	0	32	8 (86141) 2-63-27	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
871	Ломоносова	\N	2012-08-31 13:16:39.856339	2012-08-31 13:16:39.856339	0	32	8 (86141) 7-11-43, 3-36-81	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Маячная
872	Приветливый берег	\N	2012-08-31 13:16:39.867839	2012-08-31 13:16:39.867839	0	32	8 (86141) 2-15-82, 3-27-41, 3-51-22, 3-35-44	\N	\N	\N	\N	\N	\N	\N	\N	133	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
874	Тонкий мыс	\N	2012-08-31 13:16:39.919991	2012-08-31 13:16:39.919991	0	32	8 (86141) 2-84-50, 2-83-42, 2-83-38	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Десантная
875	На Первомайской	\N	2012-08-31 13:16:39.961305	2012-08-31 13:16:39.961305	0	32	 8-928-241-43-22, 8-928-661-88-77	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Первомайская
876	На Херсонской	\N	2012-08-31 13:16:39.979255	2012-08-31 13:16:39.979255	0	32	8(918) 43-779-68, 8(928) 44-000-95, 8(86141) 3-50-18	\N	\N	\N	\N	\N	\N	\N	\N	69	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Херсонская
877	Джамайка	\N	2012-08-31 13:16:40.000071	2012-08-31 13:16:40.000071	0	32	8-928-231-44-08, 8-928-231-44-07	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Южная
878	Сосновая дача	\N	2012-08-31 13:16:40.019963	2012-08-31 13:16:40.019963	0	32	8-928-615-22-20, 8-928-430-87-56	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Сурикова
879	Африка	\N	2012-08-31 13:16:40.036243	2012-08-31 13:16:40.036243	0	32	8-938-41-42-43-5	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красногвардейская
880	У Эдулика	\N	2012-08-31 13:16:40.047136	2012-08-31 13:16:40.047136	0	32	8-967-311-00-01, 8-86141-2-06-07	\N	\N	\N	\N	\N	\N	\N	\N	128	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
881	Гостевой дом 222	\N	2012-08-31 13:16:40.058959	2012-08-31 13:16:40.058959	0	32	8-918-06-35-222, 8-985-45-54-222, й8-928-25-777-07	\N	\N	\N	\N	\N	\N	\N	\N	222	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
882	Люкс	\N	2012-08-31 13:16:40.083352	2012-08-31 13:16:40.083352	0	32	8-928-403-60-84	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкн. Нахаловка, ул. Алычевая
883	IMPERIAL	\N	2012-08-31 13:16:40.093918	2012-08-31 13:16:40.093918	0	32	8-918-05-71-222, 8 (86141) 5-72-97	\N	\N	\N	\N	\N	\N	\N	\N	70	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
884	Лорис	\N	2012-08-31 13:16:40.106651	2012-08-31 13:16:40.106651	0	32	8(918) 389-06-55, 8(861 41) 3-18-31	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Толстого
885	У Андреевны	\N	2012-08-31 13:16:40.120092	2012-08-31 13:16:40.120092	0	32	8-918-442-92-01, 8-903-453-98-60	\N	\N	\N	\N	\N	\N	\N	\N	36/ 2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Фрунзе
886	Эврика	\N	2012-08-31 13:16:40.139489	2012-08-31 13:16:40.139489	0	32	(928)221-30-60,  (918) 381-43-00, (86141)5-50-41	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	А. Блока
887	Акрополь	\N	2012-08-31 13:16:40.164887	2012-08-31 13:16:40.164887	0	32	8-918-410-99-57, 8-86141-5-14-42	\N	\N	\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Колхозная
890	Dallas	\N	2012-08-31 13:16:40.214083	2012-08-31 18:44:59.711007	0	32	8-918-460-55-29Ю 8-86141-4-55-29	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	1	\N	f	\N	0	\N	\N	\N	12:00	\N	0	0	0	0	0	44.5653409999999965	38.0808430000000016	Толстого
996	Нина	\N	2012-08-31 13:31:09.137983	2012-08-31 13:31:09.137983	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
469	Приморье	\N	2012-08-31 13:16:32.0145	2012-08-31 13:16:32.0145	0	32	8 (86141) 7-21-11	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
926	Альдаир	\N	2012-08-31 13:16:40.941397	2012-08-31 13:16:40.941397	0	34	 8 (918) 156-80-15, 8 (905) 474-32-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
888	Самсон	\N	2012-08-31 13:16:40.182554	2012-08-31 13:16:40.182554	0	32	8-918-371-26-64 	\N	\N	\N	\N	\N	\N	\N	\N	161	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
907	ЛеМан	\N	2012-08-31 13:16:40.565323	2012-08-31 13:16:40.565323	0	33	8 (928) 241-22-71, 8 (928) 351-20-06, 8 (86141) 6-65-35	\N	\N	\N	\N	\N	\N	\N	\N	17 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
844	Анжелика	\N	2012-08-31 13:16:39.323358	2012-08-31 13:16:39.323358	0	32	8-918-665-11-11, 8-938-440-72-22	\N	\N	\N	\N	\N	\N	\N	\N	37 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ульяновская
889	На Вильямса	\N	2012-08-31 13:16:40.197013	2012-08-31 13:16:40.197013	0	32	8-928-408-26-62, 8-918-362-40-40	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Вильямса
791	Малахит	\N	2012-08-31 13:16:38.043836	2012-08-31 13:16:38.043836	0	32	8(86141)54923	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Куйбышева
891	На Маячной	\N	2012-08-31 13:16:40.225208	2012-08-31 13:16:40.225208	0	32	8-918-645-56-89, 8-903-410-75-51	\N	\N	\N	\N	\N	\N	\N	\N	41 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Маячная
893	На Молодежной	\N	2012-08-31 13:16:40.257637	2012-08-31 13:16:40.257637	0	32	8-918-310-64-07	\N	\N	\N	\N	\N	\N	\N	\N	2 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Молодежная
894	Людмила+	\N	2012-08-31 13:16:40.270815	2012-08-31 13:16:40.270815	0	32	8-86141-3-31-45, 8-928-428-66-66, 8-918-463-10-12, 8-86141-3-22-26	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крылова
895	Кленовый лист	\N	2012-08-31 13:16:40.281955	2012-08-31 13:16:40.281955	0	32	8-918-43-11-693, 8-86141-3-40-80	\N	\N	\N	\N	\N	\N	\N	\N	13-Jan	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя
896	Наденька	\N	2012-08-31 13:16:40.293148	2012-08-31 13:16:40.293148	0	32	8-918-456-86-07, 8-928-842-60-90, 8(861-41) 3-19-25.	\N	\N	\N	\N	\N	\N	\N	\N	47	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
897	Белая принцесса	\N	2012-08-31 13:16:40.307624	2012-08-31 13:16:40.307624	0	32	8-918-457-55-29, 8-918-314-98-78, 8-86141-3-28-35	\N	\N	\N	\N	\N	\N	\N	\N	80 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Октябрьская
898	Голливуд	\N	2012-08-31 13:16:40.331094	2012-08-31 13:16:40.331094	0	32	8-918-435-14-41	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
899	Амиго	\N	2012-08-31 13:16:40.369702	2012-08-31 13:16:40.369702	0	32	8-962-864-62-60, 8-962-864-62-50 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
900	Золотой песок	\N	2012-08-31 13:16:40.386537	2012-08-31 13:16:40.386537	0	32	8-928-438-22-50, 8-918-44-17-680; 8-928-4274450	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ульяновская
901	Дом на Десантной	\N	2012-08-31 13:16:40.404222	2012-08-31 13:16:40.404222	0	32	8(918) 319-52-96, ё 8(861-41) 2-84-92;	\N	\N	\N	\N	\N	\N	\N	\N	25 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Десантная
902	Водопад	\N	2012-08-31 13:16:40.41967	2012-08-31 13:16:40.41967	0	32	8-(86141)-3-40-11, 8-928-221-80-50 	\N	\N	\N	\N	\N	\N	\N	\N	49	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
903	Седьмое небо	\N	2012-08-31 13:16:40.431335	2012-08-31 13:16:40.431335	0	32	8-928-4-111-22-4, 8-928-333-100-2 	\N	\N	\N	\N	\N	\N	\N	\N	84	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Толстого
904	Николена Фазенда	\N	2012-08-31 13:16:40.446691	2012-08-31 13:16:40.446691	0	32	8-988-315-44-45, 8-918-451-44-15 	\N	\N	\N	\N	\N	\N	\N	\N	40 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
905	Парк-Сити	\N	2012-08-31 13:16:40.461831	2012-08-31 13:16:40.461831	0	32	8-918-433-30-26, 8-86141-26-900 	\N	\N	\N	\N	\N	\N	\N	\N	51	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Циолковского
906	Камелот	\N	2012-08-31 13:16:40.486488	2012-08-31 13:16:40.486488	0	33	8 (86141) 6-57-72, 8 (918) 430-38-45	\N	\N	\N	\N	\N	\N	\N	\N	57 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
909	Магдалина	\N	2012-08-31 13:16:40.606604	2012-08-31 13:16:40.606604	0	33	8 (928) 662-74-31	\N	\N	\N	\N	\N	\N	\N	\N	75	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Коллективная
910	Натела	\N	2012-08-31 13:16:40.62253	2012-08-31 13:16:40.62253	0	33	8 (918) 323-42-82	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приветливая
911	У трех гор	\N	2012-08-31 13:16:40.64538	2012-08-31 13:16:40.64538	0	33	 8 (961) 855-80-42, 8 (961) 589-37-22	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Каштановая
912	Бриз	\N	2012-08-31 13:16:40.662666	2012-08-31 13:16:40.662666	0	33	8 (918) 419-99-00, 8 (86141) 6-57-73	\N	\N	\N	\N	\N	\N	\N	\N	8 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
913	ВанДи	\N	2012-08-31 13:16:40.689209	2012-08-31 13:16:40.689209	0	33	8 (918) 349-67-83	\N	\N	\N	\N	\N	\N	\N	\N	60 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Коллективная
914	Моя семья	\N	2012-08-31 13:16:40.726524	2012-08-31 13:16:40.726524	0	33	8 (918) 442-58-78, 8 (918) 240-22-57	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
915	Прага	\N	2012-08-31 13:16:40.737029	2012-08-31 13:16:40.737029	0	33	8 (928) 040-47-59,8 (928) 039-65-77	\N	\N	\N	\N	\N	\N	\N	\N	58	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Партизанская
916	Прометей	\N	2012-08-31 13:16:40.753702	2012-08-31 13:16:40.753702	0	33	8 (86141) 6-51-02, 6-65-03, 6-63-39	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
917	Восток	\N	2012-08-31 13:16:40.776125	2012-08-31 13:16:40.776125	0	33	8 (86141) 6-55-64	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
918	Кабардинка	\N	2012-08-31 13:16:40.788818	2012-08-31 13:16:40.788818	0	33	8 (86141) 6-65-93, 6-58-56, 6-55-31	\N	\N	\N	\N	\N	\N	\N	\N	105	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
919	Метро	\N	2012-08-31 13:16:40.799837	2012-08-31 13:16:40.799837	0	33	8 (86141) 6-51-27, 6-51-17	\N	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
920	Можжевеловый парк	\N	2012-08-31 13:16:40.821289	2012-08-31 13:16:40.821289	0	33	8 (964) 912-10-30	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	ш. Сухумское
921	Надым	\N	2012-08-31 13:16:40.834389	2012-08-31 13:16:40.834389	0	33	 8 (86141) 6-55-37	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Октябрьская
922	Почтовик	\N	2012-08-31 13:16:40.847324	2012-08-31 13:16:40.847324	0	33	8 (86141) 6-64-98, 6-54-82	\N	\N	\N	\N	\N	\N	\N	\N	11	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
923	Теремок	\N	2012-08-31 13:16:40.866461	2012-08-31 13:16:40.866461	0	33	8 (988) 333-17-19, +7 (918) 313-76-89, +7 (909) 466-20-89	\N	\N	\N	\N	\N	\N	\N	\N	34	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Совхозная
925	Кассиопея	\N	2012-08-31 13:16:40.907453	2012-08-31 13:16:40.907453	0	34	8 (918) 446-64-45	\N	\N	\N	\N	\N	\N	\N	\N	38	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пограничная
938	Анна 	\N	2012-08-31 13:16:41.161632	2012-08-31 13:16:41.161632	0	34	8 (918) 416-92-77	\N	\N	\N	\N	\N	\N	\N	\N	93	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
948	Paradise (Парадиз) 	\N	2012-08-31 13:16:41.408041	2012-08-31 13:16:41.408041	0	35	8 (86141) 6-45-90, 8 (960) 489-40-87	\N	\N	\N	\N	\N	\N	\N	\N	1 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
949	Прометей, корпус 2 	\N	2012-08-31 13:16:41.419815	2012-08-31 13:16:41.419815	0	35	 8 (918) 472-24-27, 8 (918) 472-24-47	\N	\N	\N	\N	\N	\N	\N	\N	10 (корпус 2)	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
958	Verona (Верона) 	\N	2012-08-31 13:16:41.623269	2012-08-31 13:16:41.623269	0	35	8 (900) 252-94-83, 8 (915) 693-91-94	\N	\N	\N	\N	\N	\N	\N	\N	8 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
930	Золотой каштан	\N	2012-08-31 13:16:41.001861	2012-08-31 13:16:41.001861	0	34	8 (964) 928-94-20	\N	\N	\N	\N	\N	\N	\N	\N	43	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ореховая
929	Золотой берег 	\N	2012-08-31 13:16:40.985755	2012-08-31 13:16:40.985755	0	27	8 928 3261111, 8 918 3510304	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Барханная
960	Дивное море	\N	2012-08-31 13:16:41.650127	2012-08-31 13:16:41.650127	0	35	8 (928) 207-28-72, 8 (86141) 6-36-87, 8 (928) 036-91-43	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	О.Кашевого
943	Кристина	\N	2012-08-31 13:16:41.305794	2012-08-31 13:16:41.305794	0	34	8 (918) 323-51-90	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курортная
931	Ларус	\N	2012-08-31 13:16:41.013627	2012-08-31 13:16:41.013627	0	34	8 (8617) 65-66-55, 8 (929) 835-08-33, 8 (929) 835-08-34	\N	\N	\N	\N	\N	\N	\N	\N	141	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
932	На Земляничной	\N	2012-08-31 13:16:41.036767	2012-08-31 13:16:41.036767	0	34	8 (906) 433-84-99, 8 (903) 453-06-51	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Земляничная 
933	Пилигрим	\N	2012-08-31 13:16:41.049135	2012-08-31 13:16:41.049135	0	34	8 (918) 150-27-00, 8 (918) 462-40-61	\N	\N	\N	\N	\N	\N	\N	\N	3 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курортная
935	Тихое место	\N	2012-08-31 13:16:41.105868	2012-08-31 13:16:41.105868	0	34	8 (918) 072-53-33, 8 (918) 018-31-25	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луговая
936	Хуторок	\N	2012-08-31 13:16:41.126267	2012-08-31 13:16:41.126267	0	34	8 (988) 338-16-62, 8 (928) 263-73-01	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луговая
937	Аксис	\N	2012-08-31 13:16:41.147415	2012-08-31 13:16:41.147415	0	34	8 (86141) 6-14-30,8 (918) 994-72-53	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя 
939	Земляничка	\N	2012-08-31 13:16:41.204064	2012-08-31 13:16:41.204064	0	34	 8 (918) 436-58-45, 8 (918) 245-13-55 	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Земляничная 
940	Домик у реки	\N	2012-08-31 13:16:41.21739	2012-08-31 13:16:41.21739	0	34	8 (918) 436-34-43	\N	\N	\N	\N	\N	\N	\N	\N	1 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная 
941	Мезонин	\N	2012-08-31 13:16:41.232757	2012-08-31 13:16:41.232757	0	34	8 (918) 433-93-44	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кленовая
942	Соколиное гнездо	\N	2012-08-31 13:16:41.258758	2012-08-31 13:16:41.258758	0	34	8  (918) 288-71-85	\N	\N	\N	\N	\N	\N	\N	\N	2 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
873	Солнечный берег	\N	2012-08-31 13:16:39.904883	2012-08-31 13:16:39.904883	0	34	8 (918) 557-10-40, 8 (919) 871-41-91	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирпичная
944	Тешебс	\N	2012-08-31 13:16:41.318809	2012-08-31 13:16:41.318809	0	34	 8 (86141) 6-04-01, 8 (86141) 6-06-30, 8 (86141) 6-06-21	\N	\N	\N	\N	\N	\N	\N	\N	1 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя 
945	Архипо-Осиповка	\N	2012-08-31 13:16:41.339378	2012-08-31 13:16:41.339378	0	34	8(86141) 6-02-98, 6-05-62	\N	\N	\N	\N	\N	\N	\N	\N	40	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Санаторная
946	Прибой	\N	2012-08-31 13:16:41.365174	2012-08-31 13:16:41.365174	0	35	8 (918) 333-32-62, 8 (928) 333-32-62, 8 (964) 933-33-31	\N	\N	\N	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
947	Прометей, корпус 1	\N	2012-08-31 13:16:41.379179	2012-08-31 13:16:41.379179	0	35	8  (86141) 6-26-26	\N	\N	\N	\N	\N	\N	\N	\N	9-Jan	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
950	Прометей, корпус 3	\N	2012-08-31 13:16:41.498567	2012-08-31 13:16:41.498567	0	35	8 (918) 277-71-77, 8 (918) 375-87-29, 8 (928) 422-11-12	\N	\N	\N	\N	\N	\N	\N	\N	 10 (корпус 3)	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
951	Прометей, корпус 4	\N	2012-08-31 13:16:41.510571	2012-08-31 13:16:41.510571	0	35	8 (918) 039-96-33, 8 (988) 242-18-94	\N	\N	\N	\N	\N	\N	\N	\N	 10 (корпус 4)	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
952	Дивная	\N	2012-08-31 13:16:41.529545	2012-08-31 13:16:41.529545	0	35	8 (86141) 6-49-51,8 (918) 649-29-31	\N	\N	\N	\N	\N	\N	\N	\N	28 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
953	Ива	\N	2012-08-31 13:16:41.541885	2012-08-31 13:16:41.541885	0	35	8 (938) 400-05-30	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
954	Иованна	\N	2012-08-31 13:16:41.578499	2012-08-31 13:16:41.578499	0	35	8 (928) 042-65-01, 8  (86141) 6-36-95 	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
955	На Курортной	\N	2012-08-31 13:16:41.58926	2012-08-31 13:16:41.58926	0	35	8 (928) 039-20-00, 8 (918) 491-80-74	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курортная
956	Южный полюс	\N	2012-08-31 13:16:41.599857	2012-08-31 13:16:41.599857	0	35	8 (928) 44-23-000	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курортная
957	Багира	\N	2012-08-31 13:16:41.610471	2012-08-31 13:16:41.610471	0	35	8 (918) 340-78-78, 8  (86141) 6-34-65, 8 (928) 260-36-27	\N	\N	\N	\N	\N	\N	\N	\N	63 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
959	Виола	\N	2012-08-31 13:16:41.635423	2012-08-31 13:16:41.635423	0	35	8 (918) 419-39-00	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
961	Энергетик	\N	2012-08-31 13:16:41.677194	2012-08-31 13:16:41.677194	0	35	8 (86141) 6-39-09, 6-39-08	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерская
962	Голубая даль	\N	2012-08-31 13:16:41.687694	2012-08-31 13:16:41.687694	0	35	 8 (86141) 6-32-22, 6-37-87	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
963	Фантазия	\N	2012-08-31 13:16:41.710016	2012-08-31 13:16:41.710016	0	35	8-86141-63-236, 8-928-417-8-444, 8-918-34-54-344	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
964	Лазурь	\N	2012-08-31 13:16:41.721327	2012-08-31 13:16:41.721327	0	35	8-918-29-18-360	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
965	У Феликса	\N	2012-08-31 13:16:41.742626	2012-08-31 13:16:41.742626	0	36	8 (928) 428-51-03, 8 (928) 042-29-70	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Нагорная
966	Берег	\N	2012-08-31 13:16:41.757463	2012-08-31 13:16:41.757463	0	37	8 (929) 840-06-07, 8 (929) 840-06-08, 8 (926) 601-31-60	\N	\N	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Заречная
967	Ласточкино гнездо	\N	2012-08-31 13:16:41.772194	2012-08-31 13:16:41.772194	0	37	 8 (928) 443-80-33	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
968	Бетельгейзе	\N	2012-08-31 13:16:41.831424	2012-08-31 13:16:41.831424	0	37	8 (918) 464-53-49, 8 (86141) 9-93-26	\N	\N	\N	\N	\N	\N	\N	\N	4 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1015	Одиссея 	\N	2012-08-31 13:31:10.221055	2012-08-31 13:31:10.221055	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	267	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1016	Ривьера 4*	\N	2012-08-31 13:31:10.23394	2012-08-31 13:31:10.23394	0	25	8 (86133) 66-342	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
997	Сережка	\N	2012-08-31 13:31:09.154527	2012-08-31 13:31:09.154527	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
1000	На Азовской	\N	2012-08-31 13:31:09.240411	2012-08-31 13:31:09.240411	0	25	8 918 387-46-56, 8 918 04-60-765	\N	\N	\N	\N	\N	\N	\N	\N	83/10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Некрасова/Азовская
1002	Солнечная 	\N	2012-08-31 13:31:09.348542	2012-08-31 13:31:09.348542	0	25	8 918 168-90-65, 8 918 646-77-78, 8 861 42-89-446	\N	\N	\N	\N	\N	\N	\N	\N	142	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1005	Островок	\N	2012-08-31 13:31:09.406011	2012-08-31 13:31:09.406011	0	25	8 (918) 171- 01- 58	\N	\N	\N	\N	\N	\N	\N	\N	203 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1017	Морская гавань	\N	2012-08-31 13:31:10.257017	2012-08-31 13:31:10.257017	0	25	8 (86133) 3-09-13	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
511	Черноморская зорька	\N	2012-08-31 13:16:32.735906	2012-08-31 13:16:32.735906	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	40	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
480	8-е небо	\N	2012-08-31 13:16:32.197114	2012-08-31 13:16:32.197114	0	25	8 (86133) 2-08-48; 8(86133) 2-08-68; 8 928 2400898; 8 928 2400988	\N	\N	\N	\N	\N	\N	\N	\N	71	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
630	Афалина	\N	2012-08-31 13:16:34.820696	2012-08-31 13:16:34.820696	0	34	8 (918) 263-40-31, 8 (988) 243-43-67, 8 (918) 992-60-15	\N	\N	\N	\N	\N	\N	\N	\N	2-Jan	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1007	Охта	\N	2012-08-31 13:31:09.598863	2012-08-31 13:31:09.598863	0	25	8(9180 373 99 59, 8 918 627 02 28	\N	\N	\N	\N	\N	\N	\N	\N	2 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Благодарный
1010	Снегири	\N	2012-08-31 13:31:09.8429	2012-08-31 13:31:09.8429	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский пр-т, Джеметинский проезд
1011	Капитан	\N	2012-08-31 13:31:09.861932	2012-08-31 13:31:09.861932	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский пр-т, ул. Дружбы
697	Екатерина	\N	2012-08-31 13:16:36.06163	2012-08-31 13:16:36.06163	0	32	 8 (86141) 2-80-33, 8 (928) 343-65-65	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тонкий мыс, ул. Набережная
514	Леонидас	\N	2012-08-31 13:16:32.772645	2012-08-31 13:16:32.772645	0	25	8 (86133) 3-31-00, 8 (918) 454-38-62	\N	\N	\N	\N	\N	\N	\N	\N	60/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1018	Полярные зори	\N	2012-08-31 13:31:10.322589	2012-08-31 13:31:10.322589	0	25	(86133) 3-32-48, 3-34-26	\N	\N	\N	\N	\N	\N	\N	\N	68	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1019	Соловей 	\N	2012-08-31 13:31:10.368373	2012-08-31 13:31:10.368373	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	74	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
777	Светлана	\N	2012-08-31 13:16:37.645332	2012-08-31 13:16:37.645332	0	35	8 (918) 494-98-96	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Светлый
1012	Веста	\N	2012-08-31 13:31:10.013462	2012-08-31 13:31:10.013462	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	233	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1013	Белый лебедь	\N	2012-08-31 13:31:10.030112	2012-08-31 13:31:10.030112	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	233	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1020	Лика	\N	2012-08-31 13:31:10.609157	2012-08-31 13:31:10.609157	0	25	8 918 43-05-867, 8 918 41-30-110	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пролетарская
973	Кристалл	\N	2012-08-31 13:16:41.9297	2012-08-31 13:16:41.9297	0	39	8 (86141) 6-86-40, 6-86-73	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
534	Морской бриз	\N	2012-08-31 13:16:33.05342	2012-08-31 13:16:33.05342	0	28	8 (918) 446-14-26, 8 86133 5 87 40 	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	1-ый проезд
1021	Садовая	\N	2012-08-31 13:31:10.799209	2012-08-31 13:31:10.799209	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Садовая
1024	На Самбурова 152 	\N	2012-08-31 13:31:10.856736	2012-08-31 13:31:10.856736	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	152	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
512	Эллада	\N	2012-08-31 13:16:32.746693	2012-08-31 13:16:32.746693	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	88/9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
459	Радуга	\N	2012-08-31 13:16:31.876311	2012-08-31 13:16:31.876311	0	32	8 (86141) 2-15-71	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Первомайская
503	Приморский	\N	2012-08-31 13:16:32.560101	2012-08-31 13:16:32.560101	0	35	8 (86141) 2-11-45, 3-30-86	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
506	Селена	\N	2012-08-31 13:16:32.666263	2012-08-31 13:16:32.666263	0	34	8 (912) 852-50-24, 8 (918) 996-97-07	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Береговая
810	Альбатрос	\N	2012-08-31 13:16:38.632845	2012-08-31 13:16:38.632845	0	39	8 (918) 017-16-42, +7 (938) 405-98-06	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Лесной
460	Людмила море	\N	2012-08-31 13:16:31.887052	2012-08-31 13:16:31.887052	0	25	8 918 35-718-92, 8 (86133) 56-638	\N	\N	\N	\N	\N	\N	\N	\N	217	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
1025	На Самбурова 23	\N	2012-08-31 13:31:10.998932	2012-08-31 13:31:10.998932	0	25	8-918-171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
1038	Терская 70	\N	2012-08-31 13:31:11.563897	2012-08-31 13:31:11.563897	0	25	8 (86133)56-971, 8 918 45-05-840, 8 918 48-19-802	\N	\N	\N	\N	\N	\N	\N	\N	70	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
1027	Мира	\N	2012-08-31 13:31:11.039176	2012-08-31 13:31:11.039176	0	25	8 918 171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	37 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
1028	Тополь	\N	2012-08-31 13:31:11.05152	2012-08-31 13:31:11.05152	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	39	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
1039	У Ольги	\N	2012-08-31 13:31:11.610509	2012-08-31 13:31:11.610509	0	25	8 918 41-48-179, 8 (86133)31-704, 8 (96133)20-711	\N	\N	\N	\N	\N	\N	\N	\N	130-1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Трудящихся
568	Посейдон	\N	2012-08-31 13:16:33.765294	2012-11-27 09:47:07.857324	0	30	8 (86133) 93347, 8 918 0507003	\N	\N	\N	\N	\N	\N	\N	\N	3/3	\N	\N	\N	\N	1	\N	f	\N	0	\N	\N	\N	12:00	\N	0	0	0	0	0	\N	\N	Лесная
1029	Славия	\N	2012-08-31 13:31:11.11665	2012-08-31 13:31:11.11665	0	25	8 (86133) 4-03-00, 4-02-49	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
1026	Чайка	\N	2012-08-31 13:31:11.019058	2012-09-06 16:44:01.077141	0	25	8(86133) 40502; 8 918 6979296, 8 918 2319561, 8 918 4474348	\N	\N	Автовокзал- 15 минут пешком	\N	\N	\N	\N	\N	240	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1000	12:00	Паспорт, свидетельство о рождении, для ребенка	15	3	0	0	0	44.8962360000000018	37.3298869999999994	Самбурова
1031	Александра	\N	2012-08-31 13:31:11.222872	2012-08-31 13:31:11.222872	0	25	8 988 34-26-433 	\N	\N	\N	\N	\N	\N	\N	\N	6 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
1032	На Северной	\N	2012-08-31 13:31:11.247521	2012-08-31 13:31:11.247521	0	25	8 918 460-79-56	\N	\N	\N	\N	\N	\N	\N	\N	69	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Северная
1033	Hotel Lotos 3*	\N	2012-08-31 13:31:11.308845	2012-08-31 13:31:11.308845	0	25	8 (918) 469-09-16	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Спортивная
552	На Таманской 20 А	\N	2012-08-31 13:16:33.412394	2012-08-31 13:16:33.412394	0	25	8 (86133)5-48-90, 8 918 45-11-119, 8 903 45-17-668	\N	\N	\N	\N	\N	\N	\N	\N	20 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
553	У Маяка	\N	2012-08-31 13:16:33.423148	2012-08-31 13:16:33.423148	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	22/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
554	Черное море	\N	2012-08-31 13:16:33.454198	2012-08-31 13:16:33.454198	0	25	8 (86133) 3-23-13	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
1040	Безруков	\N	2012-08-31 13:31:11.763954	2012-08-31 13:31:11.763954	0	25	 8 (86133)5-01-70, 8 918 46-999-47	\N	\N	\N	\N	\N	\N	\N	\N	244/10 Г	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
1041	Маргаритка	\N	2012-08-31 13:31:11.791094	2012-08-31 13:31:11.791094	0	25	8 (86133)3-95-70, 3-95-57, 8 918 48-38-898, 8  918  49-033-83	\N	\N	\N	\N	\N	\N	\N	\N	42	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
582	Старый дворик	\N	2012-08-31 13:16:33.953026	2012-08-31 13:16:33.953026	0	25	8(86133) 4-50-77, 8 928 4413963, 8 918 4613605, 8 909 4457277	\N	\N	\N	\N	\N	\N	\N	\N	46 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
1042	На Тургенева 	\N	2012-08-31 13:31:11.879254	2012-08-31 13:31:11.879254	0	25	8 (86133) 32425;  8 962 8581354 и 8 918 6625742, 8 918 2610368	\N	\N	\N	\N	\N	\N	\N	\N	79-1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тургенева
1034	Поющие в терновнике	\N	2012-08-31 13:31:11.393263	2012-08-31 13:31:11.393263	0	25	8 (86133)30-670, 391-28, 8 918 47-40-955, 8 965 460-35-64	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терновая
483	Вера	\N	2012-08-31 13:16:32.240646	2012-08-31 13:16:32.240646	0	33	8 (918) 433-15-79,8 (918) 463-37- 87, 8 (918) 254-24-00	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новая
558	На Терновой 20	\N	2012-08-31 13:16:33.585917	2012-08-31 13:16:33.585917	0	25	8 918 3102082, 8 918 4443677; 8 (86133) 34858	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терновая
470	У водопада	\N	2012-08-31 13:16:32.028181	2012-08-31 13:16:32.028181	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	152 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
489	Виктория	\N	2012-08-31 13:16:32.354122	2012-08-31 13:16:32.354122	0	39	8 (86141) 6-87-80, 8 (918) 279-36-06	\N	\N	\N	\N	\N	\N	\N	\N	12 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1036	У Елены 	\N	2012-08-31 13:31:11.485112	2012-08-31 13:31:11.485112	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
1037	На Терской 	\N	2012-08-31 13:31:11.517414	2012-08-31 13:31:11.517414	0	25	89,184,924,440	\N	\N	\N	\N	\N	\N	\N	\N	50	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Терская
1044	Гостевой дом	\N	2012-08-31 13:31:11.95965	2012-08-31 13:31:11.95965	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	14/64 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская/Кирова
1045	В гостях у Маруси	\N	2012-08-31 13:31:12.037428	2012-08-31 13:31:12.037428	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	53	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
1047	Арина	\N	2012-08-31 13:31:12.072533	2012-08-31 13:31:12.072533	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	130	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
1048	Три С	\N	2012-08-31 13:31:12.09811	2012-08-31 13:31:12.09811	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	151	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
1049	Ямал	\N	2012-08-31 13:31:12.127463	2012-08-31 13:31:12.127463	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	182	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
1050	На Шевченко	\N	2012-08-31 13:31:12.171844	2012-08-31 13:31:12.171844	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	31 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шевченко
833	Алекс	\N	2012-08-31 13:16:39.084164	2012-08-31 13:16:39.084164	0	34	8 (918) 467-88-26	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская 
969	Глория	\N	2012-08-31 13:16:41.849898	2012-08-31 13:16:41.849898	0	37	8 (86141) 9-93-43	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Заречная
518	Фортуна	\N	2012-08-31 13:16:32.835409	2012-08-31 13:16:32.835409	0	31	8 (918) 378-99-60	\N	\N	\N	\N	\N	\N	\N	\N	9-Feb	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Слесова
591	Фламинго	\N	2012-08-31 13:16:34.108273	2012-08-31 13:16:34.108273	0	35	8 (86141) 6-36-67 	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кошевого
456	Оазис	\N	2012-08-31 13:16:31.843813	2012-08-31 13:16:31.843813	0	31	8 918 1697728, 8 918 0143700	\N	\N	\N	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кубанский
599	Рябинушка 3*	\N	2012-08-31 13:16:34.242202	2012-08-31 13:16:34.242202	0	25	8 (86133)3-33-30, 3-09-06, 3-09-05	\N	\N	\N	\N	\N	\N	\N	\N	76	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
576	Катерина	\N	2012-08-31 13:16:33.873624	2012-08-31 13:16:33.873624	0	27	8 (886133) 75551	\N	\N	\N	\N	\N	\N	\N	\N	15/2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гагарина
1053	Голубой простор	\N	2012-08-31 13:31:12.493309	2012-08-31 13:31:12.493309	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
1054	Венус	\N	2012-08-31 13:31:12.569968	2012-08-31 13:31:12.569968	0	27	8-928-239-9959, 8-918-475-4844, (86133) 74-873	\N	\N	\N	\N	\N	\N	\N	\N	43	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Горького
1079	Marines	\N	2012-08-31 13:31:13.819638	2012-08-31 13:31:13.819638	0	27	89,897,601,629	\N	\N	\N	\N	\N	\N	\N	\N	1 Д	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр-т Южный
1080	Южная 	\N	2012-08-31 13:31:13.865285	2012-08-31 13:31:13.865285	0	27	8(86133) 7-37-01,  8 918 3763868	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр-т Южный
1055	Отдых у Марии	\N	2012-08-31 13:31:12.633383	2012-08-31 13:31:12.633383	0	27	8 (86133) 74-7-05, 8-918-21-29-570, 8-918-18-24-530	\N	\N	\N	\N	\N	\N	\N	\N	55	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Заводская
1056	Нико 3*	\N	2012-08-31 13:31:12.659539	2012-08-31 13:31:12.659539	0	27	(8-861-33) 4-60-79	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Знойная
1057	Аттика	\N	2012-08-31 13:31:12.703967	2012-08-31 13:31:12.703967	0	27	8 (918) 051-65-91, 8 (918) 472-84-35 	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Знойная
1058	Усадьба Владимира	\N	2012-08-31 13:31:12.736181	2012-08-31 13:31:12.736181	0	27	8 918 2151262; 8 918 4412987	\N	\N	\N	\N	\N	\N	\N	\N	17	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Комарова
1059	Медея	\N	2012-08-31 13:31:12.787705	2012-08-31 13:31:12.787705	0	27	89,189,623,222	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Комсомольская
1060	Абрик	\N	2012-08-31 13:31:12.826232	2012-08-31 13:31:12.826232	0	27	8(86133) 7-53-68; 8 918 4500640	\N	\N	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красноармейская
1061	Ольга Плюс	\N	2012-08-31 13:31:12.882655	2012-08-31 13:31:12.882655	0	27	8(86133) 75522; 8 918 6708687	\N	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лазурная
1062	Алма-Ата	\N	2012-08-31 13:31:12.965156	2012-08-31 13:31:12.965156	0	27	8 918 4198807, 8 (86133) 74557	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лизы Чайкиной
1063	Лилия	\N	2012-08-31 13:31:12.97846	2012-08-31 13:31:12.97846	0	27	8(86133) 73575, 8 918 6226000	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лиманная
1064	Ромио 	\N	2012-08-31 13:31:12.99875	2012-08-31 13:31:12.99875	0	27	8 (86133) 74-6-81, 8 918 6452951, 8 918 4617124	\N	\N	\N	\N	\N	\N	\N	\N	51 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Лиманная
1066	Морской каприз 	\N	2012-08-31 13:31:13.094328	2012-08-31 13:31:13.094328	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Молодежный переулок
1067	У Морозовых	\N	2012-08-31 13:31:13.116058	2012-08-31 13:31:13.116058	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	42	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Набережная
1068	Отдых у Татьяны	\N	2012-08-31 13:31:13.171021	2012-08-31 13:31:13.171021	0	27	8(86133) 73305, 8 918 6641828 	\N	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Овражная
1070	Октябрьская 19	\N	2012-08-31 13:31:13.210664	2012-08-31 13:31:13.210664	0	27	8(918)312-26-27	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Октябрьская
1071	Отдых у Лизы	\N	2012-08-31 13:31:13.303207	2012-08-31 13:31:13.303207	0	27	8 918 3805303,   8 918 4805064,   8(86133) 73731	\N	\N	\N	\N	\N	\N	\N	\N	29	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Октябрьская
651	Элефтерия	\N	2012-08-31 13:16:35.173375	2012-08-31 13:16:35.173375	0	27	 8 (918) 058-09-99, 8(962) 433-33-03 , 8 (928) 281-01-10	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Александрийский
1072	Ателика-Галант	\N	2012-08-31 13:31:13.38777	2012-08-31 13:31:13.38777	0	27	8 (495) 228 03 14	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Ангарский
1073	Дворянское гнездо	\N	2012-08-31 13:31:13.424917	2012-08-31 13:31:13.424917	0	27	8 (86133) 7-36-11 , 8 (86133) 7-37-06	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Благовещенский
656	Августина	\N	2012-08-31 13:16:35.275166	2012-08-31 13:16:35.275166	0	27	8 (988) 340-78-28, 8 (86133) 73-897, 8 (950) 11-00-345, 8 (902) 767-2707	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Благовещенский
1074	Малена	\N	2012-08-31 13:31:13.569226	2012-08-31 13:31:13.569226	0	27	8 988 3360765 , 8 918 6452588 , 8 909 4530277	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Звездный
1075	Анна-Мария	\N	2012-08-31 13:31:13.634338	2012-08-31 13:31:13.634338	0	27	8(86133) 48019;8 918 4360005; 8 918 4849334	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Святого Георгия
1076	Оливия	\N	2012-08-31 13:31:13.649807	2012-08-31 13:31:13.649807	0	27	8 (918)065-45-27	\N	\N	\N	\N	\N	\N	\N	\N	2 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Спартанский
1077	Баргузин	\N	2012-08-31 13:31:13.693546	2012-08-31 13:31:13.693546	0	27	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Южный
1078	Таисия	\N	2012-08-31 13:31:13.718904	2012-08-31 13:31:13.718904	0	27	8 918 3207015, 8 918 9865961	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерская
1081	Флагман	\N	2012-08-31 13:31:13.921736	2012-08-31 13:31:13.921736	0	27	8(495) 3-168-765, 8-918-040-6950, 8-988-311-2753 	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр-т Южный
1084	Green Plaza	\N	2012-08-31 13:31:13.975211	2012-08-31 13:31:13.975211	0	27	8 (961)520-77-77, 8 (961) 592-33-33	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	проезд Красивый
1085	На улице Роз 10	\N	2012-08-31 13:31:14.045924	2012-08-31 13:31:14.045924	0	27	8 (86133) 73564; 8 918 3667864, 8 918 3323236	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Роз
1086	Константинополь	\N	2012-08-31 13:31:14.069784	2012-08-31 13:31:14.069784	0	27	8 (988) 320-44-88	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Роз
1082	Корона	\N	2012-08-31 13:31:13.938778	2012-08-31 13:31:13.938778	0	33	8  (918) 424-05-47, 8 (918) 416-83-51	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Олимпийский
666	Бригантина	\N	2012-08-31 13:16:35.52141	2012-08-31 13:16:35.52141	0	32	8 (86141) 4-37-37, 4-37-42	\N	\N	\N	\N	\N	\N	\N	\N	37	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
672	Парадиз	\N	2012-08-31 13:16:35.615867	2012-08-31 13:16:35.615867	0	31	8 (928) 66-11-420, 8 (918) 32-666-77	\N	\N	\N	\N	\N	\N	\N	\N	28	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
643	Георгий	\N	2012-08-31 13:16:35.036107	2012-08-31 13:16:35.036107	0	33	8 (928) 358-49-20, 8 (928) 419-19-64	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приветливая
1090	Red Rose	\N	2012-08-31 13:31:14.594589	2012-08-31 13:31:14.594589	0	27	8 (86133) 7-31-04, 8 (918) 672-10-22, 8 (909) 460-86-96	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Улица Роз
1091	Фаворит	\N	2012-08-31 13:31:14.606821	2012-08-31 13:31:14.606821	0	27	8 (86133) 9-57-34	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Улица Роз
1114	Сармат	\N	2012-08-31 13:31:17.717782	2012-08-31 13:31:17.717782	0	30	8-918-171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1093	Эмеральд	\N	2012-08-31 13:31:14.91587	2012-08-31 13:31:14.91587	0	27	8-918-063-33-90	\N	\N	\N	\N	\N	\N	\N	\N	181	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
1115	Изумруд	\N	2012-08-31 13:31:17.731528	2012-08-31 13:31:17.731528	0	30	8-918-171-01-58	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1106	ЯВА	\N	2012-08-31 13:31:16.33143	2012-08-31 13:31:16.33143	0	28	89,184,450,453	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	проезд Малый
1108	Дикая орхидея	\N	2012-08-31 13:31:16.504124	2012-08-31 13:31:16.504124	0	30	8 918 9857152, 8 918 0565899	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Генуэзский проезд
1109	Янина	\N	2012-08-31 13:31:16.515138	2012-08-31 13:31:16.515138	0	30	8 918 4639215, 8 918 0110695	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Генуэзский проезд
1096	Азат	\N	2012-08-31 13:31:14.986072	2012-08-31 13:31:14.986072	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	18	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	1-ый проезд
1097	Ветеран	\N	2012-08-31 13:31:15.002398	2012-08-31 13:31:15.002398	0	28	89,186,231,447	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	1-ый проезд
1110	Индиго	\N	2012-08-31 13:31:16.566065	2012-08-31 13:31:16.566065	0	30	8 (86133) 60989	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кооперативная
1111	Горный воздух	\N	2012-08-31 13:31:16.830418	2012-08-31 13:31:16.830418	0	30	8 918 6472957, 8 918 1688447	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Рекордная
1112	Пансионат Киржановой	\N	2012-08-31 13:31:17.475233	2012-08-31 13:31:17.475233	0	30	8(86133) 93230; 8 918 0508786	\N	\N	\N	\N	\N	\N	\N	\N	9/1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Строителей
1098	Здоровье	\N	2012-08-31 13:31:15.459858	2012-08-31 13:31:15.459858	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский пр-т, 1-ый проезд
1099	Волна	\N	2012-08-31 13:31:15.475278	2012-08-31 13:31:15.475278	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	265	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1014	Караван	\N	2012-08-31 13:31:10.188582	2012-08-31 13:31:10.188582	0	28	8(86133) 33868;  8(86133) 51733, 8 918 4624717, 8 918 4643914	\N	\N	\N	\N	\N	\N	\N	\N	221	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1100	Морской конек	\N	2012-08-31 13:31:15.680674	2012-08-31 13:31:15.680674	0	28	8 926 9021955, 8 925 7721408	\N	\N	\N	\N	\N	\N	\N	\N	60/3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1083	Южная ночь	\N	2012-08-31 13:31:13.952967	2012-08-31 13:31:13.952967	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	68	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1101	Красная Калина 2*	\N	2012-08-31 13:31:15.897948	2012-08-31 13:31:15.897948	0	28	\N	\N	\N	\N	\N	\N	\N	\N	\N	81 Ж	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1092	Арго	\N	2012-08-31 13:31:14.887932	2012-08-31 13:31:14.887932	0	34	 8 (918) 310-37-26, 8 (918) 313-92-22	\N	\N	\N	\N	\N	\N	\N	\N	64	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пограничная
1103	Анапские дюны	\N	2012-08-31 13:31:16.122971	2012-08-31 13:31:16.122971	0	28	8 918 0527028 ; 8 918 1121501	\N	\N	\N	\N	\N	\N	\N	\N	88/6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект
1104	Морская волна	\N	2012-08-31 13:31:16.162492	2012-08-31 13:31:16.162492	0	28	8(86133) 3-37-73, 8 918 6260045	\N	\N	\N	\N	\N	\N	\N	\N	103/9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пионерский проспект, пер. Престижный
1105	Чайка 	\N	2012-08-31 13:31:16.280579	2012-08-31 13:31:16.280579	0	28	8 918 9516740, 8 918 4168117	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пр. Уральский
427	Ангелина	\N	2012-08-31 13:16:31.359191	2012-08-31 13:16:31.359191	0	30	8 (918) 444-84-88; 8 (918) 494-67-46	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманский проезд
1113	Дельмонт	\N	2012-08-31 13:31:17.611189	2012-08-31 13:31:17.611189	0	30	\N	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная
779	Долина Сукко	\N	2012-08-31 13:16:37.66714	2012-08-31 13:16:37.66714	0	30	8 (918) 191-10-10 ; 8 (918) 475-74-88	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Центральная, 1-ый проезд
731	Роза Ветров	\N	2012-08-31 13:16:36.696957	2012-08-31 13:16:36.696957	0	34	 8 (86141) 6-15-60, 6-15-44	\N	\N	\N	\N	\N	\N	\N	\N	17 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пограничная
1095	Лагуна	\N	2012-08-31 13:31:14.957237	2012-08-31 13:31:14.957237	0	33	8 (86141) 6-64-42	\N	\N	\N	\N	\N	\N	\N	\N	60 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Коллективная
436	Надежда	\N	2012-08-31 13:16:31.483966	2012-08-31 13:16:31.483966	0	32	8-928-037-14-11, 8-86141-2-09-88	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
711	Полина	\N	2012-08-31 13:16:36.290084	2012-08-31 13:16:36.290084	0	32	8-918-638-06-00 	\N	\N	\N	\N	\N	\N	\N	\N	4 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Крылова
1116	Бугаз	\N	2012-08-31 13:31:18.100604	2012-08-31 13:31:18.100604	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Кубанский 
1117	Благо	\N	2012-08-31 13:31:18.273932	2012-08-31 13:31:18.273932	0	31	89,186,701,846	\N	\N	\N	\N	\N	\N	\N	\N	30	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Кубанский 
1118	Марлен	\N	2012-08-31 13:31:18.31601	2012-08-31 13:31:18.31601	0	31	89,184,945,648	\N	\N	\N	\N	\N	\N	\N	\N	33	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Кубанский 
1119	Лазурная	\N	2012-08-31 13:31:18.57264	2012-08-31 13:31:18.57264	0	31	8(86133) 60515, 8 918 3400339	\N	\N	\N	\N	\N	\N	\N	\N	15	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Лазурный
708	Диана	\N	2012-08-31 13:16:36.249987	2012-08-31 13:16:36.249987	0	32	 8-(86141)-5-05-10, 8-918-467-33-00, 8-918-451-96-23	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Краснодонская
796	Олимп	\N	2012-08-31 13:16:38.115119	2012-08-31 13:16:38.115119	0	31	 8-918-4829982	\N	\N	\N	\N	\N	\N	\N	\N	137  А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
1107	Искра	\N	2012-08-31 13:31:16.470948	2012-08-31 13:31:16.470948	0	31	8 (86133) 7-82-49, 7-82-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1120	Рассвет	\N	2012-08-31 13:31:18.786213	2012-08-31 13:31:18.786213	0	32	 8 (86141) 2-71-43, 2-66-00	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
927	Баунти	\N	2012-08-31 13:16:40.95262	2012-08-31 13:16:40.95262	0	34	8 (928) 275-55-798	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
710	Тихая гавань	\N	2012-08-31 13:16:36.275008	2012-08-31 13:16:36.275008	0	34	8 (86141) 6-16-38, 8 (961) 858-17-97,8 (964) 898-28-69	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ольховая
1121	Сигнал	\N	2012-08-31 13:31:19.058777	2012-08-31 13:31:19.058777	0	31	8 (918) 622-03-30, 8 (86133) 78-1-47	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1122	Бузазская коса	\N	2012-08-31 13:31:19.581254	2012-08-31 13:31:19.581254	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1123	Три медведя	\N	2012-08-31 13:31:19.617758	2012-08-31 13:31:19.617758	0	31	 8(918) 051-07-31, 8(918)022-71-03	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	 Приморская
1124	Алла-Примрская	\N	2012-08-31 13:31:19.785122	2012-08-31 13:31:19.785122	0	31	 (918) 438-45-60, +7 (928) 842-24-16	\N	\N	\N	\N	\N	\N	\N	\N	27	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Приморская
1125	Домашний уют	\N	2012-08-31 13:31:19.812835	2012-08-31 13:31:19.812835	0	31	8 (918) 330-37-47, 8 (960) 480-02-82	\N	\N	\N	\N	\N	\N	\N	\N	138	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Таманская
1126	Золотые пески	\N	2012-08-31 13:31:19.826985	2012-08-31 13:31:19.826985	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	13	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Казачий
1127	Русалочка	\N	2012-08-31 13:31:19.869006	2012-08-31 13:31:19.869006	0	31	8 (86133) 7-82-66, 4-60-50, 8 (918) 477-43-66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1128	Гвоздика	\N	2012-08-31 13:31:19.903186	2012-08-31 13:31:19.903186	0	31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1129	Кораллы	\N	2012-08-31 13:31:19.929609	2012-08-31 13:31:19.929609	0	31	8(86133) 7-81-20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
426	Кубаночка	\N	2012-08-31 13:16:31.347063	2012-08-31 13:16:31.347063	0	31	8(86133) 7-81-33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1130	Огонек	\N	2012-08-31 13:31:19.992492	2012-08-31 13:31:19.992492	0	31	8 (86133) 7-81-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1131	Ока	\N	2012-08-31 13:31:20.036332	2012-08-31 13:31:20.036332	0	31	8 (86133) 7-81-17, 8 (918) 198-23-11, 8 (918) 672-97-76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1132	Ростовчанка	\N	2012-08-31 13:31:20.051764	2012-08-31 13:31:20.051764	0	31	8 (928) 922-60-70, 8 (909) 401-15-15	\N	\N	\N	\N	\N	\N	\N	\N	40/50	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1133	Русалка	\N	2012-08-31 13:31:20.067098	2012-08-31 13:31:20.067098	0	31	8 (86133) 7-82-66	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1134	Ставрополье	\N	2012-08-31 13:31:20.080859	2012-08-31 13:31:20.080859	0	31	8 (86133) 7-81-50, 7-81-65	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1135	Тамань	\N	2012-08-31 13:31:20.095168	2012-08-31 13:31:20.095168	0	31	8(86133) 7-82-74	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1136	Хрустальная	\N	2012-08-31 13:31:20.107219	2012-08-31 13:31:20.107219	0	31	8 (86133) 7-82-72	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1137	На Новой 	\N	2012-08-31 13:31:20.367639	2012-08-31 13:31:20.367639	0	31	8 (918) 395-76-69, 8 (918) 482-73-69 	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новая
813	Коттеджи на Черноморской	\N	2012-08-31 13:16:38.698125	2012-08-31 13:16:38.698125	0	31	8 (918) 339-11-87	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
1138	Апартаменты	\N	2012-08-31 13:31:20.473691	2012-08-31 13:31:20.473691	0	31	8 (918) 46-000-41, 8 (918) 456-3-999	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Самбурова
1139	Дорожник	\N	2012-08-31 13:31:20.766363	2012-08-31 13:31:20.766363	0	31	8 (86133)33-868, 8 (86133)51-733, 8(918)462-47-17, 8 (918)46-43-914	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Прибрежная зона
1140	Колумб и Я 	\N	2012-08-31 13:31:20.779854	2012-08-31 13:31:20.779854	0	32	8 (86141) 3-46-38, 3-24-12	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Островского
1141	Акварель	\N	2012-08-31 13:31:20.79316	2012-08-31 13:31:20.79316	0	32	8 (86141) 5-16-82, 8(928) 430-11-74	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Нахимова
1142	Афанасий	\N	2012-08-31 13:31:20.840307	2012-08-31 13:31:20.840307	0	32	 (953) 069-84-83, 8 (86141) 2-81-00	\N	\N	\N	\N	\N	\N	\N	\N	10	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Филиппа Рубахо
1143	Tristar Hotel (Тристар Отель) 	\N	2012-08-31 13:31:20.920664	2012-08-31 13:31:20.920664	0	32	8 (916) 086-54-54	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Восточный
1144	Абул 	\N	2012-08-31 13:31:20.966275	2012-08-31 13:31:20.966275	0	32	8 (918) 396-45-55, 8 (918) 440-00-04	\N	\N	\N	\N	\N	\N	\N	\N	68/2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Луначарского
1145	Александрия	\N	2012-08-31 13:31:21.018048	2012-08-31 13:31:21.018048	0	32	8 (86141) 2-13-03, 8 (909) 452-27-57	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Шмидта
837	Валентин	\N	2012-08-31 13:16:39.143855	2012-08-31 13:16:39.143855	0	32	8 (903) 457-98-97, 8 (928) 268-98-97	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Голубая бухта, ул. Академика Ширшова
453	Валерия	\N	2012-08-31 13:16:31.804832	2012-08-31 13:16:31.804832	0	32	8 (86141) 5-66-00 8 (918) 350-55-52	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ульяновская
1146	Дом Казака	\N	2012-08-31 13:31:21.183526	2012-08-31 13:31:21.183526	0	32	8 (964) 893-67-50	\N	\N	\N	\N	\N	\N	\N	\N	20	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1147	Lime (Лайм) 	\N	2012-08-31 13:31:21.20767	2012-08-31 13:31:21.20767	0	32	8 (928) 429-86-84	\N	\N	\N	\N	\N	\N	\N	\N	54	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Десантная
1148	Пальмира	\N	2012-08-31 13:31:21.22857	2012-08-31 13:31:21.22857	0	32	8 (918) 048-76-94	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1149	Акватика	\N	2012-08-31 13:31:21.254488	2012-08-31 13:31:21.254488	0	32	 8 (928) 434-44-51,8 (918) 056-13-60	\N	\N	\N	\N	\N	\N	\N	\N	25	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
1151	Viktoria&K 	\N	2012-08-31 13:31:21.299277	2012-08-31 13:31:21.299277	0	32	8 (928) 437-69-27, 8 (918) 987-84-25, 8 (961) 519-65-05	\N	\N	\N	\N	\N	\N	\N	\N	36	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Первомайская
1152	Гостевой дом На Кирова 	\N	2012-08-31 13:31:21.320582	2012-08-31 13:31:21.320582	0	32	 8 (86141) 3-32-30, 8 (928) 661-88-99	\N	\N	\N	\N	\N	\N	\N	\N	 41 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
1153	Гостевой дом по ул. Тельмана 23 	\N	2012-08-31 13:31:21.367374	2012-08-31 13:31:21.367374	0	32	8 (918) 986-95-06	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
1154	Евгения	\N	2012-08-31 13:31:21.5522	2012-08-31 13:31:21.5522	0	32	 8 (918) 040-85-19, 8 (918) 482-79-99	\N	\N	\N	\N	\N	\N	\N	\N	28-Jan	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Октябрьская
1155	Apple (Эппл) 	\N	2012-08-31 13:31:21.665086	2012-08-31 13:31:21.665086	0	32	8 (928) 035-86-60	\N	\N	\N	\N	\N	\N	\N	\N	9 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Десантная
1156	Солнечная	\N	2012-08-31 13:31:21.818128	2012-08-31 13:31:21.818128	0	32	8 (86141) 2-68-85, 2-72-15	\N	\N	\N	\N	\N	\N	\N	\N	19	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
1157	Глобус 	\N	2012-08-31 13:31:21.964042	2012-08-31 13:31:21.964042	0	32	8 (86141) 5-17-15	\N	\N	\N	\N	\N	\N	\N	\N	29 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Красногвардейская
787	Лебедь	\N	2012-08-31 13:16:37.825978	2012-08-31 13:16:37.825978	0	32	8-909-44-660-29, 8-86141-2-08-41	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1150	Анна 	\N	2012-08-31 13:31:21.276849	2012-08-31 13:31:21.276849	0	34	8 (918) 416-92-77	\N	\N	\N	\N	\N	\N	\N	\N	93	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
868	Голубая Бухта	\N	2012-08-31 13:16:39.788449	2012-08-31 13:16:39.788449	0	32	8 (86141) 2-82-71	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкр. Голубая Бухта, ул. Просторная
1158	Горизонт	\N	2012-08-31 13:31:22.001859	2012-08-31 13:31:22.001859	0	32	8 (86141) 2-63-71	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Туристическая 
1159	Эдельвейс	\N	2012-08-31 13:31:22.208034	2012-08-31 13:31:22.208034	0	32	8 (86141) 3-35-33, 3-30-04	\N	\N	\N	\N	\N	\N	\N	\N	31	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1160	Южная звезда	\N	2012-08-31 13:31:22.224209	2012-08-31 13:31:22.224209	0	32	 8 (86141) 5-16-14	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гринченко
1161	Dolche-vita	\N	2012-08-31 13:31:22.273541	2012-08-31 13:31:22.273541	0	32	8 (928) 240-85-87, 8 (926) 596-96-09	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкн. Голубая бухта, ул. Океанологов
1162	Парадейсон	\N	2012-08-31 13:31:22.401079	2012-08-31 13:31:22.401079	0	32	8-928-207-80-80, 8-988-315-09-15, 8-86141-3-20-02	\N	\N	\N	\N	\N	\N	\N	\N	80 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
1163	Золотая лоза	\N	2012-08-31 13:31:22.423277	2012-08-31 13:31:22.423277	0	32	8-918-490-73-36, 8-918-323-69-95	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Герцена
1164	На Лабинской	\N	2012-08-31 13:31:22.626773	2012-08-31 13:31:22.626773	0	32	8-918-056-66-38, 8-951-973-09-77	\N	\N	\N	\N	\N	\N	\N	\N	9	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкн. Голубая бухта, ул. Лабинская
892	Аленка	\N	2012-08-31 13:16:40.242316	2012-08-31 13:16:40.242316	0	32	8-86141-2-10-40,8-918-448-81-24, 8-918-460-16-45, 8-918-471-86-82	\N	\N	\N	\N	\N	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
1165	Анита	\N	2012-08-31 13:31:22.864575	2012-08-31 13:31:22.864575	0	32	8-86141-26-333, 8-918-39-78-433	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Одесская
1166	На Тельмана 23	\N	2012-08-31 13:31:22.892678	2012-08-31 13:31:22.892678	0	32	8-918-986-95-06, 8-928-042-30-02 	\N	\N	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Тельмана
1167	Корсар	\N	2012-08-31 13:31:22.915565	2012-08-31 13:31:22.915565	0	32	8(928)22 313 22, 8(918)065-13-11	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	мкр. Магнолия
1168	Blue Bay	\N	2012-08-31 13:31:22.961752	2012-08-31 13:31:22.961752	0	32	8-903-451-10-93, 8-953-116-14-84	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	\N
1169	Офелия	\N	2012-08-31 13:31:22.994467	2012-08-31 13:31:22.994467	0	32	8-918-670-21-53, 8-988-339-38-29	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Голубая бухта, мкн. Солнцедар
1170	 Надежда. SPA & Морской рай	\N	2012-08-31 13:31:23.024037	2012-08-31 13:31:23.024037	0	33	8 (86141) 9-05-00	\N	\N	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1171	Вега	\N	2012-08-31 13:31:23.078644	2012-08-31 13:31:23.078644	0	33	8 (86141) 6-51-42, 8 (918) 938-05-04	\N	\N	\N	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Олимпийский
1172	Жемчужина	\N	2012-08-31 13:31:23.112998	2012-08-31 13:31:23.112998	0	33	8 (86141) 6-51-95, 8 (86141) 6-54-22	\N	\N	\N	\N	\N	\N	\N	\N	115 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
1173	Изумрудный	\N	2012-08-31 13:31:23.138231	2012-08-31 13:31:23.138231	0	33	8 (86141) 6-66-38	\N	\N	\N	\N	\N	\N	\N	\N	136 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Революционная
1174	Маринус	\N	2012-08-31 13:31:23.237044	2012-08-31 13:31:23.237044	0	33	8 (86141) 6-57-25	\N	\N	\N	\N	\N	\N	\N	\N	77	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Коллективная
1175	Атлант	\N	2012-08-31 13:31:23.319401	2012-08-31 13:31:23.319401	0	33	 8 (918) 463-72-69,8 (86141) 6-65-62	\N	\N	\N	\N	\N	\N	\N	\N	103 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Пролетарская
1176	Архос	\N	2012-08-31 13:31:23.704578	2012-08-31 13:31:23.704578	0	34	7 (926) 497-30-78 (Москва), 8 (928) 282-27-70 (Краснодар), 8 (928) 295-16-60	\N	\N	\N	\N	\N	\N	\N	\N	14	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Ленинский
924	Гостевые дома Рассказова	\N	2012-08-31 13:16:40.889595	2012-08-31 13:16:40.889595	0	34	8(916) 400-66-11, 8 (918) 182-01-01, 8 (988) 182-01-01	\N	\N	\N	\N	\N	\N	\N	\N	33/34	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1177	Золотая подкова	\N	2012-08-31 13:31:23.750439	2012-08-31 13:31:23.750439	0	34	8 (918) 558-98-17 	\N	\N	\N	\N	\N	\N	\N	\N	97 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
1178	Фем Ландия	\N	2012-08-31 13:31:23.841219	2012-08-31 13:31:23.841219	0	34	8 (86141) 6-01-85	\N	\N	\N	\N	\N	\N	\N	\N	45	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Школьная
1179	Мане	\N	2012-08-31 13:31:23.857329	2012-08-31 13:31:23.857329	0	34	 8 (86141) 6-16-56, 8 (928) 205-95-88	\N	\N	\N	\N	\N	\N	\N	\N	21	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Гоголя 
1180	A Relax Hotel (А Релакс Отель) 	\N	2012-08-31 13:31:23.868813	2012-08-31 13:31:23.868813	0	34	8 (928) 204-04-04, 8 (928) 228-27-26	\N	\N	\N	\N	\N	\N	\N	\N	63	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Береговая
1181	Горная Долина	\N	2012-08-31 13:31:23.95337	2012-08-31 13:31:23.95337	0	34	8 (86141) 6-16-16, 8 (926) 224-04-47	\N	\N	\N	\N	\N	\N	\N	\N	37	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Новороссийская
1182	Европа	\N	2012-08-31 13:31:23.969249	2012-08-31 13:31:23.969249	0	34	8 (918) 681-55-55, 8 (86141) 6-18-18	\N	\N	\N	\N	\N	\N	\N	\N	54	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Вишневая
1183	Золотой берег	\N	2012-08-31 13:31:24.008457	2012-08-31 13:31:24.008457	0	34	8 (918) 351-61-15	\N	\N	\N	\N	\N	\N	\N	\N	13 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Садовая
1184	Речная Долина	\N	2012-08-31 13:31:24.066339	2012-08-31 13:31:24.066339	0	34	8 (918) 174-04-15, 8 (926) 224-04-47	\N	\N	\N	\N	\N	\N	\N	\N	46 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Советская 
1185	Санталия	\N	2012-08-31 13:31:24.084706	2012-08-31 13:31:24.084706	0	34	 8 (918) 371-08-92	\N	\N	\N	\N	\N	\N	\N	\N	7	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Каштановая
934	Семирамида	\N	2012-08-31 13:16:41.07999	2012-08-31 13:16:41.07999	0	34	 8 (928) 255-55-66, 8 (86141) 6-12-00, 8 (928) 819-59-55	\N	\N	\N	\N	\N	\N	\N	\N	5 Д	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Морская
1186	Югоморье	\N	2012-08-31 13:31:24.176654	2012-08-31 13:31:24.176654	0	34	8 (918) 667-51-99, 8 (86141) 6-01-45	\N	\N	\N	\N	\N	\N	\N	\N	26	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Садовая
1187	Вулан	\N	2012-08-31 13:31:24.5887	2012-08-31 13:31:24.5887	0	34	8 (86141) 6-05-96	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Глухой 
635	Афина	\N	2012-08-31 13:16:34.894595	2012-08-31 13:16:34.894595	0	35	8 (918) 397-17-80	\N	\N	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Ленина
1188	Paradise (Парадиз) 	\N	2012-08-31 13:31:24.646983	2012-08-31 13:31:24.646983	0	35	8 (86141) 6-45-90, 8 (960) 489-40-87	\N	\N	\N	\N	\N	\N	\N	\N	1 Б	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
1189	Прометей, корпус 2 	\N	2012-08-31 13:31:24.664344	2012-08-31 13:31:24.664344	0	35	 8 (918) 472-24-27, 8 (918) 472-24-47	\N	\N	\N	\N	\N	\N	\N	\N	10 (корпус 2)	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
1190	Verona (Верона) 	\N	2012-08-31 13:31:24.7594	2012-08-31 13:31:24.7594	0	35	8 (900) 252-94-83, 8 (915) 693-91-94	\N	\N	\N	\N	\N	\N	\N	\N	8 В	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
1191	Престиж	\N	2012-08-31 13:31:24.830848	2012-08-31 13:31:24.830848	0	35	8 (86141) 6-28-44, 8 (928) 403-97-93	\N	\N	\N	\N	\N	\N	\N	\N	12 А	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Кирова
1192	Факел	\N	2012-08-31 13:31:24.891996	2012-08-31 13:31:24.891996	0	35	8 (86141) 6-36-91	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Курортная
1193	Дубравушка	\N	2012-08-31 13:31:25.047193	2012-08-31 13:31:25.047193	0	37	8 (86141) 9-93-61	\N	\N	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Мира
1194	Императрица 	\N	2012-08-31 13:31:25.116783	2012-08-31 13:31:25.116783	0	38	8  (918) 632-68-55	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	Черноморская
1195	Сафоново	\N	2012-08-31 13:31:25.129546	2012-08-31 13:31:25.129546	0	38	 8 (928) 413-40-67, 8 (918) 312-80-82	\N	\N	\N	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	\N	0	0	0	0	0	\N	\N	пер. Пицундийский
1023	Максимус	\N	2012-08-31 13:31:10.839432	2012-09-09 17:21:12.835274	0	25	8 (86133) 3 29 90	\N	\N	\N	230100152516	230101001	\N	353440, КК, Анапа, ул.Самбурова, 12 А	353440, КК, Анапа, ул.Самбурова, 12 А	12 А	\N	\N	\N	\N	1	\N	t	\N	0	\N	840	900	12:00	Паспорт, свидетельство о рождении, для детей	20	3	5	21	0	44.8853799999999978	37.3071509999999975	Самбурова
983	Голубая лагуна	Центральная часть города	2012-08-31 13:31:08.313564	2012-09-10 08:45:09.68372	0	25	\N	\N	www.glaguna.ru	\N	230108360405	\N	305230109100161	г.Анапа, ул.Калинина, 29-А	г.Анапа, ул.Калинина, 29-А	29 А	\N	\N	\N	\N	1	\N	t	\N	0	Набережная в 3-5 минутах ходьбы, водно-спортивный комплекс и цетральный пляж в 10 минутах ходьбы	0	2500	12:00	паспорт	15	2	1	1	0	44.8945560000000015	37.3059650000000005	Калинина
544	Тенистый дворик	\N	2012-08-31 13:16:33.208948	2012-10-25 15:31:48.58866	0	25	+7(918) 434 23 41	\N	\N	\N	230100270566	\N	804230122600010	г.Анапа, ул.Самбурова, 84, кв.2	г.Анапа, ул.Самбурова, 84, кв.2	84	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1100	12:00	паспорт, свидеьельство о рождении для ребенка	10	2	3	0	0	44.8893389999999997	37.3151810000000026	Самбурова
555	Валенсия	расположен недалеко от моря (300-350м) на второй линии курортной зоны Пионерского проспекта	2012-08-31 13:16:33.466812	2012-09-15 19:09:36.927343	0	28	+7 918 38 99 261, +7 86133 3 35 01, +7 86133 3 09 68	anapamore@list.ru	hotelvalencia.ru	\N	230108258592	\N	\N	г.Анапа, п.Витязево, 1-й Черноморский пер., 1	\N	1	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	2740	12:00	паспорт, свидетельство о рождении для ребенка	10	6	4	42	0	44.9432456206397646	37.3060026811675556	Пионерский проспект, ул. Дружбы
1022	Адмирал	\N	2012-08-31 13:31:10.818805	2012-09-09 14:29:28.061482	0	25	8 (86133) 3 06 30, 8 918 3707944	\N	www.admiral-anapa.ru	\N	230100225309	\N	311230131900048	353440, Анапа, пер.Кордонный, 1А	353440, Анапа, пер.Кордонный, 1А	1 А	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1500	12:00	паспорт, свидетельство о рождении, для ребенка	10	4	4	1	0	44.8971870000000024	37.3037459999999967	пер. Кордонный
1065	Маргарита	расположен в 800 метрах до прохода к песчаному пляжу, центра развлечений «Паралия».	2012-08-31 13:31:13.053467	2012-09-15 12:10:14.805483	0	27	+7 (918) 329 31 71	\N	\N	\N	230107110018	\N	306230126900014	353417, г.Анапа, п.Витязева, ул.Мира, 125	353417, г.Анапа, п.Витязева, ул.Мира, 125	125	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	700	12:00	паспорт, свидетельство о рождении для ребенка.	10	1	2	5	0	44.9926900000000032	37.2655940000000001	Мира
1198	Визит	\N	2012-09-08 11:50:15.399813	2012-09-08 12:27:21.430731	0	25	+7(918) 214 16 05, +7(86133)439 86	\N	\N	\N	2301026972119	230102001	\N	353440, Анапа, ул.Новороссийская, 63/2	353440, Анапа, ул.Новороссийская, 63/2	63/2	\N	\N	\N	\N	1	\N	t	\N	3	\N	0	1400	12:00	паспорт или заграничный паспорт, для детей до 14 лет - свидетельсьво о рождении	10	2	1	0	0	44.891249000000002	37.3127380000000031	Новороссийская
1196	Мария	Семейный отдых, обоятельные хозяева.	2012-09-05 05:18:40.451659	2012-09-05 05:55:13.463476	0	25	+7 (918) 21 47-581	\N	\N	от ж.д. вокзала - на маршрутке 100 до Астраханской, далее на №№9,2,24,25.\r\nот автовокзала - №№9,2,24,25	230111572985	\N	\N	\N	\N	37	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	900	12:00	паспорт	14	2	0	0	0	44.8873850000000019	37.3067369999999983	Ивана Голубца
1197	Ангелина	\N	2012-09-06 16:47:30.001932	2012-09-09 16:59:29.036432	0	25	+7 (86133) 4 58 86, +7(918) 492 44 48, +7(905) 473 75 25	\N	\N	\N	230100875603	\N	304230107500800	Анапа, ул.Гоголя, 62	Анапа, ул.Гоголя, 62	62	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1100	12:00	паспорт, свидетельства о рождении для детей	10	4	0	0	0	44.8857179999999971	37.3131509999999977	Гоголя
1216	Баунти	Гостевой дом «Баунти» находится на центральной улице поселка Витязево. Это 2-х этажный корпус с открытыми террасами.	2012-11-08 07:28:52.063952	2012-11-08 08:57:35.043918	0	26	8-909-459-1755	maska08@mail.ru	baunti-vityazevo.ru	\N	\N	\N	\N	353417, г. Анапа, п. Витязево, ул. Черноморская, 133 А	353417, г. Анапа, п. Витязево, ул. Черноморская, 133 А	133 А	\N	\N	\N	\N	1	\N	t	\N	0	Черноморская - главная улица курорта Витязево - десятки магазинов, палаток.	0	800	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	0	18	0	44.8975190000000026	37.3053450000000026	Черноморская
454	Капитан С	Новое 3-х этажное здание расположено в центре города Анапа, в первой курортной зоне. Гостевой дом имеет изолированную, небольшую благоустроенную дворовую территорию.	2012-08-31 13:16:31.817169	2012-09-09 17:01:15.3251	0	25	8 918 64 74 111	\N	http://www.anapac.ru/kapitan-c	\N	230100622377	\N	304230113500117	353440, Анапа, Самбурова, 177	353440, Анапа, Самбурова, 177	177	\N	\N	\N	\N	1	\N	t	\N	0	В непосредственной близости расположены: городской парк, центр развлечений для больших и маленьких, аквапарк «Золотой пляж», культурные и торговые центры, летний эстрадный театр, кинотеатры, рестораны, бары, многочисленные кафе, дискотеки, центральный продуктовый и вещевой рынки.	800	1500	12:00	паспорт, свидетельство о рождении для детей	10	5	3	0	0	44.8951119999999975	37.3259520000000009	Самбурова
1215	Екатерина	Гостевой дом "Екатерина" представляет собой два современных 5-этажных корпуса со всеми удобствами.	2012-11-08 05:39:28.829403	2012-12-19 09:58:19.875934	0	27	8 (86133) 5-30-86, 8 (918) 665-11-98;  8 (918) 030-54-04	ekaterina_vityazevo@rambler.ru	ekaterinav.ru	\N	7707083893	\N	\N	353417, г. Анапа,  пос. Витязево, переулок Цветочный, д.3	353417, г. Анапа,  пос. Витязево, переулок Цветочный, д.3	3	\N	\N	\N	\N	1	\N	t	\N	0	Рядом с гостевым домом "Екатерина" расположен развлекательный комплекс поселка Витязево - ПАРАЛИЯ, а также детский луна парк, рестораны, дискотеки, кафе, лазерное шоу, тир, магазины, боулинг клуб на 10 дорожек и современный спортивный комплекс, а также другие развлечения.	0	1300	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	5	92	0	44.9851990000000015	37.2606990000000025	переулок Цветочный
1035	Бухта Радости 3*	4-х этажное здание постройки 2005г. Находится в самом центре города-курорта Анапа, 100 метров от театральной площади	2012-08-31 13:31:11.431494	2012-09-23 05:40:37.760576	0	25	8 (86133) 39254	\N	\N	\N	230108258592	\N	\N	353417, г.Анапа, п.Витязева, 1-й Черноморский пер., 1	353417, г.Анапа, п.Витязева, 1-й Черноморский пер., 1	84	\N	\N	\N	\N	1	\N	t	\N	0	рынок, аквапарк, детский парк аттракционов, песчаный пляж, яхт-клуб, белый дом	0	1800	12:00	паспорт, свидетельство о рождении для ребенка	10	2	3	23	0	44.8932089999999988	37.3131419999999991	Терская
1094	Меридиан 4*	Построен в 2009 году, представляет собой 6-этажное современное здание, 2 лифта. Несмотря на то, что у отеля нет собственной территории, все пространство организовано очень комфортно	2012-08-31 13:31:14.928049	2012-09-13 06:17:04.86112	0	27	+7 (86133) 73 00 9, +7 (918) 410 96 00	\N	meridian-hotel-anapa.ru	\N	2301070527	230101001	1092301000550	353440, г.Анапа, с.Витязево, ул.Черноморская, 181Б	353440, г.Анапа, с.Витязево, ул.Черноморская, 181Б	181 Б	\N	\N	\N	\N	1	\N	t	\N	0	10 м до прогулочной набережной «Паралия»: сувенирные лавочки, парк аттракционов, кафе, рестораны, ночные клубы	0	1500	12:00	паспорт и свидетельство о рождении для ребенка	10	3	8	0	0	44.9858240000000009	37.2552909999999997	Черноморская
540	Маленькая Маша	Три двухэтажных здания на отдельном участке.\r\nДети до 5-и лет могут приниматься со скидкой 60% без предоставления отдельного места (июль, август 50%)	2012-08-31 13:16:33.137039	2012-09-09 04:59:10.009195	0	25	8 (918) 647-41-11	\N	www.anapa-capitan.ru	От аэропорта - маршрутное такси №3; от ж/д станции- маршрутное такси №10 до остановки « Автовокзал» на ул.Красноармейской. Далее  пешком 10 минут	230100622377	\N	304230113500117	353440, г.Анапа, ул.Самбурова, 177	353440, г.Анапа, ул.Самбурова, 177	239	\N	\N	\N	\N	1	\N	t	\N	0	В непосредственной близости расположены: парк, центр развлечений для больших и маленьких, аквапарк, культурные и торговые центры, летний эстрадный театр и кинотеатр, центральный продуктовый рынок.	0	1000	12:00	паспорт, свидетельство о рождении для ребенка	10	4	3	0	0	44.897672	37.3323389999999975	Самбурова
1214	Мария	Гостевой дом "Мария" расположен в самом сердце курортного поселка Витязево на улице Черноморская, которая переходит в главную прогулочную улицу курорта Витязево – набережную «Паралию».	2012-11-08 05:04:05.022723	2012-11-08 15:39:33.097049	0	26	8 (918) 321-99-66, 8 (928) 841-07-57	dimoevavalentina@mail.ru	hotel-mariya.ru	\N	230100775084	\N	304230103400091	353417, г. Анапа, п. Витязево, ул. Черноморская, 143	353417, г. Анапа, п. Витязево, ул. Черноморская, 143	143	\N	\N	\N	\N	1	\N	t	\N	0	Рядом с отелем находится парк аттракционов, различные кафе и рестораны, магазины.	0	2300	12:00	Паспорт, свидетельство о рождении для ребенка	10	2	5	9	0	44.8975190000000026	37.3053450000000026	Черноморская
683	Орион	на набережной Анапы у пересечения с улицей Калинина	2012-08-31 13:16:35.81631	2012-09-14 04:45:01.969259	0	27	+7 (86133) 73014	\N	orion-anapa.ru	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	1	\N	t	\N	0	маяк Анапы,\r\nсанатории "Маяк", "Малая бухта", "Ди Луч", "Русь" и др.,\r\nПарковая зона района ДК "Курортный",\r\nБювет минеральных вод,\r\nпляж Малой бухты Анапы "Высокий берег",\r\nсерфстанция,\r\nяхт-клуб Анапы,\r\nдайвинг клубы "Акула" и "Аква-Глобус".\r\nАрхеологический музей "Горгиппия" раскопки античного города 6-5 вв. до н. э - 4в. н.э.	1700	2750	12:00	паспорт и свидетельство о рождении для ребенка	10	4	3	19	0	44.985396999999999	37.2534040000000033	Серебряная
645	Никос	расположен в районе санатория "Аквамарин", в 15 минутах от песчанного пляжа и состоит из 2-х корпусов	2012-08-31 13:16:35.069835	2012-09-18 16:25:10.583059	0	27	8-918-3122630, 8(86133) 74-595	\N	\N	\N	230102690703	\N	\N	353417 Краснодарский край, город-курорт Анапа, п. Витязево, ул. Обьездная, 25	353417 Краснодарский край, город-курорт Анапа, п. Витязево, ул. Обьездная, 25	25	\N	\N	\N	\N	1	\N	t	\N	3	остановка, магазины, кафе и столовые, набережная с парком развлечений	0	1300	12:00	Паспорт, свидетельство о рождении для ребенка.\r\nОГРАНИЧЕНИЯ!!! Животных не привозить!!!	10	2	5	10	0	44.986939999999997	37.2679839999999984	Объездная
450	Золотая миля	3-х этажное здание гостевого дома постройки 2009 года с небольшим внутренним двориком, с балконами и террасами для отдыха на тихой улице, в первой курортной зоне Анапы	2012-08-31 13:16:31.762675	2012-09-09 05:59:47.87969	0	25	8 918 66 52 888	\N	www.anapa-capitan.ru	от аэропорта - маршрутное такси №3; от ж/д станции- маршрутное такси №10 до остановки « Автовокзал» на ул.Красноармейской. Далее городским транспортом или маршрутным такси по адресу	230100622377	\N	304230113500117	353440, Анапа, Самбурова, 177	353440, Анапа, Самбурова, 177	21Д	\N	\N	\N	\N	1	\N	t	\N	0	рядом расположены: исторический символ Анапы – Маяк, Бювет-источник минеральных вод, санатории «Надежда», «Русь», лечебно- диагностический центр «Ди-Луч», где можно пройти оздоровление и лечение.	1300	2200	12:00	паспорт, свидетельство о рождении для детей	10	3	4	0	0	44.8915870000000012	37.3029280000000014	Кирова
1217	Надежда	Гостевой дом "Надежда" находится в тихом спокойном районе. Это 2-х этажное здание, на крыше расположена открытая площадка.	2012-11-09 05:34:36.236214	2012-12-19 10:05:27.197728	0	27	8-928-661-1461	uspex.62@mail.ru	nadezhda-vityazevo.ru	\N	613900041103	\N	\N	353417, г. Анапа, п. Витязево, ул. Лермонтова, 1 Г	353417, г. Анапа, п. Витязево, ул. Лермонтова, 1 Г	1 Г	\N	\N	\N	\N	1	\N	t	\N	0	В районе гостевого дома расположены магазины, кафе, шашлычные. Рядом бесплатная муниципальная грязевая лечебница (Лиман).	0	800	12:00	Паспорт, свидетельство о рождении для ребенка.	10	8	5	30	0	44.9846769999999978	37.2691250000000025	Лермонтова
1008	Атлантида	шестиэтажное здание отеля Атлантида оборудовано лифтом. На шестом этаже расположен солярий (смотровая площадка с летними столиками и шезлонгами)	2012-08-31 13:31:09.725315	2012-09-10 08:44:00.41433	0	25	8(86133) 2-06-65, 8 989 8099458, 8(86133) 2-06-65	\N	www.atlantida-anapa.ru	Из аэропорта и ж.д. вокзала рейсовым автобусом, с автовокзала маршрутным такси №№ 2,9,24,25	890400273731	\N	304890436500011	353440, Анапа, пер.Кордонный, 1 И	353440, Анапа, пер.Кордонный, 1 И	1 И	\N	\N	\N	\N	1	\N	t	\N	0	Яхт-клуб, Дайвинг-клуб, Морской вокзал, Песчаный и галечный пляж, Лечебная база “Ди-Луч”, БФО, городская Набережная.	1200	2000	12:00	пасспорт, свидетельство о рождении для детей	15	3	5	34	0	44.8969422333572084	37.3053820873107327	пер. Кордонный
523	Де Ла Мапа 3**	трехзвездочный отель, расположенный в центральной части города	2012-08-31 13:16:32.89986	2012-12-19 10:25:28.863264	0	25	(86133) 3-23-71, 8-800-200-2371, 8 918 47 045 90	\N	www.delamapa.com	\N	2301054797	230101001	\N	г.Анапа, ул.Протапова, 102	г.Анапа, ул.Протапова, 102	102	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1500	12:00	паспорт, свидетельство о рождении для детей	10	4	3	0	0	44.8929919999999996	37.3107619999999969	Протапова
437	Каталония	Современное кирпичное здание	2012-08-31 13:16:31.493723	2012-09-09 09:09:21.668574	0	25	8(918)44-35-707, 8(86133)4-64-28	\N	www.anapa-catalunya.narod.ru	\N	230107333261	\N	306230102300017	534400, г.Анапа, ул.Заводская, 28	3534400, г.Анапа, ул.Заводская, 28	28 А	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1860	12:00	паспорт и свидетельство о рождении ребенка	10	3	1	1	0	44.8857950000000017	37.3223950000000002	Заводская
1006	RS-Royal	Отель "RS-Royal" расположен в самом центре города-курорта Анапа, в 7 минутах ходьбы от песчаного пляжа и городского парка, различных зон отдыха и проведения досуга.	2012-08-31 13:31:09.563016	2012-11-12 06:57:09.656018	0	25	+7(86133) 39808, +7(918) 4000 611	rs-royal@mail.ru	rs-hotel.ru	\N	232009028471	\N	307230110300014	353440, Анапа, ул.Новороссийская, 89	353440, Анапа, ул.Новороссийская, 89	89	\N	\N	\N	\N	1	\N	t	\N	0	\N	1200	2200	12:00	паспорт, свидетельство о рождении для ребенка	10	4	7	44	0	44.8921109999999999	37.3150740000000027	Новороссийская
602	Золотое руно	расположен в курортном поселке Витязево, два новых современных 5-этажных корпуса на 32 номера	2012-08-31 13:16:34.288963	2012-09-15 05:35:36.106527	0	26	8 (86133)73595, 8(918)4525317	\N	zolotoerunohotel.ru	На маршрутном такси №23 и №134 – улица Мира 213 гостевой дом “Золотое руно”, на №114 – до улицы Горького поселка Витязево, далее – пешком до Паралии – до улицы Мира (спортивный комплекс) и до Мира 213, на №118 – до отеля “Гранд Элит”, далее до улицы Мира по проспекту Южному и до Мира 213 в сторону пляжа.	230100934295	\N	304230123200164	г.Анапа, п.Витязево, ул.Мира, 213	г.Анапа, п.Витязево, ул.Мира, 213	213	\N	\N	\N	\N	1	\N	t	\N	0	спортивный центр, боулинг, детский городок, автостоянка	0	1600	12:00	паспорт и свидетельство о рождении для ребенка	10	2	5	0	0	44.9957679999999982	37.2713529999999977	Мира
637	Мишаня	двухэтажное здание	2012-08-31 13:16:34.933262	2012-09-15 06:46:49.390335	0	27	8(86133) 48075; 8 918 2630018	\N	\N	\N	230104148983	\N	408230119200335	353440, г.Анапа, п.Витязево, ул.Майора Витязя, 2Г	353440, г.Анапа, п.Витязево, ул.Майора Витязя, 2Г	2 Г	\N	\N	\N	\N	1	\N	t	\N	0	пляж песчаный - 20 минут \r\nцентр развлечений - 20 минут\r\nаквапарк - 10 минут (на маршрутке)\r\nрынок - 15 минут\r\nмагазин продукты - 1 минута\r\nостановка маршрутки - 5 минут	0	800	12:00	паспорт и видетельство о рождении для ребенка, ОГРАНИЧЕНИЯ: животных не привозить,в номерах не курить	10	4	4	14	0	44.9254589999999965	37.3203200000000024	Майора Витязя
1201	Виола	Частная гостиница "Виола" расположена в 1 курортной зоне Витязево, зеленый и уютный с местами для отдыха, террасами и местом для принятия солнечных ванн, оборудованным лежаками и шезлонгами.	2012-09-21 06:12:38.533342	2012-09-21 08:09:34.720231	0	26	+7 (86133) 7-41-10	viola-more@yandex.ru	\N	\N	010500255490	\N	\N	Россия, Краснодарский край, Анапский район, п. Витязево, ул Благовещенская д. 11, Гостиница "Виола"	Россия, Краснодарский край, Анапский район, п. Витязево, ул Благовещенская д. 11, Гостиница "Виола"	11	\N	\N	\N	\N	1	\N	t	\N	0	наберажная "Паралия" с кафе и ресторанами, парком развлечений "Византия".	0	1050	12:00	паспорт и свидетельство о рождении для ребенка	10	3	2	15	0	44.986697999999997	37.2615970000000019	пер. Благовещенский
1200	Анжела	находится в 15 минутах от моря прогулочным шагом. Все номера с балконами и оборудованы всем необходимым.	2012-09-20 08:30:45.611945	2012-09-20 16:19:39.328188	0	26	+7 (918) 462 18 38	\N	\N	\N	230100928598	\N	\N	353417 Краснодарский край, Анапа, Витязево, ул. Мира, д.37	353417 Краснодарский край, Анапа, Витязево, ул. Мира, д.37	86	\N	\N	\N	\N	1	\N	t	\N	0	В 15 минутах ходьбы от гостевого дома находятся: набережная, луна-парк, кафе, бары и рестораны, санаторий "Аквамарин", где можно за отдельную плату приобрести курсовки на лечение.	0	1200	12:00	паспорт и свидетельство о рождении для ребенка,\r\n\r\nВозможно пребывание с животными по предварительной договоренности с администрацией гостевого дома.	10	3	4	21	0	44.9872590000000017	37.2627019999999973	Горького
1202	Лотос	Отель "Лотос" выполнен в современном стиле, с тихим уютным двориком, открытым бассейном с лобби-баром.	2012-09-22 16:31:17.842578	2012-09-22 18:27:05.254358	0	25	+7 (86133) 4-86-14, +7 (918) 051-15-15	\N	www.anapalotos.ru	\N	230101246608	\N	310230113200120	г.Анапа, угол ул.Спортивная 14 / ул.Лазурная д.33	г.Анапа, угол ул.Спортивная 14 / ул.Лазурная д.33	33	\N	\N	\N	\N	1	\N	t	\N	0	рядом гипермаркет, боулинг-клуб, развлекательный центр.	1000	1450	12:00	паспорт и свидетельство о рождении для ребенка	10	8	5	43	0	44.9026780000000016	37.3462090000000018	Лазурная
1069	Владис	Двух этажная мини-гостиница собрана из экологически чистого материала (деревянный брус).	2012-08-31 13:31:13.184827	2012-09-21 06:08:30.817688	0	27	8-918-0421770, 8-918-6622499	\N	\N	\N	230112429307	2315430018	311230107000031	г.Анапа, п.Витязево, ул.Овражная, 19	г.Анапа, п.Витязево, ул.Овражная, 19	19	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	400	12:00	\N	10	3	5	24	0	44.998662000000003	37.2772549999999967	Овражная
603	Жемчуг	Отель Жемчуг (Zhemchug) расположен на берегу Витязевского лимана. Год постройки отеля - 2006. Мини-отель "Жемчуг" представляет собой 3-этажное капитальное строение (3-й этаж мансардный) 2 отдельно стоящих здания. До центральных ворот Параллии 5 мин спокойного хода, до кромки воды - 15-20минут.	2012-08-31 13:16:34.303395	2012-09-15 20:37:30.565473	0	27	8 (86133) 5-97-73, 3-09-68	\N	\N	Ближ.населенный пункт\r\nг.Анапа - 16 км. Ближ.транспортные узлы\r\nаэропорт - 6 км\r\nж/д вокзал - 10 км\r\nОт центра Анапы марш.такси №№ 114, 124 до ост. ул.Восточная.	230108258592	\N	\N	353417, г.Анапа, п.Витязево, 1-й Черноморский пер., 1	353417, г.Анапа, п.Витязево, 1-й Черноморский пер., 1	2	\N	\N	\N	\N	1	\N	t	\N	0	благоустроенный уютный дворик с цветниками и альпийскими горками\r\nплощадки для отдыха\r\nлечебный лиман	0	1500	12:00	паспорт, свидельство о рождении для ребенка	10	3	2	12	0	44.9949459999999988	37.2694570000000027	1-ый Черноморский переулок
990	Априори	\N	2012-08-31 13:31:09.002573	2012-11-22 05:59:18.893166	0	27	8 918 088 70 98	\N	www.hotelapriori.ru	\N	270906121773	231001001	311231524500022	г.Новороссийск, с.Борисовка, ул.Тенистая, 6	\N	10	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	0	12:00	\N	10	1	6	0	0	44.9949459999999988	37.2694570000000027	4-ый Черноморский переулок
633	Адамас	Состоит из двух корпусов и предлагает для отдыхающих номера со всеми удобствами.	2012-08-31 13:16:34.869507	2012-09-16 05:04:37.129809	0	27	8 (918) 419-84-35, 8 (929) 83-09-414	\N	\N	\N	235204325730	\N	305230113200286	353417, г.Анапа, п.Витязево, ул.Лермонтова, 2В	353417, г.Анапа, п.Витязево, ул.Лермонтова, 2В	2 В	\N	\N	\N	\N	1	\N	t	\N	0	По дороге к морю функционирует бювет с минеральной водой.	700	1200	12:00	Паспорт. Детям – свидетельство о рождении.\r\nОГРАНИЧЕНИЯ!!! Привозить животных запрещено!	10	3	2	12	0	44.9850270000000023	37.2689179999999993	Лермонтова
853	Евгения	Гостевой дом "Евгения" расположен в центре курортной зоны Витязево. В шаговой доступности раположены крупные магазины и банкоматы. До моря  – 25 минут пешком, а до лечебного пляжа (лиман) - 15 мин. пешком.	2012-08-31 13:16:39.489577	2012-09-16 07:00:31.072061	0	27	8(86133) 7-53-68; 8 918 4500640	\N	\N	\N	744600011969	230701001	304230113900213	353417, г.Анапа, п.Витязево, ул.Красноармейская, 52	353417, г.Анапа, п.Витязево, ул.Красноармейская, 52	52	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	0	12:00	паспорт, свидетельство о рождении для ребенка	10	2	1	15	0	44.9909239999999997	37.2725560000000016	Красноармейская
1218	Гармония	Отель «Гармония» расположен в самом центре курорта Анапа. Это современный 4-х этажный комплекс.	2012-11-12 06:59:46.09763	2012-11-12 08:48:35.110823	0	25	8 (86133) 5-67-52, 8 (918) 316-47-28, 8 (918) 382-99-33	\N	\N	от ж/д вокзала - м/т №10, от аэропорта м/т №3- до остановки Автовокзал, далее 10 мин. хотьбы до ул. Крымской	230101107700	\N	304230124600071	353440, г. Анапа, ул. Крымская, д. 170	353440, г. Анапа, ул. Крымская, д. 170	170	\N	\N	\N	\N	1	\N	t	\N	0	тель «Гармония» расположен в самом центре курорта Анапа, в 5-и минутах ходьбы от городского песчаного пляжа и Аквапарка, в 2-х минутах от центрального рынка, автовокзала, кинотеатра, аптеки. Здесь же расположены магазины одежды, обуви, косметики, парикмахерская, кабинет стоматолога,\r\nж/д и авиа кассы, турагентство, юридическое бюро	0	1800	12:00	Паспорт, свидетельство о рождении для ребенка	10	2	5	16	0	44.8967269999999985	37.322808000000002	Крымская
465	Диамант	Гостевой дом «Диамант» удобно расположен на центральной улице Анапы Крымская. Гостевой дом выполнен в стиле средиземноморья, с двумя просторными террасами. Гостевой дом имеет изолированную благоустроенную дворовую территорию, которая находится под охраной.	2012-08-31 13:16:31.959551	2012-11-22 06:10:41.390446	0	25	8 (918) 189-3201	info@dom-v-anape.ru	dom-v-anape.ru	\N	\N	\N	\N	\N	\N	52	\N	\N	\N	\N	2	\N	t	\N	0	В непосредственной близости (400 метров) находится Набережная, центральный песчаный, галечный пляж, курортный парк с многочисленными кафе, аттракционами, аквапарк, яхт – клуб.	0	0	12:00	Паспорт,свидетельство о рождении для ребенка.	0	6	6	20	0	44.8902969999999968	37.3100700000000032	Крымская
644	Туровских	Трехэтажное здание, построенное в 2006 году	2012-08-31 13:16:35.056657	2012-10-24 10:32:45.097478	0	27	8 (86133) 74-591; 8-918-040-41-20	spectrva@rambler.ru	\N	\N	2310042974	\N	\N	353417, г. Анапа, п. Витязево, ул. Объездная, 21	353417, г. Анапа, п. Витязево, ул. Объездная, 21	21	\N	\N	\N	\N	1	\N	t	\N	0	В 20 минутах ходьбы от гостевого дома находятся: набережная, луна-парк, кафе, бары и рестораны, санаторий "Аквамарин", где можно за отдельную плату приобрести курсовки на лечение.	0	1200	12:00	паспорт и свидетельство о рождении для ребенка	10	4	5	19	0	44.9861867979543604	37.269856645507808	Объездная
1046	Европа 4*	Один 5-этажный корпус. 4-звезды, расположен в центре города-курорта Анапа, в 10 минутах ходьбы от песчаного пляжа и городского парка, различных зон отдыха и мест проведения досуга	2012-08-31 13:31:12.051782	2012-09-20 08:25:30.431717	0	25	8(86133) 32-800	\N	www.europe-anapa.ru	От аэропорта г. Анапа маршрутным такси № 113 до автовокзала, от ж/д вокзала г. Анапа маршрутными такси №№ 100, 129 до автовокзала. От автовокзала автобусами №№ 114, 134 до ост. «Ул. Шевченко».	2301053313	230101001	1052300011444	ул. Шевченко, д. 73 Анапа Краснодарский край 353440 Россия	ул. Шевченко, д. 73 Анапа Краснодарский край 353440 Россия	73	\N	\N	\N	\N	1	\N	t	\N	0	аходится в 1 км от центрального парка развлечений и аквапарка «Золотой пляж», в 800 метрах от Яхт-клуба. В 800 метрах от отеля находятся банкоматы, отделения банков: «Край Инвест», Сбербанк РФ, «Сочи Газпром», «Райффайзен банк», «Уралсиб».	2700	3100	12:00	Паспорт, свидетельство о рождении для ребенка.\r\n\r\nВозможно размещение с животными, для которых дополнительно может быть предоставлено питание.	15	5	8	29	0	44.8904890000000023	37.313951000000003	Шевченко
1204	Уют	Трехэтажный коттедж, построен в 2009 году, расположен в центре поселка Сукко	2012-09-30 04:44:15.99259	2012-09-30 05:47:18.164612	0	30	+7 (988) 332 77 44, +7 (988) 349 21 38	\N	\N	\N	\N	\N	\N	г.Анапа, п.Сукко, ул.Лермонтова, 7	г.Анапа, п.Сукко, ул.Лермонтова, 7	7	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	500	12:00	Паспорт и свидетельство о рождении для ребенка.\r\nДОПОЛНЕНИЕ!!!!\r\nПривоз животных по согласованию!\r\nВ номере не курить!	10	5	3	12	0	44.7975909999999971	37.4238599999999977	Лермонтова
775	Аленушка	Трехэтажное здание, двор, оборудованный местами для отдыха	2012-08-31 13:16:37.623791	2012-11-14 10:11:20.370164	0	30	8 918 2481929, 8 928 2789627	\N	\N	\N	\N	\N	\N	\N	\N	39	\N	\N	\N	\N	1	\N	t	\N	0	В 2 км от находится заповедник "Большой Утриш", где есть дельфинарий и морской аквариум. Представление в дельфинарии проводятся 2 раза в день. Аквариум демонстрирует интересную коллекцию обитателей Черного моря (морской конек, рыба-игла, морской дракон и т.д.).	0	1100	12:00	паспорт и свидетельство о рождении для ребенка\r\n\r\nПребывание животных оплачивается по цене дополнительного места!!!!	10	6	9	10	0	44.8914469999999994	37.3212270000000004	Центральная
1102	Ижевчанка	Трехэтажный коттедж, благоустроенный двор с беседкой для отдыха	2012-08-31 13:31:16.102595	2012-09-23 05:36:00.676614	0	28	8-918-0406713,  8-918-0406704	\N	\N	\N	183500670980	231001001	1022300000029	353440, Анапа, Курортный проезд, 10	353440, Анапа, Курортный проезд, 10	88/5	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1500	12:00	паспорт и свидетельство о рождении для ребенка	10	3	1	8	0	44.9596680000000006	37.2937030000000007	Пионерский проспект
1203	Афина	находится в куротном поселке Витязево в 700 м. от моря, оборудованный двор. \r\nСемейный отдых!!! Ограничен вход для посторонних!!!	2012-09-22 18:30:25.583778	2012-11-22 06:01:50.018461	0	26	+7 (918) 431 37 72	\N	www.afina-anapa.ru	\N	230101183524	\N	305230117900024	\N	\N	11а	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	1200	12:00	паспорт и свидетельство о рождении для ребенка.	10	3	3	12	0	44.990197000000002	37.2677059999999969	Лизы Чайкиной
1219	Альбатрос	Гостиничный комплекс "Альбатрос" работает с 2001 года и находится в центре курортной зоны города Анапы, на пересечении главных пешеходных улиц Горького и Гребенской. Отличительной особенностью современного гостиничного комплекса "Альбатрос" является удобное для гостей месторасположение, а так же удачное сочетание услуг.	2012-11-12 09:11:44.231139	2012-11-12 11:02:25.689729	0	25	8 (86133) 2-22-93	\N	hotel-albatros.ru	От аэропорта "Анапа" можно добраться на маршрутном такси №113, отправление которого зависит от расписания, остановка "Автостанция "Анапа", от ж/д "Анапа"- на маршрутном такси №120 остановка "Автостанция "Анапа". Возможна организация трансфера.	230100032177	\N	304230107800906	353440, г-к. Анапа ул. Горького, 9а/ул. Гребенская, 3а	353440, г-к. Анапа ул. Горького, 9а/ул. Гребенская, 3а	9 А	\N	\N	\N	\N	1	\N	t	\N	0	Гостиничный комплекс "Альбатрос" расположен в самом центре курортной зоны.  Рядом с комплексом расположены центральный рынок, автовокзал, авиа и ж/д кассы, банк, торговые центры, парк развлечений и аквапарк. Площадка для выступления приезжих артистов "Летняя эстрада", городской театр, 4 вещевых торговых комплексов ("Солнечный", "Лабиринт", "Пассаж", "Меркурий"), два компьютерных клуба, кинотеатр "Мир Кино" – вот неполный перечень тех мест, куда вы сможете дойти прогулочным шагом за десять минут. "Альбатрос" находится на одной территории с санаторием "Анапа", где есть возможность получить медицинские услуги по ценам санатория. Автостанция "Анапа" находится в 2 минутах ходьбы от гостиничного комплекса.	0	3000	12:00	Паспорт, свидетельство о рождении для ребенка.	10	6	8	50	0	44.8979980000000012	37.3199960000000033	Горького
1205	Надежда	находится в центре Пионерского проспекта в районе Джемете, . В 10 минутах ходьбы расположены магазины, кафе, столовые	2012-09-30 06:45:24.171601	2012-09-30 08:22:52.131128	0	25	+7 (918) 662 24 54	\N	\N	\N	701700805121	232002001	310230121500011	353431, Краснодарский край, Анапский р-н, ст.Анапская, ул.Красноармейская, 10/2	353431, Краснодарский край, Анапский р-н, ст.Анапская, ул.Красноармейская, 10/2	6	\N	\N	\N	\N	1	\N	t	\N	0	В районе гостевого дома развитая инфраструктура с магазинами, кафе и шашлычными. По дороге на пляж находится бювет с бесплатной минеральной водичкой.	0	1500	12:00	ваучер, путевка, паспорт, медицинский страховой полис, свидетельство о рождении ребенка\r\n\r\nДополнительно!!! Возможность уходить и приходить в гостиницу в любое время.\r\n\r\nОсвобождение номеров в 9:00 час. в день отъезда.	10	1	4	10	0	44.9718990000000005	37.296999999999997	пер. Курортный
671	Исидор	Пятиэтажная гостиница рассчитана на 47 номеров (122 места), из них 21 - с балконами. «Исидор» имеет два входа	2012-08-31 13:16:35.601811	2012-11-22 06:13:16.480305	0	27	8 918 3252004; 8 988 8208788	\N	\N	\N	230106218629	230102001	\N	г.Анапа, п.Витязево, пр.Южный, 25	г.Анапа, п.Витязево, пр.Южный, 25	25	\N	\N	\N	\N	1	\N	t	\N	0	в непосредственной близости от развлекательного центра (боулинг клуб, рестораны, казино, парк с аттракционами)	0	1500	12:00	паспорт и свидетельство о рождении для ребенка	10	8	6	47	0	44.9901139999999984	37.2528739999999985	пр-т Южный
612	Старинный Таллин	новый 4-х этажный особняк в прибалтийском стиле	2012-08-31 13:16:34.511625	2012-10-25 08:48:28.941771	0	27	8-918-483-3265, 8-918-333-6237,  (86133) 59-942	starinnyy.tallin@yandex.ru	\N	\N	230107283726	\N	\N	г. Анапа, кп. Витязево, ул. Горького, 38	г. Анапа, кп. Витязево, ул. Горького, 38	38	\N	\N	\N	\N	1	\N	t	\N	0	расположенный в первой курортной зоне, в районе санатория «Аквамарин» и бульваром «Шардоне». Рядом рынок, набережная "Паралия" с парком развлечений "Византия", где расположены кафе и рестораны на любой вкус	0	1100	12:00	паспорт, свидетельство о рождении для ребенка	10	8	5	30	0	44.9866910000000004	37.2626750000000015	Горького
424	Голден Леди	Пансионат «Golden Lady» находится в тихом и спокойном районе Анапы, в непосредственной близости центральной части города-курорта, район Высокого берега.	2012-08-31 13:16:31.308984	2012-11-13 10:33:34.246576	0	25	8 918 34-43-448, 8 (86133) 3-90-57	lady_anapa@mail.ru	\N	\N	230102342784	\N	304230115500101	353440, г. Анапа, ул. Гоголя, д. 70	353440, г. Анапа, ул. Гоголя, д. 70	70	\N	\N	\N	\N	1	\N	t	\N	0	Рядом с пансионатом находятся продуктовые магазины, сувенирные лавки, экскурсионные бюро.	0	550	12:00	Паспорт, свидетельство о рождении для ребенка	10	5	5	22	0	44.8860820000000018	37.3140319999999974	Гоголя
733	МиГ	Гостевой дом "МиГ" расположен в самом центе поселка Джемете на первой линии Пионерского проспекта курорта Анапа. Представляет собой двухэтажное здание.	2012-08-31 13:16:36.725555	2012-11-12 12:24:05.748631	0	28	8(86133) 30880; 8 918 4381059	\N	\N	\N	230102832901	\N	30423108900049	353417, г. Анапа, п.Джемете, Пионерский проспект, 131/2	353417, г. Анапа, п.Джемете, Пионерский проспект, 131/2	131-2	\N	\N	\N	\N	1	\N	t	\N	0	Рядом расположены различные кафе-столовые, магазины, сувенирные лавки, рынок, аквапарк,	0	1700	12:00	Паспорт, свидетельство о рождении для ребенка	10	2	5	12	0	44.9517900000000026	37.2975119999999976	Пионерский проспект
472	Паланга	Отель Анапы “Паланга” расположен в одном из самых спокойных районов курорта, чрезвычайно близок к побережью Черного моря, пляжу. Гостиница работает круглый год.	2012-08-31 13:16:32.053231	2012-12-19 12:03:51.275858	0	25	8 (918) 636-90-08, 8 (86133) 3-17-93, 4-38-31	info@hotelpalanga.ru	hotelpalanga.ru	\N	\N	\N	\N	\N	\N	82	\N	\N	\N	\N	2	\N	t	\N	0	Удобное расположение: магазины, рынки, городские парки и аттракционы.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка	0	3	10	0	0	44.8830870000000033	37.3186040000000006	Ленина
1206	Белый пляж	Расположен в городе Анапа на территории курортного поселка Джемете.  Клуб-отель «Белый пляж», это современный комплекс построенный из экологически чистых материалов прямо на берегу моря. Отдельно стоящие двухэтажные домики из оцилиндрованного бруса покрытые жженой черепицей, (каждый этаж из которых является стандартным номером)	2012-10-25 10:45:56.661895	2012-10-26 05:46:12.25981	0	28	8 (905) 406-20-07	club-hotel@mail.ru	white-beach.ru	от ж/д вокзала - автобусом или маршрутным такси №100, до ост. «Автовокзал», далее маршрутное такси №114,134, 128 по Пионерскому проспекту до остановки по требованию «Аквапарк», далее 5 мин. хотьбы до отеля\r\nот аэропорта: автобусом или маршрутным такси №113, до ост. «Автовокзал», далее - маршрутное такси №114,134 по Пионерскому проспекту до остановки по требованию «Аквапарк», далее 5 мин. хотьбы до отеля	230108354095	\N	311230110500065	353450, г. Анапа, ул. Гоголя, д. 21	353450, г. Анапа, п. Джемете, Джеметинский проезд, 8 Б	8 Б	\N	\N	\N	\N	1	\N	t	\N	0	Отель расположен непосредственно на песчаном пляже.	0	5000	12:00	Паспорт, ваучер, для детей до 14 лет свидетельнсто о рождении	10	2	5	19	0	44.9440460000000002	37.2976910000000004	Джеметинский проезд
1207	Вера	Двухэтажное здание террасного типа	2012-10-25 15:20:39.849052	2012-10-26 05:47:38.592895	0	25	8 (86133) 5-01-22, 5-07-48	anapa@anapatd.ru	\N	\N	230103006369	\N	\N	353440, г. Анапа, ул. Островского, 7	353440, г. Анапа, ул. Островского, 7	7	\N	\N	\N	\N	1	\N	t	\N	0	В непосредственной близости от гостевого дома находится продуктовый рынок "Южный", магазины, бары, кафе, остановка маршрутного такси	0	850	12:00	паспорт, свидеьельство о рождении для ребенка	10	3	0	7	0	44.8860120000000009	37.3278120000000015	Островского
759	Калифорния	Находится в 13 км от города Анапа, в живописном п.Сукко где берет свое начало уголок реликтовой природы заповедник "Утриш". Отель представляет собой огороженную охраняемую территорию, на которой находятся два современных корпуса с номерным фондом категорий "стандарт". Отель предназначен как для семейного отдыха с детьми так и для молодежного .	2012-08-31 13:16:37.277925	2012-10-26 09:28:57.509452	0	30	8 (918) 363-06-69	\N	s-anapa.ru	От ж/д вокзала г.Анапа маршрутное такси №100 до автовокзала, от а\\п г.Анапа  маршрутное такси № 113 до автовокзала, от автовокзала маршрутное такси № 109 до остановки ДЦ "Смена", на перекрёстке поверните налево, метров через 100 (напротив автомойки) направо, вверх будет уходить бетонная дорога, по которой  нужно  подняться. Третье жилое здание по левой стороне —  отель.	770101752307	\N	\N	г. Анапа, п. Сукко, ул. Кооперативная, д. 6	г. Анапа, п. Сукко, ул. Кооперативная, д. 6	6	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	2200	12:00	Паспорт, свидетельство о рождении для ребенка	14	3	5	25	0	44.8914469999999994	37.3212270000000004	Кооперативная
776	Бретань	Находится в 12-ти километрах от города-курорта Анапа, в одном из самых живописных уголков черноморского побережья – голубой долине Сукко. Гостиница " Бретань " предлагает комплексный семейный отдых.	2012-08-31 13:16:37.634892	2012-10-26 07:23:38.430714	0	30	8 918 4429822, 8 918 4443601	wws989@mail.ru	hotel-bretan.ru	\N	7744000302	\N	\N	г. Анапа, п. Сукко, ул. Центральная, 7	г. Анапа, п. Сукко, ул. Центральная, 7	7	\N	\N	\N	\N	1	\N	t	\N	0	Гостиница «Бретань» удобно расположена для любителей неспешного семейного отдыха. Рядом расположены магазины, банкоматы, сувенирные лавки, кафе. Непосредственно в долине Сукко проходит легендарное шоу — «Рыцарский турнир», рядом расположена «Африканская деревня». А в двух километрах от Сукко, в посёлке Большой Утриш, есть отличный дельфинарий.	0	1400	12:00	паспорт, свидетельство о рождении для ребенка	10	4	4	19	0	\N	\N	Центральная
631	Поместье Батуриных	Гостевой дом «Поместье Батуриных» расположен в тихом районе курортного поселка Витязево.	2012-08-31 13:16:34.833504	2012-12-19 10:39:31.68088	0	27	8 (86133) 48013, 8 918 4446898, 8 961 8576733	\N	\N	\N	\N	\N	\N	353417, г. Анапа, п. Витязево, ул. Лермонтова, д. 1	353417, г. Анапа, п. Витязево, ул. Лермонтова, д. 1	1	\N	\N	\N	\N	1	\N	t	\N	0	Находится в 15 мин. от центра, парка развлечений. Рядом с гостевым домом находится санаторий «Аквамарин», где можно пройти все мед.услуги. В непосредственной близости различные кафе, магазины и остановка.	0	800	12:00	Паспорт, свидетельство о рождении для ребенка.	10	4	5	0	0	44.8975190000000026	37.3053450000000026	Лермонтова
977	Прохлада	5-ти этажный отель, расположенный в центре курорта Анапа.	2012-08-31 13:31:08.126842	2012-11-19 11:51:30.489322	0	25	8 (86133) 3-11-71,  8 918 3250996 , 8 918 4613603	\N	\N	\N	\N	\N	\N	\N	\N	35	\N	\N	\N	\N	2	\N	f	\N	0	Гостиница "Прохлада" расположена в первой курортной зоне, практически в центре Анапы, на углу улиц Красноармейской и Горького (в нескольких метрах от автовокзала, около центрального (продовольственного рынка). Рядом - сеть продуктовых и промтоварных магазинов, автовокзал, аквапарк, центральный парк культуры и отдыха.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	1	\N	0	44.8995749999999987	37.3235269999999986	Горького
980	Де Марко	Уютный отель семейного отдыха "Де Марко" расположился в тихом районе  города Анапа. Отель имеет удобное местоположение отеля, комфортабельные номера оснащены всем необходимым.	2012-08-31 13:31:08.238485	2012-12-19 11:31:24.288586	0	25	8 (918) 494-12-15	demarco00@list.ru	hotel-demarco.ru	\N	\N	\N	\N	\N	\N	12	\N	\N	\N	\N	2	\N	t	\N	0	Рядом имеется продуктовый магазин. Остановка маршрутных такси в непосредственной близости от отеля.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	2	20	0	44.9039670000000015	37.3419689999999989	Зеленая
986	Мирабель	Гостиница "Мирабель" находится в первой курортной зоне города Анапы, в экологически чистом и спокойном районе. "Мирабель" представляет собой  современное пятиэтажное здание, соответствующее европейским стандартам с весьма развитой инфраструктурой.	2012-08-31 13:31:08.644365	2012-11-30 06:39:40.675418	0	25	8 (918) 665-55-95, 8 (86133) 3-10-86	director@anapa-mirabel.ru	anapa-mirabel.ru	От автовокзала г.Анапа – маршрутное такси №№ 2, 24, 25 до остановки «Угол ул. Кирова и Ивана Голубца»; маршрутное такси №9  до остановки «Маяк». \r\nОт железнодорожного вокзала г.Анапа – маршрутное такси №№110,129 до ост. «Автовокзал»; далее как указано в пункте 1. \r\nОт железнодорожного вокзала ст. «Тоннельная» маршрутным автобусом до автовокзала г.Анапа, далее как указано в пункте 1. \r\nОт аэропорта г.Анапа – маршрутное такси №13 до автовокзала г.Анапа, далее  как указано в пункте 1. \r\nОт аэропорта г.Краснодара маршрутным автобусом до автовокзала г.Анапа, далее  как указано в пункте 1.	\N	\N	\N	\N	\N	1 А	\N	\N	\N	\N	2	\N	t	\N	0	Рядом с гостиницей расположены крупнейшие здравницы курорта: лечебно-диагностический центр "ДиЛуч", старейшие санатории Анапы "Русь" и "Маяк". В непосредственной близости от гостиницы находятся: яхт-клуб, боулинг, спортивно-развлекательный центр, бассейн.  В 5 минутах от гостиницы расположена великолепная набережная с множеством различных развлечений.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	2	115	0	44.8902009999999976	37.2998019999999997	Кирова
1209	Диана	Расположен в курортном посёлке Витязево в первой курортной зоне.	2012-10-26 10:07:17.276115	2012-10-26 10:46:14.790572	0	26	8 (918) 44-82-320	diana-hotel@mail.ru	\N	\N	7707083893	230102001	\N	353417, г. Анапа, п. Витязево ул. Черноморская, 120	353417, г. Анапа, п. Витязево ул. Черноморская, 120	34	\N	\N	\N	\N	1	\N	t	\N	0	\N	0	800	12:00	Паспорт, свидетельство о рождении для ребенка	10	3	5	17	0	44.987251999999998	37.2656029999999987	Тракторная
1210	Гранд-Прибой	Отель «Гранд-Прибой» расположен в городе-курорте Анапа,на Пионерском проспекте,в районе Джемете. Это новый современный отель, состоящий из двух корпусов. Каждый корпус представляет собой 5-ти этажное здание.	2012-10-30 14:18:53.617569	2012-10-30 15:53:41.407837	0	25	8 (86133) 2-47-50	reservation@meridian-surf.ru	meridian-surf.ru	От аэропорта на маршрутном такси №113 до центрального рынка г.Анапа, от центрального рынка на маршрутном такси №114 до аквапарка «Тики-Так» на Пионерском пр-те, отель находится напротив аквапарка.\r\nОт ж/д вокзала на маршрутном такси № 100 до центрального рынка г.Анапа, от центрального рынка на маршрутном такси №114, №134 до аквапарка «Тики-Так» на Пионерском пр-те, отель находится напротив аквапарка.\r\nОт автовокзала на маршрутном такси №114, №134 до аквапарка «Тики-Так» на Пионерском пр-те, отель находится напротив аквапарка.	2301062678	230101001	1072301001948	353440, г. Анапа, ул. Таежная, д. 51	353440, г. Анапа, Пионерский пр-т, д. 81	81	\N	\N	\N	\N	1	\N	t	\N	0	В 100 м. находится аквапарк «Тики-Так», летние кафе, рестораны, сувенирные лавки.	0	1400	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	12	111	0	44.943165999999998	37.3006110000000035	Пионерский пр-т
1212	Ванатур	Гостевой дом "Ванатур" расположен в курортном поселке Витязево, который находится рядом с Анапой.	2012-11-07 06:41:47.769826	2012-11-07 08:13:30.115854	0	27	8 918 6729 227,    8  918 056 6747,   8 918 44 65 154	anapa-vanatur@yandex.ru	anapa-vanatur.ru	\N	230107528800	\N	309230115600056	353417, г. Анапа, п. Витязево, пер. ЛОК Витязь, 9	353417, г. Анапа, п. Витязево, пер. ЛОК Витязь, 9	9	\N	\N	\N	\N	1	\N	t	\N	0	В нескольких минутах от гостевого дома расположен  Спортивный Центр евро-уровня и самый крупный на юге России боулинг на 10 дорожек; курортный бульвар «Паралия» - центр развлечений и замечательный парк аттракционов «Византия»;  десятки кафе и ресторанов. Рядом также находятся санатории, бювет с минеральной водой, магазины, рынки, остановки транспорта.	0	1300	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	8	30	0	44.9943659999999994	37.2688369999999978	переулок ЛОК "Витязь"
755	Иванна	Гостевой дом расположен в центре поселка Джемете, на тихой тупиковой улице. Трехэтажное здание на 16 номеров и 4 коттеджа.	2012-08-31 13:16:37.199461	2012-11-07 08:55:10.964321	0	28	8 918 2145009, 8 909 4466105	\N	\N	\N	7728168971	\N	\N	353440, г. Анапа, п. Джемете, Юбилейный тупик, 10	353440, г. Анапа, п. Джемете, Юбилейный тупик, 10	10	\N	\N	\N	\N	1	\N	t	\N	0	Рядом расположены различные магазины, кафе, рынок	0	1400	12:00	Паспорт, свидетельство о рождении для ребенка.	10	4	0	17	0	44.9440460000000002	37.2976910000000004	Юбилейный тупик
620	У моря	Гостевой дом “У моря” – новый отель, открывший свои двери в 2011 году. Гостевой дом расположен у самого пляжа в курортном поселке Витязево.	2012-08-31 13:16:34.650653	2012-12-10 15:48:45.23999	0	27	8 918 4636633, 8 918 4947779	gostevoydom-y-morya@yandex.ru	\N	\N	7707083893	230102001	\N	353417, г. Анапа,  пос. Витязево, ул. Золотые пески, д.13	353417, г. Анапа,  пос. Витязево, ул. Золотые пески, д.13	13	\N	\N	\N	\N	1	\N	t	\N	0	Расположен напротив нового аквапарка Олимпия. В 5-ти минутах от гостевого дома находится курортный бульвар "Паралия" - это центр развлечений с развитой инфраструктурой: парикмахерские, продуктовые магазины, винные лавки, банкоматы, многочисленные кафе и рестораны, дискотеки, рынки, луна-парк с аттракционами и пр. Также в 5-ти минутах ходьбы расположен санаторий "Дюна" Оренбурггазпром, где при необходимости можно приобрести курсовку на лечение.	0	2000	12:00	Паспорт, свидетельство о рождении для ребенка	10	6	7	33	0	44.8975190000000026	37.3053450000000026	Золотые пески
1211	Парадиз	Гостевой дом «Парадиз» - современное трехэтажное здание с мансардой.	2012-10-31 10:48:06.751308	2012-11-01 08:09:21.757087	0	26	8-918-646-9338	paradise54@list.ru	\N	\N	540705558160	\N	\N	353417, г. Анапа,  пос. Витязево, проезд Южный, д. 28	353417, г. Анапа,  пос. Витязево, проезд Южный, д. 28	28	\N	\N	\N	\N	1	\N	t	\N	0	В непосредственной близости: рынок, центр развлечений «Паралия», а также многочисленные магазины, рестораны, бары и кафе.	0	1500	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	5	36	0	44.9895980000000009	37.2534399999999977	пр-т Южный
478	Хаят	Гостиница "Хаят" находится в центральной части города Анапа, на тихой улице Новороссийской. Построена в 2005 г. Представляет собой 4-х этажное здание. Работает круглогодично.	2012-08-31 13:16:32.167047	2012-11-23 11:56:54.830352	0	25	\N	pdn777@rambler.ru	\N	\N	\N	\N	\N	\N	\N	261	\N	\N	\N	\N	2	\N	t	\N	0	В 5-10 минутах ходьбы: продуктовый рынок, супермаркет "Магнит", круглосуточный магазин, аптека, 3D кинотеатр. Рядом развлечения для детей и взрослых: аквапарк, магазины, центральный рынок, кафе, бары, детский парк развлечений, рестораны, дискотеки, набережная.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	2	5	30	0	44.9000089999999972	37.3320790000000002	Новороссийская
709	Адельфи	Гостевой дом "Адельфи" представляет собой целый  гостинично-торговый комплекс и расположен в очень удобном месте в центре развлекательного проспекта - Паралии.	2012-08-31 13:16:36.262736	2012-10-31 08:41:50.319844	0	27	8  918 468 36 72, 8 918 667 32 35	adelfi-anapa@yandex.ru	adelfi-anapa.ru	маршрутное такси 114 (до ул.Горького) - пройти до Паралии- 5 минут; №134- остановка Паралия.	230101020248	\N	\N	353417, г. Анапа, п. Витязево, ул. Черноморская, 228-Б	353417, г. Анапа, п. Витязево, ул. Черноморская, 228-Б	228 Б	\N	\N	\N	\N	1	\N	t	\N	0	В радиусе 200 метров от гостевого дома располагаются самые популярные кафе, бары и рестораны Витязево. Рядом располагается множество аттракционом для детей, а всего в 300 метрах от гостевого дома находится знаменитый парк аттракционов "Византия". На 1-м этаже есть собственный продуктовый магазин, в 20 метрах - мини рынок. Рядом находится множество стоек экскурсионных бюро. В 500 метрах располагается конечная 23 автобуса, который курсирует по поселку Витязево, а у входа на Паралию - остановка 134 маршрутки, на которой можно доехать в Анапу.	600	1000	12:00	Паспорт, свидетельство о рождении для ребенка	10	4	0	14	0	44.8975190000000026	37.3053450000000026	Черноморская
1213	Диана	Гостевой дом "Диана" расположен в самом сердце курортного поселка Витязево на улице Черноморская, которая переходит в главную прогулочную улицу курорта Витязево – набережную «Паралию».	2012-11-07 10:01:30.871984	2012-11-07 10:01:30.871984	0	27	8 (918) 180-51-00, 8 (86133) 74-527	vityazevo-diana@ya.ru	vityazevo-diana.ru	\N	230100130784	\N	308230115000146	353417, г. Анапа, п. Витязево, ул. Черноморская, 204	353417, г. Анапа, п. Витязево, ул. Черноморская, 204	204	\N	\N	\N	\N	1	\N	t	\N	0	На первом этаже гостиницы работает большой винный магазин «Чары Диониса». Также рядом с домом работает продуктовый магазин.\r\nНедалеко расположены торговые ряды курортной продукции, рядом есть банкомат «РайффайзенБанк», аптека, автостоянка. в 100 метрах бульвар "Паралия".	0	700	12:00	Паспорт, свидетельство о рождении для ребенка	10	3	0	0	0	44.8975190000000026	37.3053450000000026	Черноморская
989	Боспор 3*	Комфортабельный 3-х звездочный отель «Боспор» открылся в мае 2005 года, расположен в спокойном месте города-курорта Анапа вдали от шумной набережной, на скалистом Высоком берегу.	2012-08-31 13:31:08.97627	2012-11-22 06:09:27.961846	0	25	8  (86133) 315-23,  3-16-24, 3-13-45	more@hotelbospor.ru	hotelbospor.ru	от аэропорта г. Анапа -  маршрутное такси №  113 до ост. «Автовокзал», далее м/такси № 9, 2, 24, 25 до ост. ул. Крепостная; \r\n\r\nот ж/д вокзала г. Анапа - маршрутное такси №  100 до ост. «Автовокзал», далее м/такси №9, 2, 24, 25 до ост. «ул. Крепостная». далее пешком 50 м до отеля "Боспор!	\N	\N	\N	\N	\N	1А	\N	\N	\N	\N	2	\N	t	\N	0	Расположен недалеко от старинного маяка,  соснового парка, и краеведческого музея.  Отель находится в 1,5 км от аквапарка "Золотой пляж" и Центрального парка развлечений. Также поблизости расположены: боулинг-клуб "Субмарина", развлекательный клуб .	0	0	12:00	Паспорт, свидетельство о рождении для ребенка	0	4	8	55	0	44.8885599999999982	37.2992810000000006	Крепостная
1220	София	Круглогодичный отель города Анапа "София" располагается на первой линии пионерского проспекта г-к Анапа. Отель предлагает своим посетителям обширный комплекс услуг включающий: проживание в комфортабельных номерах, питание в современной столовой, а также лечение на базе собственной медицинской части укомплектованной современным медицинским оборудованием, опытным и внимательным медицинским персоналом.	2012-11-22 07:51:35.775454	2012-11-22 09:47:16.953525	0	25	8 (86133) 3-35-75, 8 (988) 3204848	anapa-sofia@yandex.ru	anapa-sofia.ru	\N	\N	\N	\N	\N	\N	19 А	\N	\N	\N	\N	2	\N	t	\N	0	В шаговой доступности от отеля расположены новый Анапский дельфинарий.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	9	13	0	0	44.9233210000000014	37.3194749999999971	Пионерский проспект
1001	Континент	Отель “Континент” расположен в центральной части города-курорта Анапа на тихой удаленной от шума улице, и в то же время с транспортной доступностью в любую точку Анапы и Анапского района. Гостиница имеет небольшую закрытую территорию. Отель предназначен как для семейного отдыха с детьми так и для молодежного.	2012-08-31 13:31:09.281499	2012-12-06 09:18:29.467643	0	25	8 (86133) 42232	Nov_kontinent@mail.ru	anapa-continent.ru	от аэропорта г. Анапа- маршрутное такси № 113 до автовокзала, далее пройти пешком 5 минут до отеля\r\nот ж/д вокзала г. Анапа — маршрутное такси №100 до автовокзала, далее пройти пешком 5 минут до отеля.	\N	\N	\N	\N	\N	254	\N	\N	\N	\N	2	\N	t	\N	0	Недалеко от отеля находится: киноцентр “Мир кино” – 5 минут ходьбы, детский парк развлечений, аквапарк “Золотой пляж” и набережная – 15 минут ходьбы, а также другие достопримечательности Анапы. В 5 минутах есть остановка общественного транспорта. В районе хорошо развита инфраструктура: сеть продуктовых и вещевых магазинов, Центральный рынок, аптеки.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	9	22	0	44.8984450000000024	37.3295990000000018	Новороссийская
1003	Якорь	Отель «Якорь» расположен в центральной части курортного города Анапа. Это  современный 5-ти этажный корпус. В отеле ведут прием специалисты медицинского профиля: УЗИ, кардиолог, психотерапевт,  массажист.	2012-08-31 13:31:09.372012	2012-11-22 15:52:05.554409	0	25	8(86133) 3-05-10, 8(86133) 5-66-77, 8 918 0643949	anapa-5@mail.ru	yakor.z500.ru	От аэропорта г. Анапа маршрутным такси № 3 до автовокзала, от ж/д вокзала г. Анапа маршрутными такси №№ 10, 19 до автовокзала. От автовокзала автобусами №№ 2, 5, 6, 9, 18, 24 до ост. "Ул. Краснодарская".	\N	\N	\N	\N	\N	148 А	\N	\N	\N	\N	2	\N	t	\N	0	В непосредственной близости от развитой инфраструктуры города-курорта Анапа. На территории: продуктовый магазин, парикмахерская, автопарковка,  почта и телеграф в двух минутах ходьбы.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	14	9	41	0	44.8939049999999966	37.3194310000000016	Новороссийская
474	Чайка	Гостиница "Чайка" расположена на окраине города. Гостиница работает круглосуточно и круглогодично.\r\nЗаезд в гостиницу возможен в любой день, в любое время суток (при наличии свободных мест).	2012-08-31 13:16:32.084743	2012-11-23 07:03:29.767078	0	25	8 (86133) 5-66-77, 3-06-16,  (86133) 4-04-00	chayka_anapa@mail.ru	yakor.z500.ru	\N	\N	\N	\N	\N	\N	23	\N	\N	\N	\N	2	\N	t	\N	0	\N	0	0	12:00	Паспорт, свидетельство о рождении для детей.	0	1	5	21	0	44.8895369999999971	37.341700000000003	Мирная
998	Чайка	Находится в центре Анапы, работает с 2008 года.	2012-08-31 13:31:09.187788	2012-11-23 08:01:10.947838	0	25	8(918)482-28-18,  8(918)324-30-54	chayka@chayka.su	chayka.su	\N	\N	\N	\N	\N	\N	150	\N	\N	\N	\N	1	\N	t	\N	0	Неподалеку находятся: центральный городской парк, Театральная площадь, ЦНК "Родина", знаменитая "Летняя эстрада", кафе и рестораны, торговые центры. Удобная парковка, доступность общественного транспорта и близость к учреждениям связи (Главпочтамт, телеграф).	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	2	0	0	44.8940010000000029	37.3196640000000031	Новороссийская
1004	Нева	Отель Нева расположен в в центре города-курорта Анапа, в первой курортной зоне. Отель представляет собой современное 5-ти  этажное здание с благоустроенными номерами.	2012-08-31 13:31:09.39449	2012-12-19 13:19:26.137541	0	25	8(918) 43-62-399,8(86133) 46474, 8 918 3380639	\N	\N	\N	230101675903	\N	304230109700065	353433, город-курорт Анапа, с. Гайкодзор, ул. Зеленая, 27	353440, г. Анапа, ул. Новороссийская,177/ул. Красноармейская, 32	177	\N	\N	\N	\N	2	\N	t	\N	0	В нескольких минутах ходьбы находиться Центральный рынок.  Район имеет развитую инфраструктуру, близость к центральному прогулочному парку, песчаным пляжам и многочисленным развлекательным заведениям делает расположение отеля очень удобным. Рядом с отелем расположен круглосуточный продуктовый магазин.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	8	22	0	44.8968479999999985	37.3244520000000009	Новороссийская
1009	Евразия	Трехзвездочный отель «Евразия» находится  в самом центре города на берегу Черного моря. Из окон номеров отеля "Евразия"*** открывается великолепный вид на море. В отеле есть смотровая площадка, полностью оборудованная для отдыха . Отель принимает гостей круглогодично.	2012-08-31 13:31:09.829214	2012-11-23 13:26:47.511663	0	25	(86133) 20660, 31529, (86133) 39719	sale@hotel-evrazia.ru	hotel-evrazia.ru	от аэропорта г. Анапа: маршрутное такси № 113 до ост. «Автовокзал», далее маршрутным такси № 2, 7, 9, 24 до остановка «ДиЛуч», далее до отеля 5 мин. ходьбы; от ж/д вокзала г. Анапа: маршрутным такси № 100 до ост. «Автовокзал», далее маршрутным такси № 2, 7, 9, 24 до остановка «ДиЛуч», далее до отеля 5 мин. ходьбы	\N	\N	\N	\N	\N	1 И	\N	\N	\N	\N	2	\N	t	\N	0	Отель расположен в начале знаменитой Анапской набережной. В пешей доступности находится парк аттракционов, летняя эстрада, кафе, рестораны.  Отель находится непосредственно в близости к лечебной базе (50 метров).	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	12	0	0	44.8971099999999979	37.3042939999999987	переулок Кордонный
486	Ореховая роща	Отель «Ореховая роща» - является местом отдыха семейного типа. Он расположен на самом берегу черного моря. Гости отеля имеют возможность любоваться с балконов своих номеров великолепным видом на бескрайнее море, а также насладится красотой достопримечательности города – одноименным парком-отдыха «Ореховая роща».	2012-08-31 13:16:32.300792	2012-12-19 13:47:44.094603	0	25	8 (86133) 31758, 8 988 3332899	anaparosha@mail.ru	anapa-rosha.ru	От железнодорожного вокзала и от аэропорта г. Анапа – маршрутными такси N 3 и N 10 до ост. "Автовокзал", далее маршрутными такси N 1,10,24,25 до остановки "Ореховая роща", 7 минут пешком до отеля.	\N	\N	\N	\N	\N	4	\N	\N	\N	\N	2	\N	t	\N	0	По новой  курортной набережной в 15 минутах ходьбы находится развлекательная часть города.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	8	7	0	0	\N	\N	пер. Крутой
1052	Алые паруса	Отель расположен в центральной части курортной зоны города, на пересечении улиц Черноморская и Тургенева. Это комплекс трех и четырех этажных современных зданий, расположенных на территории зеленого и просторного внутреннего дворика.	2012-08-31 13:31:12.319257	2012-12-19 14:09:18.064531	0	25	8 (918) 333-88-06, 8 (918) 21-45-806	\N	anapa-parusa.ru	От ст. Тоннельная, от ж/д вокзала и аэропорта Анапы до автовокзала г. Анапы: маршрутное такси, автобус, такси. Далее – маршрутное такси N 1,7,10. От ж/д вокзала есть прямая маршрутка N 10. Остановка угол ул.Тургенева – ул. Черноморская.	\N	\N	\N	\N	\N	48	\N	\N	\N	\N	2	\N	t	\N	0	Для желающих получить оздоровительные процедуры или комплексное санаторное лечение, в 15 минутах ходьбы расположен крупнейший санаторно-курортный комплекс "ДиЛуч".\r\nРядом находится боулинг-клуб "Субмарина", ночные клубы и рестораны. Месторасположение отеля очень удачно вписывается в транспортную схему курорта, буквально в двух шагах остановки маршрутных такси.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	5	0	0	44.885826999999999	37.3114089999999976	Черноморская
593	Анапа-Нега	Пансионат "Анапа-Нега" расположен в центре города Анапа, в современном трехэтажном здании.	2012-08-31 13:16:34.131446	2012-11-29 11:56:50.504606	0	25	8 918 4820600, 8 86133 56063	anapa600@yandex.ru	anapa-nega.ru	\N	\N	\N	\N	\N	\N	252	\N	\N	\N	\N	2	\N	t	\N	0	Рядом центральный рынок, аквапарк, городской пак, мир кино 3D, кафе, магазины.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	6	5	25	0	44.8988790000000009	37.3335429999999988	Шевченко
587	Рузанна	Пансионат «Рузанна» находится в центре города-курорта Анапа. Пансионат «Рузанна» - это современное здание на 80 мест, как для организованного, так и для семейного отдыха.	2012-08-31 13:16:34.026646	2012-11-30 06:12:34.269336	0	25	8(86133) 30455; 8 918 6626658	ruzanna_anapa@mail.ru	ruzanna-anapa.ru	От аэропорта г. Анапа маршрутным такси № 113 до автовокзала, от ж/д вокзала г. Анапа маршрутными такси №№ 100, 129 до автовокзала. От автовокзала г. Анапа маршрутным такси №№ 7, 17, 111 до гостиницы.	\N	\N	\N	\N	\N	52 А	\N	\N	\N	\N	2	\N	t	\N	0	\N	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	2	5	27	0	44.8848240000000018	37.3118040000000022	Черноморская
1223	Де Париж	Отель «Де Париж» находится на тихой аллее по улице Терская в самом центре города-курорта Анапа, в первой курортной зоне. Открытие отеля состоялось в июне 2011 года.	2012-12-03 11:46:40.881603	2012-12-03 14:44:06.024355	0	25	8 (86133) 2-45-85, 8 (86133) 2-45-75	anapa052@mail.ru	\N	\N	\N	\N	\N	\N	\N	154	\N	\N	\N	\N	2	\N	t	\N	0	Рядом с отелем находятся центральный рынок, уютный сквер, кинотеатр, городской театр, аквапарк "Золотой пляж", ночной клуб, городской парк аттракционов, экскурсионные фирмы.\r\nВ двух шагах находится пиццерия "Виола", а также множество других ресторанчиков и столовых.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	8	0	0	0	44.8977229999999992	37.3226020000000034	Терская
1225	Лорис	Гостевой дом "Лорис" находится в первой курортной зоне, в 350 м от прекрасно оборудованного пляжа "Малая бухта".  Гостевой дом "Лорис" - новое здание, 2012 года постройки, оснащённое, согласно последним тенденциям организации гостиничного хозяйства.	2012-12-04 06:30:10.9086	2012-12-04 06:52:48.618215	0	25	8-985-115-03-09	anapa-loris@yandex.ru	anapa-loris.ru	\N	\N	\N	\N	\N	\N	22	\N	\N	\N	\N	2	\N	t	\N	0	Расстояние до центральной набережной составляет 400 метров. Археологический музей Анапы находится в 300 метрах от гостевого дома. Гостевой дом "Лорис" расположен в 300 метрах от морского порта Анапы.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	5	0	0	44.8928450000000012	37.3038269999999983	Калинина
1226	Олимп	Отель Олимп находится в курортной зоне города. Представляет собой четырехэтажное здание 2005 г. постройки.  Имеется смотровая площадка с видом на город.	2012-12-04 09:01:33.379912	2012-12-04 09:16:00.050567	0	25	\N	\N	\N	\N	\N	\N	\N	\N	\N	7 А	\N	\N	\N	\N	2	\N	t	\N	0	Отель находится на пешеходной улице Горького.\r\nРядом с отелем находится центральный пляж, большое количество ресторанов, кафе и баров. Недалеко расположен аквапарк, Набережная, овощной и вещевой рынки, городской парк,  автовокзал.\r\nНа первом этаже отеля расположены кофейня, сауна, банк, магазины, офис администрации.	\N	\N	12:00	Паспорт, свидетельство о рождении для ребенка.	0	0	5	33	0	44.8974869999999981	37.3188379999999995	Горького
1227	Золотая Бухта	Пляж-Отель “Золотая бухта” - один из самых роскошных и уютных отелей Черноморского побережья, который расположился на самом берегу моря. Состоит из 22 бунгало  - отдельно стоящих уютных домиков из соснового сруба.	2012-12-04 09:38:05.336867	2012-12-04 10:33:07.345407	0	25	8 (86133) 4-67-52	goldenbay-anapa@mail.ru	anapa-goldenbay.ru	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	t	\N	0	В шаговой доступности набережная, парк развлечений, многочисленные бары, рестораны, магазины и сувенирные лавки.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	5	15	22	0	\N	\N	\N
571	Иллиада	Гостевой дом «Иллиада» находится в тихом и уютном районе города Анапы.	2012-08-31 13:16:33.81524	2012-11-26 16:53:33.431369	0	25	8 (86133)32-436, 8 918 98-58-511, 8 (988) 3199777	anapa-illiada@mail.ru	anapa-illiada.ru	\N	\N	\N	\N	\N	\N	6	\N	\N	\N	\N	1	\N	t	\N	0	Вблизи гостевого дома есть продовольственные магазины, кафе и набережная.	0	0	12:00	Паспорт, медицинский страховой полис, документ, подтверждающий российское гражданство, свидетельство о рождении для ребенка.	0	4	6	33	0	\N	\N	Трудящихся
1222	Иллиада	Новый отель “Иллиада” открылся 15 июня 2012 года. Это современный отель представляющий собой 5-ти этажное здание с благоустроенной территорией.	2012-11-26 17:12:08.891997	2012-11-27 06:00:42.468414	0	26	8(918) 98-58-511, 8(988) 31-99-777, (86133) 3-24-36	otel-illiada@mail.ru	anapa-illiada.ru	\N	\N	\N	\N	\N	\N	221 А	\N	\N	\N	\N	2	\N	t	\N	0	В непосредственной близости от отеля расположены: спортивный комплекс, боулинг, санаторий ЛОК Витязь, бульвар Паралия.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	1	3	30	0	44.9506549999999976	37.3183349999999976	Мира
572	Фрегат	Гостевой дом представляет собой комплекс из 3-х и 5-ти этажных современных, уютных корпусов с номерами различной комфортности, состоящими из одной, двух и трех комнат. На территории комплекса есть каминный зал, бильярдная комната, уютные дворики с мангалом, барбекю.	2012-08-31 13:16:33.829046	2012-11-27 07:18:21.456458	0	25	8 (86133) 5-67-90; 8 (918) 664-05-30; (988)336-05-52;	fregat-anapa@mail.ru	fregat-anapa.ru	\N	\N	\N	\N	\N	\N	15/1	\N	\N	\N	\N	2	\N	t	\N	0	Гостевой дом «Фрегат» находится в центре курортной зоны Анапы, в 200 метрах от рынков, центров развлечений, аквапарка, детских аттракционов. В 15 минутах ходьбы от санатория "ДиЛуч", на базе которого можно пройти необходимое санаторно-курортное лечение.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	8	0	0	44.8901499999999984	37.3077430000000021	Черноморская
1030	Нормандия	Отель "Нормандия" новый 3-х этажный корпус 2006 года постройки. Современные комфортабельные номера различной категории от стандарта до апартаментов, стилизованные под Германию 19 века.   Отель находится за пределами жилого массива в непосредственной близости от прогулочного парка с зелеными насаждениями.	2012-08-31 13:31:11.171103	2012-11-27 08:37:51.502158	0	25	8 (86133) 30319, 3-07-66	\N	normandia-hotel.ru	от аэропорта "Анапа-Витязево" - маршрутным такси №3,\r\nот ж. д. станции "Анапа" - маршрутным такси №10\r\nдо остановки "Отель "Катамаран" на ул. Северная (отель "Нормандия" находится рядом с отелем "Катамаран").	\N	\N	\N	\N	\N	41 Г	\N	\N	\N	\N	2	\N	t	\N	0	Неподалеку находится автовокзал и Центральный рынок, в 20 минутах ходьбы  аквапарк "Золотой пляж". По пути на море расположен цирк и зоопарк.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	4	9	19	0	44.9039929999999998	37.3292489999999972	Северная
570	Симона-Гранд	Гостиница «Симона-Гранд» расположена недалеко от центра города Анапы на тихой улице.	2012-08-31 13:16:33.797125	2012-11-27 10:24:01.667142	0	25	8 (86133) 4-59-12, 8 918 48-77-156	\N	\N	\N	\N	\N	\N	\N	\N	32	\N	\N	\N	\N	2	\N	t	\N	0	До набережной и парка развлечений 15 минут ходьбы.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	5	0	0	44.8875770000000003	37.3190979999999968	Трудящихся
556	Метида	Расположен в районе "Высокого берега" с галечным пляжем, в двух минутах от ореховой рощи. у самого спуска к морю по улице 40 лет Победы. Здание состоит из 4-х этажей.	2012-08-31 13:16:33.478613	2012-11-28 07:59:49.213146	0	25	8-918-99-40-400, 8(86133)54722, 8(918)2357575	anapa-metida@yandex.ru	anapa-metida.ru	\N	\N	\N	\N	\N	\N	68 А	\N	\N	\N	\N	2	\N	t	\N	0	В 200 метрах от отеля «Метида» расположены транспортные маршруты всех направлений. В непосредственной близости от отеля нет скоростных автомобильных трасс, ночных дискотек, рынка и дыма мангалов, зато есть отделение Сбербанка, аптека, салон красоты, продуктовые и хозяйственные магазины (в пределах 300 м).	\N	\N	12:00	Паспорт, свидетельство о рождении для ребенка.	0	0	0	12	0	44.8794850000000025	37.3109859999999998	Таманская
550	Каприз	Гостевой дом "Каприз" - это современный комфортабельный дом, с озелененной территорией, на которой имеются джакузи и финская сауна.	2012-08-31 13:16:33.382812	2012-12-19 11:43:20.638945	0	25	8 (86133) 3-28-74, 8(918) 055-57-13	AnapaKapriZ@mail.ru	\N	\N	\N	\N	\N	\N	\N	88	\N	\N	\N	\N	2	\N	t	\N	0	Рядом спортивная игровая площадка, мини-маркет, кафе, аптека. В 5 минутах ходьбы располагаются различные рестораны. Центр боулинга и городской аквапарк находятся в 10 минутах ходьбы.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	3	18	0	44.8897419999999983	37.3257550000000009	Советская
1043	Ардо	Корпус мини-гостиницы «Ардо» расположен в тихом уютном уголке курорта Анапа, в первой курортной зоне. Отель представляет собой современное 4-этажное здание с внутренним двориком.	2012-08-31 13:31:11.939503	2012-11-28 08:37:03.598618	0	25	8 (86133) 3-06-24, 8 (918) 330-33-32	\N	\N	От ж/д вокзала: маршрутное такси № 100 до автовокзала, далее маршрутное такси №24, 25 до остановки «пересечение ул. Ивана Голубца и ул. Протапова», Отель «Ардо». От аэропорта: маршрутное такси № 113 до автовокзала, далее маршрутное такси №24, 25 до остановки «пересечение ул. Ивана Голубца и ул. Протапова», Отель «Ардо».	\N	\N	\N	\N	\N	41	\N	\N	\N	\N	2	\N	t	\N	0	500 метров от Набережной, парка культурыи отдыха с многочисленными атракционами, Аквапарка, санаторно-курортных учреждений «ДиЛуч», «Русь» и других.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	10	21	0	44.8882660000000016	37.3096749999999986	Черноморская
1051	Старый город	Отель расположен в старой части города-курорта Анапа, его курортном центре на Высоком берегу.	2012-08-31 13:31:12.21686	2012-11-28 12:52:58.157304	0	25	8-918-6457875	\N	anapaot.ru	маршрутное такси №113 от аэропорта до остановки «Крымская-Краснодарская», маршрутное такси №100 от ж/д вокзала до остановки «Крымская-Краснодарская», далее маршрутное такси №2, 9, 24, 25 до остановки «Ивана Голубца-Крепостная»; далее пешком 100 м до отеля "Старый город".	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	2	\N	t	\N	0	Рядом с отелем расположена анапская парковая аллея, где сегодня построены современные спортивные площадки – для большого тенниса, скейт-борда, детского игрового оборудования.\r\nРасстояние до серфинг-станции – 250 м, морского порта и яхт-клуба – 500м, центрального пляжа - 700 м, аквапарка «Золотой пляж» - 800м.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	4	38	0	\N	\N	Кирова
595	Высокий берег	Пансионат "Высокий берег" расположен в центре г. Анапа на берегу Малой бухты. Здание пансионата "Высокий берег" похоже на белоснежный парусник, с его высоты открывается изумительный вид на Малую бухту и панораму города. В пансионате "Высокий берег"  проводится лечение на базе санаториев "Надежда" и "ДиЛуч", расположенных в ста метрах от пансионата. Основной медицинский профиль пансионата "Высокий берег" - лечение заболеваний костно-мышечной системы, органов дыхания, органов пищеварения, системы кровообращения, нервной системы, эндокринной системы, заболевания мочеполовой системы, сахарный диабет.	2012-08-31 13:16:34.165391	2012-11-29 10:08:46.397145	0	25	8 (86133) 5-09-81, 5-06-77, 5-08-45	v_bereg@list.ru	анапа-вб.рф	: от аэропорта или ж/д вокзала Анапа и ж/д станции «Тоннельная» автобусами до городского автовокзала, далее автобусами или маршрутными такси №№ 2 , 9 , 24 , 25 до пансионата «Высокий берег» Анапа. При движении на автомобиле наиболее удобным будет маршрут при въезде со стороны ст. Анапская по ул. Астраханская до ул. Горького. Далее поворот налево до ул Ивана Голубца Анапа и поворот направо до пансионата "Высокий берег"	\N	\N	\N	\N	\N	2	\N	\N	\N	\N	2	\N	t	\N	0	Недалеко от пансионата расположен городской парк, морской порт, яхт клуб, бювет минеральной воды. Здание пансионата расположено рядом с набережной.	0	0	12:00	Паспорт,  медицинский страховой полис. Детям: свидетельство о рождении, справка о санэпидокружении, справка о прививках.	0	4	10	0	0	44.8930939999999978	37.3006019999999978	Ивана Голубца
1221	Южный	Пансионат «Южный» расположен в частном секторе города Анапа район Высокого берега. Состоит из одного трехэтажного капитального корпуса. Пансионат предназначен как для семейного отдыха с детьми так и для молодежного.	2012-11-26 10:06:20.196498	2012-12-19 13:59:17.928062	0	25	8 (86133) 5-02-19	pansionatug@mail.ru	juzhnyj.ru	От аэропорта "Анапа" доезжаем до автовокзала города Анапы маршрутным такси № 3, затем садимся на маршрутные такси №№ 1, 14, 10, 17 и доезжаем до остановки улицы Шевченко. От железнодорожного вокзала Анапы доезжаем до автовокзала Анапы маршрутным такси № 10, затем садимся на маршрутные такси №№ 1, 14, 10, 17 и доезжаем до остановки улицы Шевченко.	\N	\N	\N	\N	\N	24	\N	\N	\N	\N	2	\N	t	\N	0	Пансионат "Южный" расположен в трех кварталах от Театральной площади. Недалеко от пансионата находятся знаменитые центры – СКК "ДиЛУЧ" и БФО.  На территории пансионата «Южный» расположен Спортивно-развлекательный клуб «Субмарина».	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	5	10	0	0	44.8886690000000002	37.3117590000000021	Шевченко
1224	Горгиппия	Гостиница "Горгиппия" расположена в центральной части города Анапа. Представляет собой оригинальное 4-х этажное здание с уютными, комфортабельными номерами.	2012-12-03 14:55:11.770262	2012-12-03 15:31:56.94298	0	25	8 (86133) 4-54-45, 3-25-28	gorgippia@mail.ru	\N	От аэропорта г. Анапа маршрутным такси N 3 до остановки "Астраханская". От аэропорта Краснодар, ст.Тоннельная до городского автовокзала, далее любым маршрутным такси до остановки "Астраханская". От ж/д вокзала г. Анапа маршрутным такси N 10,19 до остановки "Астраханская".	\N	\N	\N	\N	\N	86	\N	\N	\N	\N	2	\N	t	\N	0	Рядом с гостиницей находится археологический музей. Также недалеко расположен рынок и много различных объектов отдыха и развлечений.	0	0	12:00	паспорт, свидетельство о рождении для ребенка.	0	9	4	0	0	44.8918740000000014	37.3130260000000007	Крымская
999	Парк-Отель 4*	Парк-Отель 4* расположен на  Центральной набережной города-курорта Анапа, в сосновом парке, в 20 м от моря. Современный 4* отель оригинальной архитектуры с комфортабельными номерами.	2012-08-31 13:31:09.214255	2012-12-04 12:03:55.846205	0	25	8(86133) 58-320, 8 (86133)58-322	hotel@park-hotel-anapa.com	park-hotel-anapa.com	От ж/д вокзала маршрутное такси № 100 до автовокзала, от аэропорта маршрутное такси № 113 до автовокзала, далее любым маршрутным такси до остановки Астраханская-Театральная площадь	\N	\N	\N	\N	\N	8	\N	\N	\N	\N	2	\N	t	\N	0	В шаговой доступности парк развлечений, аквапарк, ночные клубы, бары, кафе рестораны, магазины и сувенирные лавки.	0	0	12:00	паспорт, свидетельство о рождении для ребенка.	0	8	12	0	0	44.8963439999999991	37.3119739999999993	Набережная
597	Капитан 4*	Отель «Капитан» - современный гостиничный комплекс, выполненный в оригинальном архитектурном стиле, расположен на центральной набережной города-курорта Анапа. Отель «Капитан» имеет ряд преимуществ перед другими отелями города, одним из которых является то, что панорамными видами моря Вы можете наслаждаться не только из номера, но и из ресторана отеля «Капитан».	2012-08-31 13:16:34.203563	2012-12-04 14:32:17.324354	0	25	8 (86133) 3-97-96, 8 (86133) 3-98-06, (918) 994-69-29	hotel@anapakapitan.ru	anapakapitan.ru	\N	\N	\N	\N	\N	\N	3	\N	\N	\N	\N	2	\N	t	\N	0	Перед отелем – бухта со стоянкой яхт. Рядом – морской порт. Возможность совершать часовые морские прогулки на теплоходе. В непосредственной близости от отеля находится археологический музей «Горгиппия». До центра города – 10-15 минут неспешной ходьбы. В пяти минутах ходьбы находится главная площадь города — Театральна. А рядом — городской парк с многочисленными аттракционами;  аквапарк.	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	2	0	26	0	44.8964530000000011	37.3075639999999993	Набережная
1228	Дюрсо	Гостевой дом "Дюрсо" расположен у моря, на берегу живописной долины одноименной реки.	2012-12-18 08:32:57.892828	2012-12-18 09:03:59.81358	0	40	8 (918) 249-63-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	\N	t	\N	0	\N	0	0	12:00	Паспорт, свидетельство о рождении для ребенка.	0	3	0	0	0	44.7449969999999979	37.7415039999999991	СОТ "Дюрсо", поляна 3,4
987	Плаза 4*	Новый, современный отель «Плаза» 4-звезды, расположен в центре города-курорта Анапа.	2012-08-31 13:31:08.723688	2012-12-19 11:23:18.844222	0	25	8(86133) 2-22-55; 8(86133) 2-22-44	info@anapa-plaza.ru	anapa-plaza.ru	От аэропорта г.Анапа маршрутное такси № 113и ж/д вокзала г.Анапа - маршрутное такси № 100 до автовокзала, далее 100 м пешком до отеля «Плаза»	230100021400	\N	\N	353440, Россия, Краснодарский край, город-курорт Анапа, ул. Красноармейская, д. 10 б.	353440, Россия, Краснодарский край, город-курорт Анапа, ул. Красноармейская, д. 10 б.	10Б	\N	\N	\N	\N	2	\N	t	\N	0	Недалеко от отеля «Плаза» находится аквапарк, парк аттракционов, различные кафе и рестораны, потрясающая набережная и многое другое. Рядом автовокзал, Ценральный (продуктовый) и \r\nСеверный (вещевой) рынок. Прямо перед входом в отель «Плаза» расположен терминал «Сбербанка РФ», магазин одежды.	2500	3200	12:00	Паспорт, свидетельство о рождении для ребенка	20	4	9	37	0	44.9008010000000013	37.3209039999999987	Красноармейская
475	Старинная Анапа	Санаторий расположен в центре города-курорта Анапа, на набережной Черного моря. Санаторий «Старинная Анапа» - это 4-этажный корпус в котором сосредоточены номерной фонд, лечебная база, столовая, лобби-бар, что распологает к комфортному отдыху. Санаторий предлагает лечебно-профилактические процедуры позволяющие с помощью естественных природных факторов получить полноценное лечение и существенно улучшить самочувствие при многих заболеваниях.	2012-08-31 13:16:32.105007	2012-12-19 12:33:14.434949	0	25	8 (86133) 4-05-04, 4-38-48, 8 -800-200-8787	strn_anapa@mail.ru	starinnaya-anapa.ru	от аэропорта маршрутное такси № 113 до автовокзала, от ж/д вокзала маршрутное такси № 100 до автовокзала, от автовокзала маршрутное такси № 25,2,9 до остановки «Морской порт»; от ст. «Тоннельная» на такси до санатория.	2301061307	230101001	\N	353440,  Краснодарский край, город - курорт Анапа, ул. Набережная, д. 2	353440,  Краснодарский край, город - курорт Анапа, ул. Набережная, д. 2	2	\N	\N	\N	\N	2	\N	t	\N	3	В непосредственной близости от санатория находятся аквапарк, городской парк с детскими аттракционами, стадион водных видов спорта, музей-заповедник «Горгиппия», морской порт и концертный зал «Летняя Эстрада», где выступают звезды Российской эстрады. Рядом с санаторием сувенирный магазин, магазин пляжных принадлежностей, одежды, продуктов.	0	0	12:00	паспорт (свидетельство о рождении); страховой полис обязательного медицинского страхования; для отдыхающих с лечением санаторно-курортная карта; справка об эпидокружении (для детей); копия платёжного поручения;	0	6	14	88	0	44.8964530000000011	37.3075639999999993	Набережная
\.


--
-- Data for Name: hotels_bank_attributes; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY hotels_bank_attributes (id, hotel_id, name, bik, corr_account, current_account) FROM stdin;
\.


--
-- Data for Name: mercury_images; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY mercury_images (id, image_file_name, image_content_type, image_file_size, image_updated_at, created_at, updated_at) FROM stdin;
1	undefined	image/jpeg	536145	2012-06-05 13:08:55.344387	2012-06-05 13:08:58.007354	2012-06-05 13:08:58.007354
2	undefined	image/png	886	2012-06-05 13:09:32.056657	2012-06-05 13:09:32.416905	2012-06-05 13:09:32.416905
3	undefined	image/jpeg	42489	2012-06-05 13:21:48.30334	2012-06-05 13:21:48.637245	2012-06-05 13:21:48.637245
4	undefined	image/png	886	2012-06-06 04:31:40.644048	2012-06-06 04:31:40.91232	2012-06-06 04:31:40.91232
5	undefined	image/png	886	2012-06-06 05:08:26.21999	2012-06-06 05:08:26.474116	2012-06-06 05:08:26.474116
6	undefined	image/jpeg	57725	2012-06-10 04:50:33.733582	2012-06-10 04:50:34.124555	2012-06-10 04:50:34.124555
7	undefined	image/jpeg	57725	2012-06-10 05:14:36.915281	2012-06-10 05:14:37.189869	2012-06-10 05:14:37.189869
8	undefined	image/jpeg	242746	2012-06-10 05:52:52.566253	2012-06-10 05:52:53.46557	2012-06-10 05:52:53.46557
9	undefined	image/jpeg	242746	2012-06-10 05:53:14.324736	2012-06-10 05:53:14.712682	2012-06-10 05:53:14.712682
10	undefined	image/jpeg	42489	2012-06-10 11:05:43.503444	2012-06-10 11:05:45.835301	2012-06-10 11:05:45.835301
11	undefined	image/jpeg	57725	2012-06-10 12:56:05.967448	2012-06-10 12:56:06.291823	2012-06-10 12:56:06.291823
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY messages (id, user_id, ticket_id, text, edited, created_at, updated_at) FROM stdin;
309	51	162	Уважаемые, коллеги! прошу запросить наличие свободного номера с 12/12/12 по 13/13/13 при двухместном размещении	\N	2012-09-23 10:42:04.900999	2012-09-23 10:42:04.900999
\.


--
-- Data for Name: messages_have_read_users; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY messages_have_read_users (message_id, user_id) FROM stdin;
246	46
248	7
249	7
250	46
251	7
252	46
254	46
255	49
247	7
256	49
257	49
259	7
262	46
263	46
264	7
244	28
258	28
265	28
269	46
268	46
266	46
270	7
273	7
274	7
275	28
276	7
277	7
278	7
280	46
267	40
282	39
284	46
285	7
286	46
287	7
288	7
289	46
291	46
294	46
295	7
296	46
298	46
272	39
281	39
283	39
271	39
300	40
299	40
301	39
303	39
304	39
305	40
306	40
308	2
309	52
\.


--
-- Data for Name: messages_users; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY messages_users (id, user_id, message_id) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY pages (id, title, alias, content, created_at, updated_at, image_file_name, image_content_type, image_file_size, image_updated_at) FROM stdin;
1	Партнеры	partners	<p>Можно предположить, что политическое учение Аристотеля отражает авторитаризм, отмечает автор, цитируя К.Маркса и Ф.Энгельса. Субъект политического процесса традиционно представляет собой бихевиоризм, об этом прямо сказано в статье 2 Конституции РФ. Политическое учение Н. Макиавелли символизирует бихевиоризм, о чем писали такие авторы, как Н.Луман и П.Вирилио. Либерализм традиционен. Христианско-демократический национализм иллюстрирует системный кризис легитимности (отметим, что это особенно важно для гармонизации политических интересов и интеграции общества). Политическая культура символизирует континентально-европейский тип политической культуры, утверждает руководитель аппарата Правительства.</p><p>Кризис легитимности фактически иллюстрирует эмпирический англо-американский тип политической культуры, впрочем, это несколько расходится с концепцией Истона. Борьба демократических и олигархических тенденций, с другой стороны, категорически определяет референдум, отмечает автор, цитируя К.Маркса и Ф.Энгельса. По мнению Бакунина, идея правового государства теоретически символизирует гуманизм, отмечает Г.Алмонд. Конституционная демократия символизирует классический культ личности, что неминуемо повлечет эскалацию напряжения в стране. В ряде стран, среди которых наиболее показателен пример Франции, кризис легитимности вызывает бихевиоризм, впрочем, не все политологи разделяют это мнение. Понятие модернизации традиционно приводит элемент политического процесса, что получило отражение в трудах Михельса.</p>	2012-05-18 03:23:12	2012-05-18 03:23:12	\N	\N	\N	\N
2	Контакты	contacts	<p>Можно предположить, что политическое учение Аристотеля отражает авторитаризм, отмечает автор, цитируя К.Маркса и Ф.Энгельса. Субъект политического процесса традиционно представляет собой бихевиоризм, об этом прямо сказано в статье 2 Конституции РФ. Политическое учение Н. Макиавелли символизирует бихевиоризм, о чем писали такие авторы, как Н.Луман и П.Вирилио. Либерализм традиционен. Христианско-демократический национализм иллюстрирует системный кризис легитимности (отметим, что это особенно важно для гармонизации политических интересов и интеграции общества). Политическая культура символизирует континентально-европейский тип политической культуры, утверждает руководитель аппарата Правительства.</p><p>Кризис легитимности фактически иллюстрирует эмпирический англо-американский тип политической культуры, впрочем, это несколько расходится с концепцией Истона. Борьба демократических и олигархических тенденций, с другой стороны, категорически определяет референдум, отмечает автор, цитируя К.Маркса и Ф.Энгельса. По мнению Бакунина, идея правового государства теоретически символизирует гуманизм, отмечает Г.Алмонд. Конституционная демократия символизирует классический культ личности, что неминуемо повлечет эскалацию напряжения в стране. В ряде стран, среди которых наиболее показателен пример Франции, кризис легитимности вызывает бихевиоризм, впрочем, не все политологи разделяют это мнение. Понятие модернизации традиционно приводит элемент политического процесса, что получило отражение в трудах Михельса.</p>	2012-05-18 03:23:12	2012-05-18 03:23:12	\N	\N	\N	\N
113629430	Партнеры	partners	<p>Можно предположить, что политическое учение Аристотеля отражает авторитаризм, отмечает автор, цитируя К.Маркса и Ф.Энгельса. Субъект политического процесса традиционно представляет собой бихевиоризм, об этом прямо сказано в статье 2 Конституции РФ. Политическое учение Н. Макиавелли символизирует бихевиоризм, о чем писали такие авторы, как Н.Луман и П.Вирилио. Либерализм традиционен. Христианско-демократический национализм иллюстрирует системный кризис легитимности (отметим, что это особенно важно для гармонизации политических интересов и интеграции общества). Политическая культура символизирует континентально-европейский тип политической культуры, утверждает руководитель аппарата Правительства.</p><p>Кризис легитимности фактически иллюстрирует эмпирический англо-американский тип политической культуры, впрочем, это несколько расходится с концепцией Истона. Борьба демократических и олигархических тенденций, с другой стороны, категорически определяет референдум, отмечает автор, цитируя К.Маркса и Ф.Энгельса. По мнению Бакунина, идея правового государства теоретически символизирует гуманизм, отмечает Г.Алмонд. Конституционная демократия символизирует классический культ личности, что неминуемо повлечет эскалацию напряжения в стране. В ряде стран, среди которых наиболее показателен пример Франции, кризис легитимности вызывает бихевиоризм, впрочем, не все политологи разделяют это мнение. Понятие модернизации традиционно приводит элемент политического процесса, что получило отражение в трудах Михельса.</p>	2012-05-18 07:23:12	2012-05-18 07:23:12	\N	\N	\N	\N
281110143	Контакты	contacts	<p>Можно предположить, что политическое учение Аристотеля отражает авторитаризм, отмечает автор, цитируя К.Маркса и Ф.Энгельса. Субъект политического процесса традиционно представляет собой бихевиоризм, об этом прямо сказано в статье 2 Конституции РФ. Политическое учение Н. Макиавелли символизирует бихевиоризм, о чем писали такие авторы, как Н.Луман и П.Вирилио. Либерализм традиционен. Христианско-демократический национализм иллюстрирует системный кризис легитимности (отметим, что это особенно важно для гармонизации политических интересов и интеграции общества). Политическая культура символизирует континентально-европейский тип политической культуры, утверждает руководитель аппарата Правительства.</p><p>Кризис легитимности фактически иллюстрирует эмпирический англо-американский тип политической культуры, впрочем, это несколько расходится с концепцией Истона. Борьба демократических и олигархических тенденций, с другой стороны, категорически определяет референдум, отмечает автор, цитируя К.Маркса и Ф.Энгельса. По мнению Бакунина, идея правового государства теоретически символизирует гуманизм, отмечает Г.Алмонд. Конституционная демократия символизирует классический культ личности, что неминуемо повлечет эскалацию напряжения в стране. В ряде стран, среди которых наиболее показателен пример Франции, кризис легитимности вызывает бихевиоризм, впрочем, не все политологи разделяют это мнение. Понятие модернизации традиционно приводит элемент политического процесса, что получило отражение в трудах Михельса.</p>	2012-05-18 07:23:12	2012-05-18 07:23:12	\N	\N	\N	\N
3	Услуги	services		2012-05-18 03:23:12	2012-09-08 08:17:32.8867	Отсканированный-документ2.jpg	image/jpeg	49365	2012-08-18 08:15:56.239357
298486374	Услуги	services	<p>"Изумрудный город" предлагает:</p>	2012-05-18 07:23:12	2012-09-08 08:18:56.576934	\N	\N	\N	\N
4	О проекте	about	<p><strong>Вас приветствует туристический оператор &laquo;Изумрудный город&raquo;.</strong></p>\r\n<p><img style="float: right;" src="../../system/pages/images/000/000/004/medium/%D1%81%D1%83%D0%BA%D0%BA%D0%BE.JPG?1347091036" alt="%d1%81%d1%83%d0%ba%d0%ba%d0%be" width="474" height="305" /></p>\r\n<p style="text-align: left;"><br />В нашем каталоге представлены объекты курортной инфраструктуры, расположенные&nbsp;на Черноморском побережье.&nbsp;</p>\r\n<p style="text-align: left;">Мы постоянно расширяем спектр и количество, предлагаемых объектов отдыха. Специалисты компании &nbsp;подробнейшим образом изучают гостиницы:&nbsp;знакомятся со стандартами обслуживания, персоналом, изучают номерной фонд, ассортимент и качество предоставляемых услуг.</p>\r\n<p style="text-align: left;">После тщательного анализа, каждый новый продукт классифицируется и только после этого размещается в каталоге. <em><strong>Такой подход позволяет нам гарантировать заявленное в каталоге качество продукта</strong></em>.</p>\r\n<p style="text-align: left;">&nbsp;</p>\r\n<p style="text-align: left;">Для бронирования можно обращаться к нашим партнерам, контакты которых, находятся в разделе "<em>Партнеры</em>", либо непосредственно в наш офис:</p>\r\n<p><em><strong>353905, РФ, Краснодарский край, г.Новороссийск, ул.Энгельса, 73/75</strong></em></p>\r\n<p><em><strong>OOO "Изумрудный город"</strong></em></p>\r\n<p><em><br />тел.</em><strong> +7(8617) 67-62-23, &nbsp;67-62-24</strong></p>\r\n<p><em>e-mail:<strong>admin@emerald-world.ru </strong>(раздел "Контакты")</em></p>	2012-05-18 03:23:12	2012-09-28 06:34:16.537717	сукко.JPG	image/jpeg	249021	2012-09-08 07:59:01.285998
980190962	О компании	about	<p>Вас приветствует туристический оператор &laquo;Изумрудный город&raquo;</p>\r\n<p><img style="float: right;" src="../../system/pages/images/980/190/962/medium/%D1%81%D1%83%D0%BA%D0%BA%D0%BE.JPG?1347092974" alt="%d1%81%d1%83%d0%ba%d0%ba%d0%be" width="497" height="325" /><span style="text-align: justify;">Наш электронный каталог содержит большое количество объектов отдыха, расположенных на черноморском побережье. Абсолютно все гостиницы, информация о которых здесь находится прошли тщательнейший отбор. Наши специалисты обследовали номерной фонд, изучили стандарты обслуживания, познакомились с администрацией и определили степень интеграции объекта в&nbsp;</span><span style="text-align: justify;">существующую инфраструктуру. Только после этого, после анализа полученной информации, объект классифицировался и размещался в каталоге.</span></p>\r\n<p style="text-align: justify;">Такой подход позволяет нам гарантировать объективность заявленного качестсва каждой гостиницы.</p>\r\n<p><br class="Apple-interchange-newline" /><br /></p>	2012-05-18 07:23:12	2012-09-08 08:33:57.198546	сукко.JPG	image/jpeg	249021	2012-09-08 08:29:34.044918
\.


--
-- Data for Name: profile_notes; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY profile_notes (id, profile_id, user_id, text, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY profiles (id, name, phones, skype, icq, company_name, address, agreement, created_at, updated_at, user_id, description, logo_file_name, logo_content_type, logo_file_size, logo_updated_at, notified, city) FROM stdin;
1	Admin	Phones...	\N	\N	\N	\N	\N	2012-08-31 13:12:35.946727	2012-08-31 13:12:35.946727	1	\N	\N	\N	\N	\N	t	\N
2	Moderator	Phones...			\N	\N	324542642	2012-08-31 13:12:36.013818	2012-08-31 13:38:53.781362	2	\N	\N	\N	\N	\N	t	\N
57	Царукян Карина Андрониковна	+7 928 135 58 75			ООО "ТК "Время отдыхать!" (Уполномоченное агентство)	344006, г.Ростов-на-Дону, ул.Соколова, 21-23/19		2012-09-23 10:09:04.907824	2012-09-28 06:08:15.623444	51	\N	логотип_утвержденный.jpg	image/jpeg	13099	2012-09-28 06:06:54.670189	t	0Ростов-на-Дону
58	Пыникова Екатерина Александровна	+7(989)7687641			\N	\N	\N	2012-10-22 14:19:01.608523	2012-10-22 14:19:01.608523	52	\N	\N	\N	\N	\N	t	\N
3	Гость				Гостевой вход			2012-08-31 13:12:36.120203	2012-11-20 05:42:22.203729	3	\N	\N	\N	\N	\N	f	
\.


--
-- Data for Name: rooms_tickets; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY rooms_tickets (ticket_id, room_id) FROM stdin;
2	980190963
2	980190965
3	980190964
4	980190966
5	980190966
6	980190963
7	980190966
8	980190963
9	980190964
9	980190965
10	980190964
69	980190964
69	980190965
70	980190965
71	980190963
72	980190966
72	980190967
16	980190964
16	980190966
17	980190966
17	980190968
18	980190967
18	980190966
18	980190963
19	980190964
20	980190963
21	980190964
22	980190963
22	980190965
23	980190964
24	980190963
24	980190965
24	980190964
25	980190964
25	980190965
25	980190963
25	980190966
25	980190967
25	980190968
26	980190963
26	980190964
27	980190963
28	980190963
29	980190963
29	980190964
30	980190963
31	980190964
32	980190968
33	980190963
34	980190966
35	980190966
35	980190967
36	980190966
36	980190967
37	980190965
38	980190965
39	980190965
40	980190965
41	980190965
42	980190965
43	980190965
43	980190967
44	980190965
44	980190967
73	980190968
76	980190963
77	980190980
77	980190965
77	980190963
77	980190964
77	980190975
77	980190976
77	980190977
77	980190966
77	980190967
77	980190968
77	980190970
77	980190972
77	980190971
77	980190973
77	980190974
78	980190963
79	980190975
79	980190976
79	980190977
80	980190965
81	980190981
81	980190966
82	980190970
83	980190966
51	980190963
84	980190963
85	980190980
86	980190975
86	980190976
86	980190977
86	980190963
86	980190965
86	980190980
86	980190964
87	980190975
87	980190976
87	980190977
88	980190975
88	980190976
89	980190963
89	980190965
89	980190980
89	980190964
89	980190966
89	980190967
90	980190970
90	980190972
90	980190971
57	980190963
57	980190965
57	980190964
57	980190966
57	980190967
57	980190968
58	980190963
59	980190966
59	980190967
59	980190968
60	980190966
60	980190967
60	980190963
60	980190964
91	980190973
91	980190974
93	980190975
93	980190977
93	980190980
63	980190963
93	980190965
65	980190963
65	980190965
65	980190964
65	980190966
65	980190967
65	980190968
66	980190968
66	980190967
66	980190966
66	980190965
66	980190963
66	980190964
66	980190970
66	980190972
66	980190971
66	980190973
66	980190974
93	980190967
94	980190973
94	980190974
95	980190968
96	980190976
96	980190975
96	980190968
97	980190973
97	980190974
98	980190968
99	980190963
99	980190980
99	980190965
99	980190976
100	980190965
100	980190963
101	980190972
101	980190970
101	980190971
102	980190966
103	980190965
104	980190967
105	980190975
107	980190975
107	980190963
107	980190965
107	980190980
107	980190964
107	980190991
107	980190984
107	980190987
107	980190988
107	980190989
107	980190985
107	980190990
107	980190983
107	980190986
107	980190966
107	980190996
107	980190967
107	980190995
107	980190968
107	980190997
107	980190970
107	980190972
107	980190971
107	980190973
107	980190974
107	980190994
107	980190992
107	980190993
107	980190981
108	980190965
109	980190975
109	980190963
109	980190965
109	980190980
109	980190964
109	980190991
109	980190984
109	980190987
109	980190988
109	980190989
109	980190985
109	980190990
109	980190983
109	980190986
109	980190966
109	980190996
109	980190967
109	980190995
109	980190968
109	980190997
109	980190970
109	980190972
109	980190971
109	980190973
109	980190974
109	980190994
109	980190992
109	980190993
109	980190981
109	980190998
110	980190991
110	980190984
110	980190987
110	980190988
111	980190963
111	980190965
111	980190980
112	980190975
112	980190966
112	980190996
112	980190967
112	980190995
113	980190975
113	980190970
113	980190972
113	980190971
114	980190975
115	980190975
116	980190966
116	980190996
117	980190973
118	980190991
118	980190984
118	980190987
118	980190988
118	980190989
118	980190985
118	980190990
118	980190983
118	980190986
118	980190975
118	980190963
118	980190965
118	980190980
118	980190964
118	980190966
118	980190996
118	980190967
118	980190995
119	980190966
120	980190991
121	980190973
122	980190973
123	980190994
124	980190998
125	980190970
126	980190966
127	980190966
128	980190966
129	980190966
130	980190966
131	980190966
132	980190966
133	980190966
134	980190966
135	980190966
135	980190992
136	980190996
137	980190995
138	980190963
138	980190996
139	980190992
139	980190994
139	980190967
140	980190993
141	980190994
141	980190992
142	980190993
143	980190993
144	980190966
145	980190994
145	980190992
145	980190993
145	980190966
145	980190996
145	980190967
145	980190995
145	980190963
145	980190965
145	980190980
145	980190964
145	980190998
146	980191000
146	980190999
146	980190991
146	980190984
146	980190987
146	980190988
146	980190989
146	980190985
147	980191002
147	980191001
147	980191003
147	980191004
148	980191005
148	980190963
148	980190965
148	980190980
149	980191000
150	980191018
151	980190999
152	980191023
153	980191013
154	980191002
155	980191024
156	980191025
157	980191025
157	980191013
158	980191006
159	980190999
160	980191026
162	980191042
\.


--
-- Data for Name: rooms_users; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY rooms_users (user_id, room_id) FROM stdin;
34	980190967
34	980190964
34	980190963
32	980190968
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY schema_migrations (version) FROM stdin;
20120807115637
20120319223146
20120319222848
20120418145531
20120503145637
20120418004608
20120331214526
20120324160131
20120416182738
20120507130520
20120424210820
20120504160331
20120324105639
20120523191657
20120416102018
20120509080959
20120322021341
20120514102244
20120331220113
20120403180209
20120418073432
20120621130344
20120418082527
20120705110333
20120406171707
20120320105454
20120418012431
20120414095912
20120405154115
20120417052917
20120629110227
20120326142057
20120416130239
20120322142805
20120523191553
20120531083538
20120510065741
20120406185929
20120418073145
20120410003849
20120320011833
20120322023123
20120326142652
20120417193555
20120418074848
20120530075605
20120324111017
20120404013423
20120526105046
20120705092822
20120711235414
20120417202242
20120523134418
20120504053748
20120419085142
20120331132746
20120324110934
20120410003814
20120801110353
20120320015933
20120326151649
20120416092411
20120417204227
20120518085154
20120329121548
20120514141216
20120404013041
20120405233356
20120331205309
20120618124045
20120420135053
20120527195219
20120420132047
20120508113309
20120515124623
20120609051848
20120504150018
20120524144425
20120405140904
20120705142737
20120418074132
20120624153039
20120419045336
20120408114805
20120410020115
20120320012358
20120410000909
20120418004129
20120612153616
20120324110040
20120510081511
20120409034231
20120320012131
20120321003611
20120324110722
20120324110307
20120326151821
20120503133455
20120418092823
20120420131839
20120416102228
20120417231052
20120717141855
20120514102243
20120416103944
20120419080415
20120515085314
20120514130954
20120515093927
20120419084458
20120403231502
20120321223414
20120324110621
20120320100010
20120405225758
20120416114638
20120326153447
20120624154137
20120515095703
20120612101034
20120416225036
20120807115636
20120507131347
20120410015544
20120605095229
20120418005515
20120417053012
20120515171415
20120331133517
20120324110822
20120518101334
20120611101156
20120321215708
20120320110446
20120418092809
20120324153200
20120319224343
20120322141408
20120406184737
\.


--
-- Data for Name: simple_captcha_data; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY simple_captcha_data (id, key, value, created_at, updated_at) FROM stdin;
18	14d7a6c7adbdd6a77dcf0bba7aecbd4267a4e13f	LMVURD	2012-08-31 13:36:09.450416	2012-08-31 13:36:09.450416
19	5f6cde347f6f8d4ca588cfd5aa9899601ec92443	VXWNTI	2012-08-31 13:36:56.888674	2012-08-31 13:36:56.888674
20	834e4b1e968689a4c2de42955bdc1a42ff38a409	XPRXCP	2012-08-31 13:38:42.496602	2012-08-31 13:38:42.496602
21	66f0dc79982910e46cef49cf985df0eb6079e79c	YJOSXI	2012-09-08 06:20:48.488952	2012-09-08 06:20:48.488952
22	3d9344117af60ccccee6d92f54c396168117397d	MLVQHQ	2012-09-10 06:05:50.621666	2012-09-10 06:05:50.621666
23	71b903be6ac40016ff43ab4d4d37080c142c35bb	HWQZXO	2012-09-23 11:10:57.417859	2012-09-23 11:10:57.417859
24	9dcf2254af945f1ea1a6e6bcce3eba79adc440b8	ZWWQWA	2012-09-23 11:11:24.754719	2012-09-23 11:11:24.754719
25	abe278816c140b982c9a26ad6d039c9f7b2c6a08	ORPPZF	2012-09-28 06:13:05.272211	2012-09-28 06:13:05.272211
26	fe5a8b2642659df631c34846cde398f78b6c48a9	JNPBSQ	2012-09-28 06:28:03.086279	2012-09-28 06:28:03.086279
27	e972a3bb71f1656af2bc02a4d0adeb789a07096e	YDHOLR	2012-09-28 07:05:34.174298	2012-09-28 07:05:34.174298
28	ebc7db0181de69c6580d8b34a4404d926dce51f2	RYSUAI	2012-09-28 07:25:57.745824	2012-09-28 07:25:57.745824
29	6d393779002e1669e00c158238e918cecc481df3	DIJCQP	2012-09-28 08:35:53.640734	2012-09-28 08:35:53.640734
30	8020b74cc4d2a7a029b7b4408946af180988103c	OFHVXF	2012-09-28 08:37:20.370508	2012-09-28 08:37:20.370508
31	6d5eefbd01e75e21c70c3bad805c536e62555015	REXPPJ	2012-10-08 09:08:14.855377	2012-10-08 09:08:14.855377
32	fa423c3845ee4dd1970df2f778a1d57b1d55f57d	UEYTES	2012-10-09 05:27:53.08002	2012-10-09 05:27:53.08002
33	f090bcd04703a7a7e31d6009a2795f5a61364e85	EPSRUK	2012-10-09 11:24:33.560729	2012-10-09 11:24:33.560729
34	ed2522e5df7addcd2711f1e2c727286632c6774d	KIHYNF	2012-10-09 11:24:33.734539	2012-10-09 11:24:33.734539
35	a72df0a42161abedbf4f69e13112a560e8debd79	DLABAG	2012-10-13 04:06:22.107603	2012-10-13 04:06:22.107603
36	d5e3d5ee673ffd15d0a4fee59f6892d864623a32	NMXXLG	2012-10-17 15:57:33.495277	2012-10-17 15:57:33.495277
37	c572fa0dac43f1477eb900a75ffd64d11728ab28	YUDMYN	2012-10-18 12:23:24.771518	2012-10-18 12:23:24.771518
38	2f72f6c98c3496c296d2a547a89efa4d9b04c800	YTXWLB	2012-10-20 21:11:13.76097	2012-10-20 21:11:13.76097
39	d4a86187008f5a1f9fc18c56d3f23fe930ec2e65	FXLAYK	2012-10-22 07:06:14.036201	2012-10-22 07:06:14.036201
40	5b81aa0341cf257b33b4c57433b0efed194724b2	RLLOXK	2012-10-22 17:16:05.182894	2012-10-22 17:16:05.182894
41	433e03462a8091dc255a4a1888ff77e8fe1d952f	FFDRLD	2012-10-22 19:06:36.903996	2012-10-22 19:06:36.903996
42	7bbfdc642c98a66ff2df3d436d8b74676310f534	DQEHVG	2012-10-23 02:35:25.955791	2012-10-23 02:35:25.955791
43	182d39a0cee06296a273d27ee7e0371012413aaa	KNETBQ	2012-10-23 03:36:08.262037	2012-10-23 03:36:08.262037
44	ff06d8ba69e566cbaa75e65dd691e0fa15694a35	DTZGDI	2012-10-23 14:08:32.824849	2012-10-23 14:08:32.824849
45	028b4c5b98c714605553e2166859d00a7124245c	DSTEXK	2012-10-23 15:15:17.570062	2012-10-23 15:15:17.570062
46	4ff5573689d5410889d0692a148431b4d436dadd	OVTOGF	2012-10-23 17:46:41.115489	2012-10-23 17:46:41.115489
47	630b508ba28ca6aadf601af54d549b5adee937bb	UMOGET	2012-10-25 08:51:28.142863	2012-10-25 08:51:28.142863
48	849b2dceb144d271edf89e26e2c81dd72ac6e710	LWZGHV	2012-10-25 08:51:37.670071	2012-10-25 08:51:37.670071
49	97d06365192e7f49e892f07c889032b4c92b11fc	QDYPYI	2012-10-25 10:43:11.206269	2012-10-25 10:43:11.206269
50	d34e60989e5621131fc6d862b9f7e1b34c3d826e	XQYCMB	2012-10-30 15:18:08.997207	2012-10-30 15:18:08.997207
51	d20a49b7d8394dd2ba53704d565a947e61486bec	DAGWPB	2012-10-31 08:23:27.567397	2012-10-31 08:23:27.567397
52	77e3196795256b4599f2829ecd96a28e35c88a81	BUDRUP	2012-11-18 10:55:54.939527	2012-11-18 10:55:54.939527
53	03e4f64af85b901e679346ed2fc6f83e963c5278	IZKQRS	2012-11-22 07:56:28.115621	2012-11-22 07:56:28.115621
54	252d3bcf8a69565455a7f6dc8dfb8483ca05e4a9	JRHHRF	2012-11-23 17:12:34.603063	2012-11-23 17:12:34.603063
55	086e88114ad54ce2f7b2013eecc8aaa1821bcad6	HBMVSM	2012-11-25 05:26:08.56105	2012-11-25 05:26:08.56105
56	298538558fc26d099e3dc5ea349094678d6b6ae3	TMLYZV	2012-11-25 20:33:21.330665	2012-11-25 20:33:21.330665
57	3952664ebd364f5df2848f29407af62dfb772a48	FBLXIJ	2012-11-25 20:34:09.153893	2012-11-25 20:34:09.153893
58	c7f57285b49fe4a8658f2ad407a892e014e6bde2	MIIORT	2012-11-25 20:34:09.258517	2012-11-25 20:34:09.258517
59	208c072b5d9479fe7c658d79091f50e60b72ee69	JELMEK	2012-11-25 20:34:09.363727	2012-11-25 20:34:09.363727
60	6846611628defa33762f68fd0e08d8aef90619ca	ERGMXO	2012-11-25 20:34:09.460509	2012-11-25 20:34:09.460509
61	957be3a7ea478d51082df8ed4649f89dd972613e	FYSAQX	2012-11-25 20:34:09.565948	2012-11-25 20:34:09.565948
62	315ec3b33f725dc5423e12b225e2ccdfc630f096	KRJYLS	2012-11-25 20:34:09.762116	2012-11-25 20:34:09.762116
63	3e764d32a4aa54e2cb6cc09ed8bd168329502b65	NEVZYF	2012-11-25 20:34:09.897513	2012-11-25 20:34:09.897513
64	5dc0c1f2d098d71452768f11d41d64075df136c6	LLDTZB	2012-11-25 20:34:10.021087	2012-11-25 20:34:10.021087
65	fa569ef1f297fe54669bc99300fa47e59676ed25	XNALOF	2012-11-25 20:34:10.129981	2012-11-25 20:34:10.129981
66	367de0733aedd5ef4e03f5ecf80822f83252e635	CQXVLU	2012-11-25 20:34:10.268833	2012-11-25 20:34:10.268833
67	5cd39ee98d86317b92be816f76a1b198a5a22eee	JDQITA	2012-11-25 20:34:28.363513	2012-11-25 20:34:28.363513
68	1ebd6021edd7033605dde66568e1c49f2982cca1	AEEMXX	2012-11-25 20:34:28.546734	2012-11-25 20:34:28.546734
69	f79d60dc268f7c2c88d9e9dfb87d7285e3683140	LRCOLO	2012-11-25 20:34:28.776139	2012-11-25 20:34:28.776139
70	eb97c0853f8c0285e5417e50e4d3b0db50f58661	SDEHBM	2012-11-25 20:34:28.880788	2012-11-25 20:34:28.880788
71	a16323241abb66d5fff990c8d2cff428b533a100	PIGOMZ	2012-11-25 20:34:28.982142	2012-11-25 20:34:28.982142
72	fee3a5d1d3a598ba5df3863d7ee74e93610762dd	AVKFQP	2012-11-25 20:34:29.074802	2012-11-25 20:34:29.074802
73	f432c05fb6300a79f7d249b43fbe0ac1a96e484b	KJKODJ	2012-11-25 20:34:29.232882	2012-11-25 20:34:29.232882
74	8456542b91623457d808902b8dd3c3b688e55f7f	CSMDYV	2012-11-25 20:34:34.951359	2012-11-25 20:34:34.951359
75	4cf860a2c6c8a460987628aa92ecc6d75bf8de34	NAEIJR	2012-11-25 20:34:35.130494	2012-11-25 20:34:35.130494
76	1a50ebec780373ae67e2c9aaabc757d14e14854b	LPPVYG	2012-11-25 20:34:35.252886	2012-11-25 20:34:35.252886
77	6b2573632e5e1f4c05909856628a64446479b279	PTEADP	2012-11-25 20:34:35.365063	2012-11-25 20:34:35.365063
78	61df61b8c0a8b78de937fba5c88abd0fdaa657a3	DQGNYF	2012-11-25 20:34:35.516966	2012-11-25 20:34:35.516966
79	7872444b7298107dcc8afc4294ab2665ff23e427	SBIIOY	2012-11-25 20:34:35.698362	2012-11-25 20:34:35.698362
80	d36bc729d36f435e6f8fd468d5f857ad35fee115	FZCOLP	2012-11-25 20:34:41.285111	2012-11-25 20:34:41.285111
81	4a0afe69dccd9835244eb247ea9b12d83bcf78cf	XGIIED	2012-11-25 20:34:47.419593	2012-11-25 20:34:47.419593
82	0ce45c2776c4fbd9f7b0253e07fb03c5bf300459	DNYERM	2012-11-25 20:34:47.659347	2012-11-25 20:34:47.659347
83	02863bb8f44b0ba4c9925acd926ae0be6029d0cb	UPHKDD	2012-11-25 20:34:47.776417	2012-11-25 20:34:47.776417
84	416aa75ccc911eca9d9d08de9bf00f911070e830	XAUSJT	2012-11-25 20:34:53.869705	2012-11-25 20:34:53.869705
85	2e3f0a8181973edb2c2dc598263c3fbf5d2599ca	QBLGYJ	2012-11-25 20:34:53.990271	2012-11-25 20:34:53.990271
86	a886080a5ea2304b5f9081c66b8b08e99264db03	EUGEJW	2012-11-25 20:35:02.531267	2012-11-25 20:35:02.531267
87	06c5d10242f756f27e02e8a84b6322a762d4ff3c	DAHRUQ	2012-11-25 20:35:02.677644	2012-11-25 20:35:02.677644
88	acc872b12acb77dd7871ed60a41ffa1b6027bc4b	NGXTJL	2012-11-25 20:35:02.845178	2012-11-25 20:35:02.845178
89	76b4c0edd3753ae82f1045bb5875384bcdfdb7b9	DHZYXO	2012-11-25 20:35:02.96746	2012-11-25 20:35:02.96746
90	75dfb1812188450a0ee496337650098a5d2587a7	HCXWAU	2012-11-25 20:35:03.102538	2012-11-25 20:35:03.102538
91	a5e843db8ae9f233886b2ac2cbf81329c85364d5	NMQNIX	2012-11-25 20:35:03.214313	2012-11-25 20:35:03.214313
92	c610ad76c4ac395c3b6a68e6d421e61e9e2c9b71	SGCTJV	2012-11-25 20:35:03.385183	2012-11-25 20:35:03.385183
93	33f6720ce20f7df4b13ee882a353d517f313d27e	WURZQH	2012-11-25 20:35:03.484633	2012-11-25 20:35:03.484633
94	0064a4baa004add0224e882f6bfc96cc6dbca29c	EOGTEP	2012-11-25 20:35:03.649838	2012-11-25 20:35:03.649838
95	7c12d01313cbb6871f0ecd9d4d03d61fe0c04370	KYQVQW	2012-11-25 20:35:03.765601	2012-11-25 20:35:03.765601
96	79e90eeb3a3a15398d8b0cfb951366d340c4a645	MJSFOD	2012-11-25 20:35:03.868758	2012-11-25 20:35:03.868758
97	a9120925f59f100e0742c16963eb21ec578c62d6	CKGQCW	2012-11-25 20:35:04.12645	2012-11-25 20:35:04.12645
98	ebbbeac249a7f916e18104648e2e9a65a90a8beb	EGYZNH	2012-11-25 20:35:04.353947	2012-11-25 20:35:04.353947
99	a6e39243f0ddfae91df60c56f7a842e8f8ecbecd	YHGGVK	2012-11-25 20:35:04.531411	2012-11-25 20:35:04.531411
100	e7ebec38e4b195263a2bed4a6beeadb00efc5ae5	COFDAA	2012-11-25 20:35:04.630626	2012-11-25 20:35:04.630626
101	eb3c229962b6b0663f410f18d728e6b42bb38da3	DRSCJH	2012-11-25 20:35:04.74584	2012-11-25 20:35:04.74584
102	cb8695b0635af101fcbc9ca033b6451f23ddfb93	IPTAEN	2012-11-25 20:35:04.916232	2012-11-25 20:35:04.916232
103	ed886e27fbd6d5b4ea9e08420bc15e29cce94f7b	OVZCDB	2012-11-25 20:35:05.040765	2012-11-25 20:35:05.040765
104	6dc46c3c36dbd17d235fe793d374201675e9604c	KWAHJK	2012-11-25 20:35:05.223094	2012-11-25 20:35:05.223094
105	7e322db34f0941f120763d8f2f719ab8c2393613	AHQYKR	2012-11-25 20:35:05.374898	2012-11-25 20:35:05.374898
106	c87d5b4f533cbe66c0e1ce89f49838a53298199f	WKPFZM	2012-11-25 20:35:05.564158	2012-11-25 20:35:05.564158
107	3e869d6b110779fc32ada539692eb676efcc2dda	EJZCTM	2012-11-25 20:35:05.669776	2012-11-25 20:35:05.669776
108	c95c6aff3dde73ae2e3c94c24af9f7bfa6730748	LEKRQA	2012-11-25 20:35:05.770358	2012-11-25 20:35:05.770358
109	0fbb7fa78fc7078dc48d91b145fc8264f31bc85f	VMEMJF	2012-11-25 20:35:05.891411	2012-11-25 20:35:05.891411
110	9d563f120ff2c285d54039d0996415ab028677a4	XTFFVU	2012-11-25 20:35:06.002947	2012-11-25 20:35:06.002947
111	6000f36c9015d795932701d543d1f6cd715356e2	NCZJJQ	2012-11-25 20:35:06.267924	2012-11-25 20:35:06.267924
112	0198edb63dd88003c80d4d8b5786cb926f621ea0	FBUVOE	2012-11-25 20:35:06.399323	2012-11-25 20:35:06.399323
113	25a207d438a76189133f888ca9bcf71f0d64bf0b	RUYCGQ	2012-11-25 20:35:06.51794	2012-11-25 20:35:06.51794
114	51d13ad121bf8846494a82f67329aaeb61f2fc43	GZUUMN	2012-11-25 20:35:06.640518	2012-11-25 20:35:06.640518
115	ffd721bff7055d753501aeb29a1c3a45533c15bf	BGQOZZ	2012-11-25 20:35:06.773424	2012-11-25 20:35:06.773424
116	e8b029c0ecc727e30418936fbf90928ca60761fb	OAIRHK	2012-11-25 20:35:06.956901	2012-11-25 20:35:06.956901
117	d0b7c52a9a8acd5d0dda7441eb418255b34dd413	LWCMJX	2012-11-25 20:35:07.079605	2012-11-25 20:35:07.079605
118	2a1f30b24decebf4d89a3134c88c6b9db11e8958	IRHKAB	2012-11-25 20:35:07.177976	2012-11-25 20:35:07.177976
119	530975d3e0eb793f8d3713b2ce042cf460911368	RTDTHI	2012-11-25 20:35:07.282305	2012-11-25 20:35:07.282305
120	4467b419704ca9300d61be2ec4a79c3f304cb6e2	WTAWAZ	2012-11-25 23:58:11.74751	2012-11-25 23:58:11.74751
121	5fd61c21d3910807740debc5cf0daa4e1f0ce668	ZNOCIP	2012-11-28 10:19:00.642807	2012-11-28 10:19:00.642807
122	3a4a3374a05b81940791b6a06480881926028136	RJCDYF	2012-11-28 14:02:28.958061	2012-11-28 14:02:28.958061
123	c09dcf2aa77ce950e89f647e3ad11202e46f256b	PCERFA	2012-11-30 09:02:22.391899	2012-11-30 09:02:22.391899
124	1965599c825b0b0ca18403cf4c6dab6ee2219795	XURFHH	2012-12-10 21:32:34.077463	2012-12-10 21:32:34.077463
125	f4546c8d39302d9db7491eb5196c9887a2e1fef2	VHWQAN	2012-12-10 21:36:39.639428	2012-12-10 21:36:39.639428
126	21e2d3dcac593aa8f1fd686cb8605b1937d2c4d1	JTWPEZ	2012-12-10 21:36:40.868014	2012-12-10 21:36:40.868014
127	e0b93c792c53999720ec09332d76832ebf1ddb63	ZURRDV	2012-12-10 21:36:42.049867	2012-12-10 21:36:42.049867
128	3f844e95b32c4c09a6725942d0e5a16614bd213e	YVJFDZ	2012-12-10 21:36:43.051059	2012-12-10 21:36:43.051059
129	0c57ca159dfae19cad45f6853413fac94c7f30bc	SENZER	2012-12-10 21:36:44.067322	2012-12-10 21:36:44.067322
130	226b1a5257d2c1c94963a1752f82624ed11079db	CBQHFA	2012-12-10 21:36:45.261823	2012-12-10 21:36:45.261823
131	2c305c944d2a63897e5ab51973231f2d650192d8	LQLNDH	2012-12-10 21:36:45.75405	2012-12-10 21:36:45.75405
132	77b3381f4801008f52701aa605ea73b012e663df	ZGBWKA	2012-12-10 21:36:46.348251	2012-12-10 21:36:46.348251
133	4e3f53b2ead8226494bca11e5e36d8d46d0eee8a	RROTPQ	2012-12-10 21:38:17.233082	2012-12-10 21:38:17.233082
134	a95b2c083fd51f0896be89f6f3931791cfe247f8	UYYYJP	2012-12-10 21:38:17.578497	2012-12-10 21:38:17.578497
135	74a2446626962577197dd8ab0d53b393c68d412c	HRSAVR	2012-12-10 21:38:18.013035	2012-12-10 21:38:18.013035
136	08625c5434676dd81ea0c68610c0a3bd645be4ce	OTBOHW	2012-12-10 21:38:18.354765	2012-12-10 21:38:18.354765
137	f28a0f4b9ed853927215fd5f1a715ec5163b1acc	YREKUS	2012-12-10 21:38:18.775139	2012-12-10 21:38:18.775139
138	be1ed3098a71c3d291608a11ead5e062fd4605ff	AHNAXI	2012-12-10 21:38:38.318216	2012-12-10 21:38:38.318216
139	232904057fd2c6519befa416c1a31df3a52e90d7	WPUESW	2012-12-10 21:38:38.624835	2012-12-10 21:38:38.624835
140	831c6f94c27ba314205020ec1f618cb95282ea30	HVZGTH	2012-12-10 21:38:38.920891	2012-12-10 21:38:38.920891
141	838e465f25a8f59ce1f8c809e46f422850d3b11a	FKDTHE	2012-12-10 21:38:39.16827	2012-12-10 21:38:39.16827
142	f3fe2bd88d5d4e7a8c9cbc0fb57f37c0eb1071c0	YDXRWI	2012-12-10 21:38:39.411148	2012-12-10 21:38:39.411148
143	4fd827cb4ae08ee898814c0b29bae2ee3254d4fb	SQATGA	2012-12-10 21:38:39.650756	2012-12-10 21:38:39.650756
144	26eed45dfa99b6202112249e572b21d045b4a56d	FKYJFD	2012-12-10 21:38:40.073958	2012-12-10 21:38:40.073958
145	c14c47fe2f680e529eea2d3d903c0c45b9e77c77	UDEYDI	2012-12-10 21:38:58.053841	2012-12-10 21:38:58.053841
146	b6200d20e4ea509560cdc001405afd6ea921fd2d	VKTSJN	2012-12-10 21:38:58.430787	2012-12-10 21:38:58.430787
147	db967badff200c9ff5e91679a9ca2d0e3dfd58c3	MSOHDY	2012-12-10 21:39:16.048075	2012-12-10 21:39:16.048075
148	3ab36876bb21895293d53c49f58ddc311c52e4d4	IBAUYQ	2012-12-10 21:39:16.287777	2012-12-10 21:39:16.287777
149	f40ccab8191bcaa786e3bead4538285ee9ba4344	ECHIMW	2012-12-10 21:39:16.646002	2012-12-10 21:39:16.646002
150	ae14f3d1acf648de016e2c44286afd41b3cdf418	ZJVQNJ	2012-12-10 21:39:44.601369	2012-12-10 21:39:44.601369
151	561c4e123319c8af915c83fb56ed6d65f3933b43	XNSEQA	2012-12-10 21:39:44.987988	2012-12-10 21:39:44.987988
152	c614d943c388f3c4fa5c6fc7cef98b96b04de24b	QJDOQR	2012-12-10 21:40:26.937729	2012-12-10 21:40:26.937729
153	33da41692eb7695ee834b3c1542081d7b5d0986a	EUZLSA	2012-12-10 21:40:27.187302	2012-12-10 21:40:27.187302
154	a3f485a8b22ec77c17e1e60a830917f1ad28b9dd	YFBVCC	2012-12-10 21:40:27.466371	2012-12-10 21:40:27.466371
155	fd72a5f08c329fb5f540a7ff1754a6b234965f67	QNYJOU	2012-12-10 21:40:27.731454	2012-12-10 21:40:27.731454
156	09220b6c8823ca06babcf029af65eb4fbd69c099	WRICUM	2012-12-10 21:40:28.196492	2012-12-10 21:40:28.196492
157	be5ec74272488d6c986f0e178d3be2dcaa4a5f52	VCXWVV	2012-12-10 21:40:28.626551	2012-12-10 21:40:28.626551
158	a93df7b50f0b154244879eaf8ffa1740f44c8d10	TBXUDV	2012-12-10 21:40:28.884804	2012-12-10 21:40:28.884804
159	3a15306443e967b41aa9e16a5f998b1fb3a99dc1	WMKETG	2012-12-10 21:40:29.251967	2012-12-10 21:40:29.251967
160	8d8089c35ae24e9ec23f5ffd05ab13f65d0c6927	OLKPEC	2012-12-10 21:40:29.520402	2012-12-10 21:40:29.520402
161	caedf51a59eb4a3e7d2ee1ae8ab3a37c3fc16d57	MOXGKC	2012-12-10 21:40:29.73711	2012-12-10 21:40:29.73711
162	ca1c3dff17ee4136d9113ecb41f7557246ebd9cc	GXRCHN	2012-12-10 21:40:30.108452	2012-12-10 21:40:30.108452
163	2f0f2f5f9c61c681b4655ba5da27c89052b49780	MEPJEQ	2012-12-10 21:40:30.363121	2012-12-10 21:40:30.363121
164	5702468e601e76bd92a803f15a6e51eb23e37644	BYNXYO	2012-12-10 21:40:30.719739	2012-12-10 21:40:30.719739
165	79c93805a63411e439e9bfa7b6a04a82ce0250f8	CJYPOE	2012-12-10 21:40:31.022501	2012-12-10 21:40:31.022501
166	ad07d9cb3f6fb2b2ed6682b9e7b699ee1c1d54bc	RZWRGS	2012-12-10 21:40:31.306074	2012-12-10 21:40:31.306074
167	7b4d0ca020d14a5715d1f595bf2327a78fcfaf82	SSRDMX	2012-12-10 21:40:31.751166	2012-12-10 21:40:31.751166
168	b278f627cb6382720d517c276834479673327b63	ITYTWY	2012-12-10 21:40:32.001454	2012-12-10 21:40:32.001454
169	23ed425960cea702ed905385a31018e26e84b952	MVNFXZ	2012-12-10 21:40:32.296292	2012-12-10 21:40:32.296292
170	ceaa739e632c3c4f67a98d3165f934daf4a5b9c2	FLGASE	2012-12-10 21:40:32.576907	2012-12-10 21:40:32.576907
171	60b1c2b247e09badaacd27897ea6feb76321fef0	SNPWOF	2012-12-10 21:40:32.959659	2012-12-10 21:40:32.959659
172	71441157d70d0771af6dbf8c32ada963adae522a	YBUVVN	2012-12-10 21:40:33.39696	2012-12-10 21:40:33.39696
173	c2a753eb45aad330654646e3a27a37db9407fb0c	MMWQXN	2012-12-10 21:40:33.629099	2012-12-10 21:40:33.629099
174	aca759f9bb6422153d5381bac1c06d9890c43505	ZGTTWK	2012-12-10 21:40:34.035125	2012-12-10 21:40:34.035125
175	49adbf3704f126f1ccf1ea39bf2940291aba6325	VWZLPS	2012-12-10 21:40:34.251987	2012-12-10 21:40:34.251987
176	be68bd34492ef574e40ec5e60216fa0e3d033e92	MZHBBD	2012-12-10 21:40:34.556752	2012-12-10 21:40:34.556752
177	ea85e0731b146c5ea7592bddd73df84fc6ccf33b	VGKSOZ	2012-12-10 21:40:34.791996	2012-12-10 21:40:34.791996
178	c41543fd6a615a91977245e9c87cf3939f7ff0cc	TRCLBM	2012-12-10 21:40:35.144456	2012-12-10 21:40:35.144456
179	ea4faa6140a48fc407b5dd21ec7fb5659e95673f	FLSEPV	2012-12-10 21:40:35.447415	2012-12-10 21:40:35.447415
180	84d11e0b90297b633fbf11968c2e8d831f4d5a47	QEGYJU	2012-12-10 21:40:35.773074	2012-12-10 21:40:35.773074
181	8e7c7fe821c95b4d539373db8c904d73eba8e113	NDYHXL	2012-12-10 21:40:36.047848	2012-12-10 21:40:36.047848
182	4b5a3d2771b067045051cdda4cb9aba0f85bcf6b	GEVQTW	2012-12-10 21:40:36.390803	2012-12-10 21:40:36.390803
183	b40248cda430a99f6e076b7e5571fa950e2b35f4	FBKFIP	2012-12-10 21:40:36.687243	2012-12-10 21:40:36.687243
184	3a7dcb7ed2b1bc956e7e1bea4592ab253c28cca5	NCECLN	2012-12-10 21:40:36.995762	2012-12-10 21:40:36.995762
185	463206b9307ba62c4fad8d6e944f722cafe7134b	GXENHX	2012-12-10 21:40:37.225421	2012-12-10 21:40:37.225421
186	037a1de59a6f7f37d16bbc569d22c04acd0cbbf6	VOKCSR	2012-12-10 21:40:37.461491	2012-12-10 21:40:37.461491
187	ec103bfd168c2379763883e112dd18212a9a44cb	UFCMZG	2012-12-10 21:40:37.766051	2012-12-10 21:40:37.766051
188	79cdf99ad5f7bbeaf2ed8fdff73e01ba8440ca86	ALRSKQ	2012-12-10 21:40:38.080597	2012-12-10 21:40:38.080597
189	0990ae541d89a81ffd51019748f5e1c4fc106be9	WPGELG	2012-12-11 17:34:08.266337	2012-12-11 17:34:08.266337
190	0cf3cb0dcaafc942e1267ae7f4c395589eba3cd5	WDAKPU	2012-12-11 17:37:35.528419	2012-12-11 17:37:35.528419
191	e3d4916bb66892fff5a1d9e57ea92bc054ad0bb2	KVEMLY	2012-12-11 17:37:36.012405	2012-12-11 17:37:36.012405
192	9e8a6d34d50eb4c000189c011f366463ead757fe	SJRJZY	2012-12-11 17:37:36.457267	2012-12-11 17:37:36.457267
193	be06e1f09cd1047a6b1e961814963e8d584c8d61	AWJWYQ	2012-12-11 17:37:36.860405	2012-12-11 17:37:36.860405
194	dab19d7d7eec30fd00ae60412b18d9e0e24b0ac6	VENCHK	2012-12-11 17:37:37.230651	2012-12-11 17:37:37.230651
195	baa91b43b97ce05382a5e7e8bb463211d7f6ad99	WWABEU	2012-12-11 17:37:37.645166	2012-12-11 17:37:37.645166
196	ec71905dc59d3fffc34654040a54702d1fc9cefa	HRELYJ	2012-12-11 17:37:38.218784	2012-12-11 17:37:38.218784
197	d1a530288e5590bc1099986dcd15282e89d5cd9d	ZICTCD	2012-12-11 17:37:38.648284	2012-12-11 17:37:38.648284
198	dceecefa78305c8f74873f8d735e6f51c22bac8a	PDYOTF	2012-12-11 17:38:57.202283	2012-12-11 17:38:57.202283
199	1eeb38d20b2825a6679ed4369399dd13986339cf	UJWKJN	2012-12-11 17:38:57.571907	2012-12-11 17:38:57.571907
200	542cd79d8d5dab8402b1420eee37f2bbce099c64	RKZLYI	2012-12-11 17:38:57.994065	2012-12-11 17:38:57.994065
201	f99c4fc5a6592e334cf5c5734f769baf0b41c12b	DKNYYQ	2012-12-11 17:38:58.208125	2012-12-11 17:38:58.208125
202	bfe1c2356fb97a2050f68f56ce6471d86d9b7806	PQXORJ	2012-12-11 17:38:58.943559	2012-12-11 17:38:58.943559
203	134c89bcc4e6b8201c29ecd5aea58919b09a9ee6	VDGJEK	2012-12-11 17:39:23.949965	2012-12-11 17:39:23.949965
204	619c8689811eab3f7b6f911558ad78eb49e5f830	WRTKBL	2012-12-11 17:39:24.523659	2012-12-11 17:39:24.523659
205	67e298b939f51b4aff48b701622175c2ba945628	QFTOYY	2012-12-11 17:39:24.983292	2012-12-11 17:39:24.983292
206	6ae2eb9a8338798220573d92ba621eaae1900beb	VZXVLZ	2012-12-11 17:39:25.460491	2012-12-11 17:39:25.460491
207	fa4086a27f90bce2349339150209e1af41f42e2a	IFGFXJ	2012-12-11 17:39:25.894144	2012-12-11 17:39:25.894144
208	81e73482b6513be98fcd47e3a2b74f72dd109692	KJVEQM	2012-12-11 17:39:26.372785	2012-12-11 17:39:26.372785
209	a855d165fa9d8ece9bb8521ebfdbd5fb06e80e29	SRADEC	2012-12-11 17:39:26.719555	2012-12-11 17:39:26.719555
210	7bcb9aab001d217f4bfe67c87a5d059f3ba7f280	TKLNQH	2012-12-11 17:39:56.771586	2012-12-11 17:39:56.771586
211	e2c020d47eb2b27ef235a0b922a493517ef70cce	QLSXJX	2012-12-11 17:39:57.43556	2012-12-11 17:39:57.43556
212	607b0a64fc2c726012a419e6d2c17cdc4bd590df	AJLWCU	2012-12-11 17:40:25.226298	2012-12-11 17:40:25.226298
213	418d6884f5ce186648a33993c1e40bbfc2acaae3	LEEXTI	2012-12-11 17:40:25.855533	2012-12-11 17:40:25.855533
214	4e0523606e861a674a5fb3accff1f1d353b2fc53	FYEWIN	2012-12-11 17:40:26.297906	2012-12-11 17:40:26.297906
215	1c3a5e035df260c75c9689f9387694e02014603d	DELOSX	2012-12-11 17:40:51.209488	2012-12-11 17:40:51.209488
216	432339fc7d8c5868889fd3bfeb286a25c4815678	IWZUUL	2012-12-11 17:40:51.568206	2012-12-11 17:40:51.568206
217	147e67767ca52a45b098d05ab45133c712bb92a3	LUOWML	2012-12-11 17:41:26.919486	2012-12-11 17:41:26.919486
218	5d45b2cf0584cd95cc74c36b69f1bc188fb0ce94	XMDMOV	2012-12-11 17:41:27.18061	2012-12-11 17:41:27.18061
219	2841e0e9b6bb50aab80f74ac5fa5a579988456e0	ATPSCN	2012-12-11 17:41:28.524652	2012-12-11 17:41:28.524652
220	e04483d8dfa69e2005eb87ea4f95d99bebd4650b	ROIIJR	2012-12-11 17:41:28.882423	2012-12-11 17:41:28.882423
221	8ef0c038d63faf90d624af49358067424e4b5ac0	KGOUMF	2012-12-11 17:41:29.303806	2012-12-11 17:41:29.303806
222	0c9f70a6d5421bff24f1927f3fffc5d0940ea59b	TCUJYQ	2012-12-11 17:41:29.899614	2012-12-11 17:41:29.899614
223	2fa149ce3c901a2f14224d6d3eab6c6196265bab	BRVXWG	2012-12-11 17:41:30.33697	2012-12-11 17:41:30.33697
224	89ab80f6af1ad08fda79f0c0b1a1e6bddc2eabbd	NLIVFY	2012-12-11 17:41:30.757846	2012-12-11 17:41:30.757846
225	5c0a040171accdc16e266dff05a09cdfaf0c2e22	NISDGI	2012-12-11 17:41:31.204157	2012-12-11 17:41:31.204157
226	b924e47691ef59947c0caa95da1035dcdd3385a4	BJKIYM	2012-12-11 17:41:31.648069	2012-12-11 17:41:31.648069
227	cb6c014e4e0348180f9947be676f1d573d44b749	BYHJBS	2012-12-11 17:41:32.111493	2012-12-11 17:41:32.111493
228	a6e0237883af0d152d848ae4c79be0f8e6336d3f	PRFOHL	2012-12-11 17:41:32.782535	2012-12-11 17:41:32.782535
229	3927b66ddbefa0bb08206af9ba3eec6eb08ebaec	SVWXRG	2012-12-11 17:41:33.15544	2012-12-11 17:41:33.15544
230	fc0d5a5b70dbadb3db3fb6b28196d47372259401	IZOYFD	2012-12-11 17:41:33.716605	2012-12-11 17:41:33.716605
231	33c1cb72fa8d3ea4b93d76c87b912c0f8d66c7fb	ELWZAR	2012-12-11 17:41:34.079252	2012-12-11 17:41:34.079252
232	16dbcc7b7bc14d6c6a079849bb50d41bb1d5968d	BYVRHV	2012-12-11 17:41:34.474951	2012-12-11 17:41:34.474951
233	dec86753483a6179f0156e7888199330f65048ec	JRTVWJ	2012-12-11 17:41:35.041518	2012-12-11 17:41:35.041518
234	f5334a896bd721d35efc731366d6b571a64b2553	IOCRDI	2012-12-11 17:41:35.435752	2012-12-11 17:41:35.435752
235	ba0e000156ef4f077265a430815ea647f38f8e50	DEWCRV	2012-12-11 17:41:36.164458	2012-12-11 17:41:36.164458
236	043e4ecd2465663fec680b7110fde820ef47dca4	HWKGOQ	2012-12-11 17:41:36.625562	2012-12-11 17:41:36.625562
237	131f4cedc3ff99f706f28fd77d37534ab4df7e37	GWOBHW	2012-12-11 17:41:37.053485	2012-12-11 17:41:37.053485
238	4e89dc9ce68aa3a93da948321e94adb94fa0e3b9	NHJMWM	2012-12-11 17:41:37.537576	2012-12-11 17:41:37.537576
239	b9d653b736801663393a82ddf4c7243f139ca45c	CEQPSA	2012-12-11 17:41:37.955201	2012-12-11 17:41:37.955201
240	b81daff7d5decec1f4846e1b121f89f62c94a20c	KCLGBG	2012-12-11 17:41:38.387163	2012-12-11 17:41:38.387163
241	91d8f80451505a0a89eecdcca16c6e42a412535d	EYALZJ	2012-12-11 17:41:38.758182	2012-12-11 17:41:38.758182
242	652e2811f0b308bbb75aada0a7a99aeccecf04a6	LJSFFQ	2012-12-11 17:41:39.112323	2012-12-11 17:41:39.112323
243	254a3669cf3283e5c5b13387eb4a7840939b87a9	KJEQRH	2012-12-11 17:41:39.553428	2012-12-11 17:41:39.553428
244	de3897c0c73f35ece942c9689c92dea3ab5458e3	GRHGTW	2012-12-11 17:41:39.970058	2012-12-11 17:41:39.970058
245	f49b95eacf6a077fe2e559948b96771fa423c9d5	OQBBBJ	2012-12-11 17:41:40.407444	2012-12-11 17:41:40.407444
246	108147bbb790e2f4f763db801d7c1bf593e3a657	OQVFJN	2012-12-11 17:41:40.895657	2012-12-11 17:41:40.895657
247	9f07ac6f3d8a909aa0cf0d0f22888a828d966269	UAHCGM	2012-12-11 17:41:42.349881	2012-12-11 17:41:42.349881
248	5189e2f52c1b215e1e6c1b5f51b8917969d95666	QEOTNQ	2012-12-11 17:41:43.001435	2012-12-11 17:41:43.001435
249	49ac7c66709d83283e5371e3e1370d69ab09f9e8	FZNIUL	2012-12-11 17:41:43.531405	2012-12-11 17:41:43.531405
250	e3e758bd0fad6c331945c773688a302c12f8fb56	CLOGQF	2012-12-11 17:41:44.064254	2012-12-11 17:41:44.064254
251	65d7529df3a08db2296d113d263cd5ce4cd15309	BTZSCN	2012-12-11 17:41:44.463658	2012-12-11 17:41:44.463658
252	bc8c40c0d6c64db09c8bf8e500b78fad0f399fbc	TUBCAI	2012-12-11 17:41:45.014493	2012-12-11 17:41:45.014493
253	09e666459e54adb147c37846cf61fd62fa6085d3	DFYZDI	2012-12-11 17:41:45.50122	2012-12-11 17:41:45.50122
254	d5a2e693f2ff910c5a0dbba76d098dcbfc095342	DGNGGP	2012-12-12 16:02:53.042012	2012-12-12 16:02:53.042012
255	d8a66372c48b56365c820a567d26f5742e0657fc	MHSMUJ	2012-12-12 16:06:58.59904	2012-12-12 16:06:58.59904
256	a96ef1906acb61ca8399ab41f527c4fad53a5a92	RWAKTJ	2012-12-12 16:06:59.29388	2012-12-12 16:06:59.29388
257	4a359d745f58bb90308e50b90e24201f0a45e3e3	JIYFAN	2012-12-12 16:06:59.86083	2012-12-12 16:06:59.86083
258	bf0153905daa984acd901a80ae08c66febf6d638	AJWKIO	2012-12-12 16:07:00.48354	2012-12-12 16:07:00.48354
259	252b24cf37cc9275a600d36cf80ba8cb027943bd	GWIORI	2012-12-12 16:07:00.969053	2012-12-12 16:07:00.969053
260	b4195c67b3546b6dcde940c91a02385473aa2d57	MEVYXV	2012-12-12 16:07:02.067249	2012-12-12 16:07:02.067249
261	261a6eef531e58adf04193c3eb1ee27d4555164e	UFCZBW	2012-12-12 16:07:03.259308	2012-12-12 16:07:03.259308
262	aed6180924324c4caaff8b548bd4e3726e07934c	NCMIHK	2012-12-12 16:07:04.324385	2012-12-12 16:07:04.324385
263	638b97f2c31c6388d6c6f681ffa67989ed3ce106	FJHMMN	2012-12-12 16:08:14.074629	2012-12-12 16:08:14.074629
264	efc454ab8b9ba80cddcd19f6417689e1286b5706	YAZSPS	2012-12-12 16:08:14.41445	2012-12-12 16:08:14.41445
265	b101ed61588275f96bdf9c69da39edc9ad432145	FCTSHP	2012-12-12 16:08:14.734902	2012-12-12 16:08:14.734902
266	1399225b5c2e2d7117be3838f0b3fb23959bb59a	HXBZAU	2012-12-12 16:08:15.127245	2012-12-12 16:08:15.127245
267	c4bd10b40b45c4c14643e98833af8cc9b21e7e44	BELTLZ	2012-12-12 16:08:15.442372	2012-12-12 16:08:15.442372
268	6bc33e17172d2ddf1a4d847dd11aa26dfbdfa2a0	YXRBMG	2012-12-12 16:08:42.649114	2012-12-12 16:08:42.649114
269	18087b5453fd339514361a4eeac4c8fd3c61d899	XYFYGV	2012-12-12 16:08:43.069026	2012-12-12 16:08:43.069026
270	5f64138e6c5f16c5555ca1559f6fcaf6afb2dad0	VXJTUI	2012-12-12 16:08:43.757037	2012-12-12 16:08:43.757037
271	354f2db0da71723c672e0814edb30025c49dce60	WISRAB	2012-12-12 16:08:44.202695	2012-12-12 16:08:44.202695
272	42c0883b54e07941908672a92bd6ec4d8d4af6f7	OYIQEK	2012-12-12 16:08:45.009255	2012-12-12 16:08:45.009255
273	62e0f2b19c4e5b9f1f91f856840fde4009446d8f	GBMKHH	2012-12-12 16:08:45.413305	2012-12-12 16:08:45.413305
274	10ff73249d4ffea0b9199b3d3657ea2362b5662c	FXJPDG	2012-12-12 16:08:45.869324	2012-12-12 16:08:45.869324
275	dce3785ff8033f67badd44fa0363ebfd564007e6	ZEBCFN	2012-12-12 16:09:11.834184	2012-12-12 16:09:11.834184
276	5976492e00869dc019b28844aabb7dfce2693a71	JYCOKG	2012-12-12 16:09:12.203737	2012-12-12 16:09:12.203737
277	18c5ae553edfd6fa906f894780a29d1eaf30ca0e	KTIVBD	2012-12-12 16:09:37.631647	2012-12-12 16:09:37.631647
278	14b2a60ec6040414dc8fd2b834aa923af99e3c00	AEWJHQ	2012-12-12 16:09:38.113605	2012-12-12 16:09:38.113605
279	3b099c376a590f672eab76753dde8c5a4d8869f2	HUUJNI	2012-12-12 16:09:38.524204	2012-12-12 16:09:38.524204
280	1965d6f3bd6811c5a62520b33b8d4e650922bbe0	LMTHUJ	2012-12-12 16:09:59.371766	2012-12-12 16:09:59.371766
281	c0ebaad11129e798a8b21234ff5557043f3778f8	POXAIF	2012-12-12 16:09:59.712768	2012-12-12 16:09:59.712768
282	a835e8c52497abcd03b561b11409592d75f6a046	JJNLSN	2012-12-12 16:10:32.983121	2012-12-12 16:10:32.983121
283	936691cf94fb6a23d0bf51052df98aea984376dd	UUJIXI	2012-12-12 16:10:33.584323	2012-12-12 16:10:33.584323
284	df85b08da529e89b00ded627671000136ca9fb1a	UZLCLM	2012-12-12 16:10:33.951003	2012-12-12 16:10:33.951003
285	3bfaf8b4502d20c2161c20cee0656597a3a9b7ca	RCHJYS	2012-12-12 16:10:34.377322	2012-12-12 16:10:34.377322
286	f4319ae4364ab3b664907f5b8ebbff0c9ebbb799	LAWYES	2012-12-12 16:10:34.745753	2012-12-12 16:10:34.745753
287	b61f39e4c626acebd66f0fcf0ee39ccc4b2d6ae6	WVSKVU	2012-12-12 16:10:35.074517	2012-12-12 16:10:35.074517
288	649fb1edaa58fba9975158cd5838e080fb80ebb5	RWHODA	2012-12-12 16:10:35.402443	2012-12-12 16:10:35.402443
289	10451c0c9c52cb694597d5802dbb89b260e80213	GBQPSE	2012-12-12 16:10:35.678345	2012-12-12 16:10:35.678345
290	a8543ff043e267e437957aea4a5c8248d0ce51b9	YQOLIN	2012-12-12 16:10:36.153768	2012-12-12 16:10:36.153768
291	7bbc863f5b707dd4a4206f3a67e5d904e0aee572	TFYHHU	2012-12-12 16:10:36.562265	2012-12-12 16:10:36.562265
292	05e7b1b1e8eef8f1bc0478db3dbddadcab2e7dfb	BCSYGY	2012-12-12 16:10:37.000917	2012-12-12 16:10:37.000917
293	bf276582da9462f762581c4f66e604c74041d8a2	JFLJXE	2012-12-12 16:10:37.258469	2012-12-12 16:10:37.258469
294	b33b4893cd988f58ce2fbe88a7c846f997116326	RQNXVB	2012-12-12 16:10:37.470986	2012-12-12 16:10:37.470986
295	3f44f8e0962a7b6e313babab8bddd77ba4e9dbef	CISRVM	2012-12-12 16:10:37.717125	2012-12-12 16:10:37.717125
296	046f9ab32242f0c11f6618ea7c71a9d676361488	CVOPPK	2012-12-12 16:10:38.071163	2012-12-12 16:10:38.071163
297	bf30b02c922b54eb6cc616a015dcb37d6a0b9d28	LKHBVJ	2012-12-12 16:10:38.372855	2012-12-12 16:10:38.372855
298	3f43e1f5a353cf8eaa8e1de417f1017720b6ad20	CGEFZG	2012-12-12 16:10:38.652822	2012-12-12 16:10:38.652822
299	806316029392acc8d4b542f447423cfda226a73a	QPASXK	2012-12-12 16:10:38.895975	2012-12-12 16:10:38.895975
300	eb4057a59ef89b728cd969ffd80bbf6753cf555d	RIHATC	2012-12-12 16:10:39.24699	2012-12-12 16:10:39.24699
301	42f0f2f4754c1a89c7785880b9a753f919575442	RQBBSX	2012-12-12 16:10:39.589848	2012-12-12 16:10:39.589848
302	24895b25c7725d5a29475097a58d2af8183473fd	FKMNPB	2012-12-12 16:10:39.829849	2012-12-12 16:10:39.829849
303	2e318a23f70528f8d7840c05f23ca8edcdd02d12	PQAAPU	2012-12-12 16:10:40.089349	2012-12-12 16:10:40.089349
304	84f86a868fb53597f1c8cb33e9806a23c5f3417c	TKVKKM	2012-12-12 16:10:40.338862	2012-12-12 16:10:40.338862
305	dca7bdfc0398645d9dfd4c574f40e5e78ad4feb5	KQQKIJ	2012-12-12 16:10:40.555524	2012-12-12 16:10:40.555524
306	e17a63cc6091a159e8751d1977d1f1a58daa5090	UBOAAU	2012-12-12 16:10:40.832765	2012-12-12 16:10:40.832765
307	dba37ce81c6e57c987838d100fe23136807890ec	HZRBVE	2012-12-12 16:10:41.206304	2012-12-12 16:10:41.206304
308	08f65c9713ff7318c53e9774a0c6da3f17704501	AFLVBK	2012-12-12 16:10:41.521946	2012-12-12 16:10:41.521946
309	1df82f111809ff4057aa90f481b6668ba0b02566	YPOGFF	2012-12-12 16:10:41.759904	2012-12-12 16:10:41.759904
310	5b00480ac2db8eb34bfa0e65edfb2e8e68748c17	MRUZAT	2012-12-12 16:10:42.032475	2012-12-12 16:10:42.032475
311	069e51e390eb7ff7261585cee9dead2adc7dfcd2	CARSFM	2012-12-12 16:10:42.541304	2012-12-12 16:10:42.541304
312	f2b1fb17bb890b07ccdad44255a40819111f8fc3	RGGJNR	2012-12-12 16:10:42.978399	2012-12-12 16:10:42.978399
313	7b917a415057058ed305ceb59dfa6a89090e3de6	ILLVOV	2012-12-12 16:10:43.770495	2012-12-12 16:10:43.770495
314	f4d6b2e0ba85f182f945f3d03b848bcc159f51d5	RQGAGT	2012-12-12 16:10:44.717044	2012-12-12 16:10:44.717044
315	9756db6f1572e7f49636397629219aac803320a4	VHHIPV	2012-12-12 16:10:45.857199	2012-12-12 16:10:45.857199
316	e79aa664ab2e983b55f30f4243fdd85b7b5c8f86	EUZCMW	2012-12-12 16:10:46.537593	2012-12-12 16:10:46.537593
317	6611771353b4bac994e3e8b3db2776771e8459b1	IVVOYI	2012-12-12 16:10:47.037675	2012-12-12 16:10:47.037675
318	81fd0d83468e226ebdee74fde4027ece183bc2cf	LVDKLO	2012-12-12 16:10:47.612261	2012-12-12 16:10:47.612261
319	adab648606caf944eb8b34a95e6f63ade62c0fa0	ZPYEWM	2012-12-13 21:45:51.300095	2012-12-13 21:45:51.300095
320	0b76d106f1eb5b154f810a7d65c0b945af7fcd61	LRPYLO	2012-12-13 21:49:20.726546	2012-12-13 21:49:20.726546
321	66045aa6d06c66b1a7fb4c281836027d5199e72d	RXPPXL	2012-12-13 21:49:20.993709	2012-12-13 21:49:20.993709
322	9ffd4e525f648eac9317be953af967155b88caa8	KVMWRM	2012-12-13 21:49:21.341196	2012-12-13 21:49:21.341196
323	383ac04a6600984a88f62def57278a0eecc1c56c	WZHPRO	2012-12-13 21:49:21.764769	2012-12-13 21:49:21.764769
324	3169dbc8d48b0ad664a50ab7ee51a7e228217757	XAIFHX	2012-12-13 21:49:22.151216	2012-12-13 21:49:22.151216
325	9e3a85a44ce2060a31d74e443e6ad5bba98bd990	WKBLJE	2012-12-13 21:49:22.438036	2012-12-13 21:49:22.438036
326	9423c2a9b3a45c71e9ba330259ccc039b6ddba29	PQHIYH	2012-12-13 21:49:22.779542	2012-12-13 21:49:22.779542
327	6bd987df083764aa01e85395dfb9718bbe37dec4	UBWJGZ	2012-12-13 21:49:23.213504	2012-12-13 21:49:23.213504
328	88f1d78bc8d946083036ae8f3c3d7e2e4487436e	GPKVJR	2012-12-13 21:50:36.00202	2012-12-13 21:50:36.00202
329	f9db1dc843e6ea7ac4300af872d50828355800c1	RUAXIW	2012-12-13 21:50:36.46805	2012-12-13 21:50:36.46805
330	277a8359d2c75e69dada365ac133b6076a68e42f	XHLUJL	2012-12-13 21:50:36.849466	2012-12-13 21:50:36.849466
331	a572499653554ae67452037073e0db675bafc251	ZIDOLF	2012-12-13 21:50:37.210427	2012-12-13 21:50:37.210427
332	024119af99a99c5a5492c1aedc78e030e5102fe2	EZAPLJ	2012-12-13 21:50:37.680077	2012-12-13 21:50:37.680077
333	9b472b2677f3ebe14f8ae309abeaa66231a17527	CBOMQT	2012-12-13 21:51:01.414613	2012-12-13 21:51:01.414613
334	7a96cf4ae3eebd98e2993e50064f54547c021a80	ERVUDB	2012-12-13 21:51:01.939293	2012-12-13 21:51:01.939293
335	b399aa625b6b8c43adef92857d3909bd939d12c9	KSCCZM	2012-12-13 21:51:02.376204	2012-12-13 21:51:02.376204
336	5a40b3316b03dcfee1449f2183fcfa2b34a2427f	EAIGWQ	2012-12-13 21:51:02.810664	2012-12-13 21:51:02.810664
337	233da207998f5a250ca5c231dd2f5932a11a9df2	CZQSMX	2012-12-13 21:51:03.075116	2012-12-13 21:51:03.075116
338	528a110b6a1bed75634caf53d5b1677b58e216f2	RGVQNB	2012-12-13 21:51:03.629616	2012-12-13 21:51:03.629616
339	921597e08833d4439bb94fdaa89eb45b42417e7e	OCTJZH	2012-12-13 21:51:04.5844	2012-12-13 21:51:04.5844
340	22ad6035927120119aeaa9242192bf3d94e37eba	RJHAIN	2012-12-13 21:51:37.357636	2012-12-13 21:51:37.357636
341	b5dbfc78fd087920dec78819f700db9a8a81a8dc	TEWQYH	2012-12-13 21:51:37.926414	2012-12-13 21:51:37.926414
342	3dcab6ba66aed458126d743fc39fba9005125eb9	PMNTAH	2012-12-13 21:52:07.368121	2012-12-13 21:52:07.368121
343	f51635a277b98fc5d8313b8e02555be0f2f963d6	EBPCGO	2012-12-13 21:52:08.066799	2012-12-13 21:52:08.066799
344	39d44d7bb2f246eae8658206736c63b9d6bd61c1	HGPHPC	2012-12-13 21:52:08.380891	2012-12-13 21:52:08.380891
345	ed806d2dd029e711f7145f899a185fd5d426ae94	PWMBDY	2012-12-13 21:52:40.508523	2012-12-13 21:52:40.508523
346	026b81b28f150e41483a1feb6a007f9993f6ec99	WOBUNG	2012-12-13 21:52:40.902102	2012-12-13 21:52:40.902102
347	cb55d4b53a1fdd14a2b9f42bec56e802fd01e3b1	BZXGEM	2012-12-13 21:53:22.862743	2012-12-13 21:53:22.862743
348	07e238b32d0af5039dc96cd7a21381d6dc7dacbf	TREERP	2012-12-13 21:53:23.240056	2012-12-13 21:53:23.240056
349	c70e0ee64ae1a3e609130e1995784d309926a680	ODZWAC	2012-12-13 21:53:23.51881	2012-12-13 21:53:23.51881
350	37c82dbe9e6de10f2f625e155eea9daa87ce70a8	FTCNQQ	2012-12-13 21:53:23.9353	2012-12-13 21:53:23.9353
351	a04a208716b9dda467e0221c6d841ccc374bc6c0	NSJLSE	2012-12-13 21:53:24.38372	2012-12-13 21:53:24.38372
352	6de5e2d72399027b78281aa63c7096e98f0591e5	ESATWK	2012-12-13 21:53:24.763369	2012-12-13 21:53:24.763369
353	d2df2cb37dc27efcee58592d072825344ad2d312	IDAWEY	2012-12-13 21:53:25.086708	2012-12-13 21:53:25.086708
354	fb3f4801fb3b576253a4583d17dec28188180c44	UQZMIH	2012-12-13 21:53:25.513258	2012-12-13 21:53:25.513258
355	d7745ed9c1fd0f629acc60ed8c5847548a41f5db	FAAIGP	2012-12-13 21:53:25.994016	2012-12-13 21:53:25.994016
356	37b96a5a45f8b3d36b69bcc5bc840dffeb9f0026	PLTRSL	2012-12-13 21:53:26.301116	2012-12-13 21:53:26.301116
357	d25bf96937c3138d66c9751c565aafdc381c2a1a	CLNHCP	2012-12-13 21:53:26.68822	2012-12-13 21:53:26.68822
358	b9042e6a8451856523ecf2e46ceafc7158e81789	UYICRZ	2012-12-13 21:53:27.076624	2012-12-13 21:53:27.076624
359	515ca361919b58ad07f8ffc93a50373581ecb65c	RATQSG	2012-12-13 21:53:27.53139	2012-12-13 21:53:27.53139
360	a55e6af0b96468c69a63f291878b67a42e803e10	DXFFSP	2012-12-13 21:53:28.380732	2012-12-13 21:53:28.380732
361	fdafa43febc2337289db3c0d66053cc834cdf68e	AZSCLP	2012-12-13 21:53:28.719461	2012-12-13 21:53:28.719461
362	a096a6cf94cf3d62a7be9305797d39db7cacbfd8	KYEFEJ	2012-12-13 21:53:30.340176	2012-12-13 21:53:30.340176
363	e90156bb1ef79e18d41009cef6176c4a8300cfb5	BGEVMF	2012-12-13 21:53:30.950539	2012-12-13 21:53:30.950539
364	5e996b76c9eafffc926f936aa73a66f7efcb7af6	MXNTBT	2012-12-13 21:53:32.663728	2012-12-13 21:53:32.663728
365	bc82d0d344533135ec57e97f949914ed9be71778	APDDHS	2012-12-13 21:53:33.171553	2012-12-13 21:53:33.171553
366	68cc0be0f5044f6e70cd10c7512fc3103e3a6649	FGZZOT	2012-12-13 21:53:33.809673	2012-12-13 21:53:33.809673
367	6092f7fe7effd4d1aa21d8c5c80a77894b661ebe	OUWTQN	2012-12-13 21:53:34.420745	2012-12-13 21:53:34.420745
368	3eaaaaf25f4c501b837bb2b8d717ba02cfe3c193	CTCYCC	2012-12-13 21:53:34.866431	2012-12-13 21:53:34.866431
369	28f9fbde1a5269eedda1f4c91765560dede08745	GQCNRH	2012-12-13 21:53:35.172229	2012-12-13 21:53:35.172229
370	8c0f2d19d2ccf77f5f1b7b11cb87008c04ee1cc6	QMCJRR	2012-12-13 21:53:35.61896	2012-12-13 21:53:35.61896
371	23593d82140a5e5a0ac2a041cb84d40165221f46	BOQEFM	2012-12-13 21:53:36.046592	2012-12-13 21:53:36.046592
372	3086795374a796634e4eef984ea265c214105bf9	EQGEUC	2012-12-13 21:53:36.31726	2012-12-13 21:53:36.31726
373	c5195addc4c947fbb7d51b69524cc97cc83e5e4a	LTHKZH	2012-12-13 21:53:36.723627	2012-12-13 21:53:36.723627
374	be9bb4a14cacd6c1222133f185763abeb3237c60	DOVMYG	2012-12-13 21:53:37.123557	2012-12-13 21:53:37.123557
375	93052da5e08f2578e1aabad6d075504c657cceec	LPZUZU	2012-12-13 21:53:37.508993	2012-12-13 21:53:37.508993
376	bfa240409fa63720f457d215f116c9c7061abe8c	ZWBGII	2012-12-13 21:53:37.853455	2012-12-13 21:53:37.853455
377	003d24fbbe471e1deee34483e3ef3b510c951e72	NTAPZR	2012-12-13 21:53:38.254892	2012-12-13 21:53:38.254892
378	23d1c219903e509d2c621a015a64c5d31b9ff2a7	DGXHHL	2012-12-13 21:53:38.59548	2012-12-13 21:53:38.59548
379	cdb0179ba40c7d4521b030f27f5cdf6e72e14b57	ZGWGKB	2012-12-13 21:53:39.760593	2012-12-13 21:53:39.760593
380	034b73b738fc2bdd64b43664a3409f58d78d3bc7	MKYQUH	2012-12-13 21:53:40.237364	2012-12-13 21:53:40.237364
381	d09c6356d84c38ab1af884103a98a7b466ebe866	ZDDBDQ	2012-12-13 21:53:40.746255	2012-12-13 21:53:40.746255
382	c2f1dd0f6547533fe81c2f38fcd0370fb1f55be1	DZHGXY	2012-12-13 21:53:41.361629	2012-12-13 21:53:41.361629
383	b3ffe72b4b81d55f99bf5ebd362ce00ce1efc781	XLLLBB	2012-12-13 21:53:42.115026	2012-12-13 21:53:42.115026
384	19955383e2c22d2acaef83abbb7c9f8594b19aba	MGCZLU	2012-12-17 06:00:25.237862	2012-12-17 06:00:25.237862
385	3aee046c6760f5b852bf7cb3cc380f8d6ea9f03a	RTMOYX	2012-12-17 06:03:32.828256	2012-12-17 06:03:32.828256
386	a84a900022ce01f91d198785846fef412ca68b96	RUNSYC	2012-12-17 06:03:33.305834	2012-12-17 06:03:33.305834
387	060d9de254649e9199b3f4904fed6d67308701e6	KGORPF	2012-12-17 06:03:33.897399	2012-12-17 06:03:33.897399
388	6979551011e9a036400d0bcc36f331a2d31fc4dc	MOEMLD	2012-12-17 06:03:34.451571	2012-12-17 06:03:34.451571
389	b8cecd5904dea8dc73420cf710b1e6ae2961cdb1	MWFVUF	2012-12-17 06:03:34.859694	2012-12-17 06:03:34.859694
390	516e3697735d2e6d6f4583163b2c3fbebfb88dc6	NQGLTG	2012-12-17 06:03:35.586126	2012-12-17 06:03:35.586126
391	c08431614f6e6b2c866fc1a4fc786267a9b12bd6	AMKUVO	2012-12-17 06:03:36.057327	2012-12-17 06:03:36.057327
392	51dccb41f67c8d11365ba6a90eb370390c8897f6	QAIBBT	2012-12-17 06:03:36.61897	2012-12-17 06:03:36.61897
393	6993cfb8d5a2e05e51238b6f384e89f3addd23fd	NGDNML	2012-12-17 06:04:57.065166	2012-12-17 06:04:57.065166
394	a9c800b7ad35eab3f8919ed855002b961baa629b	HBLPAL	2012-12-17 06:04:57.712162	2012-12-17 06:04:57.712162
395	1ad8e74a6d45c3bcea505a2b18e26c634dbc5b54	LFNDFR	2012-12-17 06:04:58.062786	2012-12-17 06:04:58.062786
396	1e70e0f48dec91a69038d88aff36c729b8b62fb3	NLDBFF	2012-12-17 06:04:58.459621	2012-12-17 06:04:58.459621
397	dddab422c31374db131b87bbc908505d6048cb5d	FHJRDW	2012-12-17 06:04:58.734879	2012-12-17 06:04:58.734879
398	814e7f32a5a4e8429dc1f8ef88a649ee356585c6	QEQQDZ	2012-12-17 06:05:23.005993	2012-12-17 06:05:23.005993
399	936324ef1ea41e6887ae99bb283e009cca0b707c	DFJQNP	2012-12-17 06:05:23.299532	2012-12-17 06:05:23.299532
400	227644c080d0612349c623eb75b3ab3ab13f782a	CDQCLP	2012-12-17 06:05:23.959012	2012-12-17 06:05:23.959012
401	03e01f4c4599b0654abeb9faa4078598203ccb1c	CIDHBR	2012-12-17 06:05:24.267555	2012-12-17 06:05:24.267555
402	a2d15664ce751316270eb7db3780bd099ab2206f	QCURSJ	2012-12-17 06:05:24.790597	2012-12-17 06:05:24.790597
403	1e93765df797525dbab4e378d7fa9ed5cfb641c8	RMGWEO	2012-12-17 06:05:25.464712	2012-12-17 06:05:25.464712
404	47ef97d8c41ee4576ecf8fde05e5d8579ea6e54b	NNNWLY	2012-12-17 06:05:25.749308	2012-12-17 06:05:25.749308
405	46016670dbef73d8b1cf76356f28e04b171b4e18	ZGITTY	2012-12-17 06:05:48.790567	2012-12-17 06:05:48.790567
406	cbb009ec202e4ab0fafa777dfefe69ba1abadf11	TOHVLC	2012-12-17 06:05:49.023734	2012-12-17 06:05:49.023734
407	c55a8f4671d49a698e96d646280e03c163e76a73	JUMYLD	2012-12-17 06:06:12.280895	2012-12-17 06:06:12.280895
408	f1ec2fa08377fbd7f1fd3234d69d1fbace92ee62	ZDBOQS	2012-12-17 06:06:12.904109	2012-12-17 06:06:12.904109
409	12743bf4b7c43b8276b8d4475a3e30b951ba802d	RQAING	2012-12-17 06:06:13.347135	2012-12-17 06:06:13.347135
410	5d0a33631774eb94f322b554b58b3ef93db704cb	USUMQC	2012-12-17 06:06:39.046158	2012-12-17 06:06:39.046158
411	417cd2e68c82cf96ee58de300d8950354a14515e	BSJCMA	2012-12-17 06:06:39.284969	2012-12-17 06:06:39.284969
412	85e9d9ea1069d67559b3c1351de594c4e585703a	SCBRJP	2012-12-17 06:07:06.721713	2012-12-17 06:07:06.721713
413	dfb18c5ff9b5215f1549d4c576dc0721ca025bbe	ESKLDY	2012-12-17 06:07:07.605656	2012-12-17 06:07:07.605656
414	a125461894e7b131c82e85332a7b0ac0b6a1f7a6	AYEYYI	2012-12-17 06:07:08.24737	2012-12-17 06:07:08.24737
415	b4558537f8f411e19a2256ee7f070ffbaa6e0833	ZGYZJU	2012-12-17 06:07:08.59792	2012-12-17 06:07:08.59792
416	4b455e054332497edecd4d12fffe4b5d97ebef73	VFJPAU	2012-12-17 06:07:08.969745	2012-12-17 06:07:08.969745
417	661ad3f4c6633444e8148b4ec9bdc1a4d9f8c9c1	MBBSBN	2012-12-17 06:07:09.440122	2012-12-17 06:07:09.440122
418	5b9fbf4ba31313fa74a43f6899d9b10a7037d8c6	XCJXXI	2012-12-17 06:07:09.977536	2012-12-17 06:07:09.977536
419	0f9f8ca7f727b851063a83e5016f8edc1e58cd2a	RFIJSD	2012-12-17 06:07:10.412881	2012-12-17 06:07:10.412881
420	579837de5cbb8b72e246954124ee2031f56eb73e	AGCTOV	2012-12-17 06:07:10.852605	2012-12-17 06:07:10.852605
421	8aec26aeaa9b873ae72dd41bdd5ad82955e6947b	YLGOFA	2012-12-17 06:07:12.073583	2012-12-17 06:07:12.073583
422	75e3343e33d0019d554cde0e956a24265438f99f	KJVSRS	2012-12-17 06:07:12.389051	2012-12-17 06:07:12.389051
423	1b926792ffa14227fe6b3e2718292093fb07f202	TTZAMD	2012-12-17 06:07:12.891537	2012-12-17 06:07:12.891537
424	d68c384baaebe73b1631a41e643275eb030cec44	ZGPOMD	2012-12-17 06:07:13.266376	2012-12-17 06:07:13.266376
425	fe2a17495e89151ee9bbe5bf9bcaf3ece4989b14	FSKEMA	2012-12-17 06:07:13.678524	2012-12-17 06:07:13.678524
426	32162fd828559c409ed18aab0e2b1fe1e5f5adfc	FYRZDS	2012-12-17 06:07:14.11652	2012-12-17 06:07:14.11652
427	759e129c479c500ff3fbae4810e967cca853b67f	PUYRLX	2012-12-17 06:07:14.411144	2012-12-17 06:07:14.411144
428	e5ffdbe19ee21d572a819ce7a3e0eef89f0e5c78	JIGVES	2012-12-17 06:07:14.754668	2012-12-17 06:07:14.754668
429	03a333beac2e5504b29ab66fc31f070976b63c38	ZPJQPB	2012-12-17 06:07:15.17239	2012-12-17 06:07:15.17239
430	173aed7d08f472148591ee75051b7d472f9e0752	IFKJHD	2012-12-17 06:07:15.394282	2012-12-17 06:07:15.394282
431	c7ebed72a9480de12d3bd9fd54df6a031634e054	STBZVY	2012-12-17 06:07:15.822712	2012-12-17 06:07:15.822712
432	7e8b9ae9da23d0b127396d9de3080f9864bc0156	TEKHWR	2012-12-17 06:07:16.219251	2012-12-17 06:07:16.219251
433	7081f0d0e9dbed10bd6c4b03a3eb60ea57095503	FMOZSW	2012-12-17 06:07:16.895706	2012-12-17 06:07:16.895706
434	489b0306af5311f8bd5b4c8fff2941d56af3584a	BTZEOQ	2012-12-17 06:07:17.337022	2012-12-17 06:07:17.337022
435	5144db7fb5c7da10a4ede4d9bd4b2985112c7ce1	HDJPVC	2012-12-17 06:07:17.818017	2012-12-17 06:07:17.818017
436	602af118b9d9a6d27b86590c1232e06ec5bb377d	UZMTBW	2012-12-17 06:07:18.418814	2012-12-17 06:07:18.418814
437	ef16b631c29ae8f45336c588811f0c6fd55fa539	YTDKPG	2012-12-17 06:07:19.072856	2012-12-17 06:07:19.072856
438	5b8cab1c54b6e8abbdb75895b5c6597a103cec8c	OAPLNX	2012-12-17 06:07:19.482785	2012-12-17 06:07:19.482785
439	70dbe8cea50dbff6f62d97028691bf83df9e5eae	YVAXAH	2012-12-17 06:07:19.909932	2012-12-17 06:07:19.909932
440	222fea8bae55241f67176f0e5fb3bca50723dc0c	WPYLWE	2012-12-17 06:07:20.380537	2012-12-17 06:07:20.380537
441	62702a7e8b005e81d1538f581d2e69efca146b2d	EHBUCA	2012-12-17 06:07:20.691565	2012-12-17 06:07:20.691565
442	efc1058504fe59eaeb1d46797b74e0abbbf5b569	CDLEOG	2012-12-17 06:07:21.336371	2012-12-17 06:07:21.336371
443	d32ae11451daf79f0933a7072e76232ce8ed4f3b	VGIDRP	2012-12-17 06:07:21.699046	2012-12-17 06:07:21.699046
444	8c1b4acd12996dca07fdfd498e4057fd045ed71f	JVEOYV	2012-12-17 06:07:22.106927	2012-12-17 06:07:22.106927
445	51e870c1f11e68edf82f70f62ed642f4fee8e0f6	UEVFTF	2012-12-17 06:07:22.472183	2012-12-17 06:07:22.472183
446	499b4633d5c69e628353dfeb7285e44474c5c716	HZOIPF	2012-12-17 06:07:22.851885	2012-12-17 06:07:22.851885
447	e871c43ef5281976b296523b0fc2312d123bd8ee	PIBDWW	2012-12-17 06:07:23.137971	2012-12-17 06:07:23.137971
448	297436c2382594edd6655c2f385cb6d288b6804a	RXBLXX	2012-12-17 06:07:23.89102	2012-12-17 06:07:23.89102
449	83f1476fa56413757754d2e6a62af6779741f1fa	GFCKFK	2012-12-18 17:59:47.254975	2012-12-18 17:59:47.254975
450	887b5254f3955fa75a7c693519dedded031eeef3	UOWHHF	2012-12-18 18:02:06.533171	2012-12-18 18:02:06.533171
451	5e911109cc4dd38b5dbaebe426cbe9bbe95f779b	DPSHZA	2012-12-18 18:02:06.730679	2012-12-18 18:02:06.730679
452	5307a1b18f5255781485aed95ed0af77aca01133	ZCYVJO	2012-12-18 18:02:07.014756	2012-12-18 18:02:07.014756
453	46e28a913a0b6755b9e5bd535ad20216e183457c	AUKSYC	2012-12-18 18:02:07.393695	2012-12-18 18:02:07.393695
454	5d5b30abb48405f8814d0d73b2d0b7acbd4db3d9	MMYRBA	2012-12-18 18:02:07.967801	2012-12-18 18:02:07.967801
455	3ed28b6cbd71b13e17276afcbc0a96bc45ae089c	ZUNYQD	2012-12-18 18:02:08.588627	2012-12-18 18:02:08.588627
456	0c479409b88c7f82e735fbc90802bd8105ca8317	BOQCTA	2012-12-18 18:02:09.074425	2012-12-18 18:02:09.074425
457	5181ac97a62b87f8daff12acdec6d30fede9f1df	DIKLEZ	2012-12-18 18:02:09.387921	2012-12-18 18:02:09.387921
458	10a42d79ca857b3304921b2f3f8eb4d674a6e912	VNBVNI	2012-12-18 18:03:05.346711	2012-12-18 18:03:05.346711
459	91b68e97beb98f2f985b526dfeb3d92ad7aa72a5	JGUUOH	2012-12-18 18:03:05.62256	2012-12-18 18:03:05.62256
460	9b5e86b1d73c669f2d94f85259a55ea0d91fcefb	KMMZMX	2012-12-18 18:03:06.231559	2012-12-18 18:03:06.231559
461	aeda0f3db90b9195b89400821682e0cda6dca730	YWBXGU	2012-12-18 18:03:06.472108	2012-12-18 18:03:06.472108
462	0f3ac29d82b56304d8fec6b4d0a9ba3d96c55893	YEPVVC	2012-12-18 18:03:06.760447	2012-12-18 18:03:06.760447
463	c0694d3f990fc37f32760a173f37b14972378985	MMUXWW	2012-12-18 18:03:23.552519	2012-12-18 18:03:23.552519
464	d38fd69b3b1b8118e466409726f73d3ab4142e4f	VKUGNW	2012-12-18 18:03:23.901615	2012-12-18 18:03:23.901615
465	b9840fb2f943fc3aa857d8b1ee7661153609c08b	HLVETU	2012-12-18 18:03:24.133812	2012-12-18 18:03:24.133812
466	7584bc3293c444d02e947540d49c733e5961d98a	KLSZIG	2012-12-18 18:03:24.50649	2012-12-18 18:03:24.50649
467	4980b5190c8b63b0e652080611be4c4d3de779c1	FMGABQ	2012-12-18 18:03:25.373564	2012-12-18 18:03:25.373564
468	ea7e58ff5dc1cff607db7e5e2dd1a125fe51a02f	ALLQGO	2012-12-18 18:03:25.702541	2012-12-18 18:03:25.702541
469	7f4f5932f08ecc163935d7fadcf2a2487013bbf1	HHVMVQ	2012-12-18 18:03:26.018622	2012-12-18 18:03:26.018622
470	a8b097d0fe271baecc732521c1a6d6d652e0cb8a	NNRMVE	2012-12-18 18:03:50.914747	2012-12-18 18:03:50.914747
471	23dc8ced57eabbe77228da6e3f2b038ca29495fb	NWRWYA	2012-12-18 18:03:51.198355	2012-12-18 18:03:51.198355
472	23816e5c762075a17a53aad2fc25bff0b4735374	MSNEYJ	2012-12-18 18:04:10.842033	2012-12-18 18:04:10.842033
473	51070dd04693209374957c29c580b6a8a6c47813	DEVVZG	2012-12-18 18:04:11.151722	2012-12-18 18:04:11.151722
474	f7dc4928fb7f874992b5938478bc9818427116b0	PWMQHL	2012-12-18 18:04:11.720481	2012-12-18 18:04:11.720481
475	4324438de57036a8fbaabd64ac5949ec85faf26e	QLUNXI	2012-12-18 18:04:31.378464	2012-12-18 18:04:31.378464
476	11872034529afea0aaea68ff3f0daa281a5b6576	WHNVKM	2012-12-18 18:04:31.61807	2012-12-18 18:04:31.61807
477	c4eb429ca332015fe7dd0f9311c7df2adbd40147	ZNPPTJ	2012-12-18 18:04:55.87449	2012-12-18 18:04:55.87449
478	9dc761887137e4952c08528bed0bcb4c5f2e29de	AEAVDJ	2012-12-18 18:04:56.075465	2012-12-18 18:04:56.075465
479	8754955656bfacc1ce584fe34366735fa6f62265	ZDMGDN	2012-12-18 18:04:56.375957	2012-12-18 18:04:56.375957
480	ed3cf0bf43ad1a398d6e6ed5001c5dd51c1d7d3b	OZYCJW	2012-12-18 18:04:56.600393	2012-12-18 18:04:56.600393
481	b450ac7739034d3f5c83ba6cda6e71a71cfe41eb	XLRZAT	2012-12-18 18:04:56.780612	2012-12-18 18:04:56.780612
482	dacbe085de5222856eaf3d7db5a494a51f262c7f	VPSOFQ	2012-12-18 18:04:57.06415	2012-12-18 18:04:57.06415
483	a59b9c7a077f80379cd47c0f023e29f44aed0149	DKAVPK	2012-12-18 18:04:57.352522	2012-12-18 18:04:57.352522
484	de6b230c761580a173df3962604a02f383a86dd0	RWEXQA	2012-12-18 18:04:57.579545	2012-12-18 18:04:57.579545
485	b22dd03bffdeca49e6b9276b9018444fa2873889	NBCSZR	2012-12-18 18:04:57.810097	2012-12-18 18:04:57.810097
486	7e9bd194f1388f837c5c9ce8109b0f1f6105cd48	UQJDUW	2012-12-18 18:04:58.070445	2012-12-18 18:04:58.070445
487	2fe4ca8bd74fa071317c4dcd309ce41e445996ab	CHZZOM	2012-12-18 18:04:58.306746	2012-12-18 18:04:58.306746
488	ff2c23b9cf76abaae884594a415fa7042145b658	LRWOZL	2012-12-18 18:04:58.715362	2012-12-18 18:04:58.715362
489	680e8dbdf98b7027059bfe2c7b56999d1ffb3648	FSQZLT	2012-12-18 18:04:58.978888	2012-12-18 18:04:58.978888
490	d5ca7ab13c247c8dda06edd863d64f349fdd8464	GCMGJJ	2012-12-18 18:04:59.174343	2012-12-18 18:04:59.174343
491	90a5c0fd908888bdd316fadb6af22ece6a8b5320	MEMWFB	2012-12-18 18:04:59.416339	2012-12-18 18:04:59.416339
492	b3b94145da473eac319f8516362a01bb1f68846d	OFDOPS	2012-12-18 18:04:59.628515	2012-12-18 18:04:59.628515
493	80ab464d0edc1950643c12fe13157db03716763e	FXHOMF	2012-12-18 18:04:59.859668	2012-12-18 18:04:59.859668
494	ea19955ce85de82355c78d0560939eccbb5b35c7	XYRNBG	2012-12-18 18:05:00.162295	2012-12-18 18:05:00.162295
495	cee5e5479057031b9fd625849066ff0cb35c1a95	YYHLTG	2012-12-18 18:05:01.833574	2012-12-18 18:05:01.833574
496	560c44517e2f99a6b466635b574928c281193149	TYQRJR	2012-12-18 18:05:02.257123	2012-12-18 18:05:02.257123
497	f846d8a3806d2557a3f3fa68316b90cf56acbb9b	LIYMOP	2012-12-18 18:05:02.794816	2012-12-18 18:05:02.794816
498	f0d7e6324597e98a5e39e8cd69fe0cce6c834394	IYMCPS	2012-12-18 18:05:03.169919	2012-12-18 18:05:03.169919
499	a87ab56ad935e58caeea627dd159e5c5c0a7251c	MKPFGV	2012-12-18 18:05:03.557032	2012-12-18 18:05:03.557032
500	39bc4a0c46ce040608d6dc8736068248390c90d8	ZTSMXF	2012-12-18 18:05:03.847224	2012-12-18 18:05:03.847224
501	73844d7aa417263defaa107d42a1b9e8b9dffc39	KLEZHN	2012-12-18 18:05:04.114509	2012-12-18 18:05:04.114509
502	b3da84b18d07e03488af44781f680c690e9e309e	WPWEOQ	2012-12-18 18:05:04.641224	2012-12-18 18:05:04.641224
503	0325bb684e764b12e18b88a9ab0b09d4f4d66f0a	ITFLQZ	2012-12-18 18:05:05.018406	2012-12-18 18:05:05.018406
504	7807b490b79d808b8b2733912208c46c20f204f5	DRBYIG	2012-12-18 18:05:05.354262	2012-12-18 18:05:05.354262
505	4d8b0d871db63b0712b65a9f0189c2248b4a2d44	KOCMGL	2012-12-18 18:05:05.942273	2012-12-18 18:05:05.942273
506	a2d49dbb4b4b64611f559056488c1b6ba22ad374	KOVVSR	2012-12-18 18:05:06.270247	2012-12-18 18:05:06.270247
507	d9a8a2394aad8737038fef7469e97e1fb7c0717e	RYVWIX	2012-12-18 18:05:06.775957	2012-12-18 18:05:06.775957
508	07e7214b5ee8397d1e52fdcd56328812d05659c5	ZPOMQL	2012-12-18 18:05:07.027326	2012-12-18 18:05:07.027326
509	c7a70b98472c66a4bcbfc35e0cb873259eb7f8cc	ZTNIYD	2012-12-18 18:05:07.331499	2012-12-18 18:05:07.331499
510	43af232e65365e4ee2bb685b37d7ad296dfc4996	IENKLJ	2012-12-18 18:05:07.620738	2012-12-18 18:05:07.620738
511	dc0f85eca53aed79dec228514a880e4b0fef84ea	KPBNMI	2012-12-18 18:05:07.875746	2012-12-18 18:05:07.875746
512	898f99fd13a222c8be1db0a6742d766521de84ae	GHQOPW	2012-12-18 18:05:08.178865	2012-12-18 18:05:08.178865
513	9786f77e7ad9d0740389a9edc293b3a62a29e4c2	GDKMWN	2012-12-18 18:05:08.46246	2012-12-18 18:05:08.46246
514	7d7a3994c68e4b8874acfe84a6f8f3715d757a7f	JANZHF	2012-12-19 16:05:31.065773	2012-12-19 16:05:31.065773
515	19ff906a1729a26cbd5a0223a63bf6f13f788226	QEMFRO	2012-12-19 16:08:45.165245	2012-12-19 16:08:45.165245
516	ed42cd2c4fb269a209bf0ed62348d285e6ca99ac	KIGGFQ	2012-12-19 16:08:45.719821	2012-12-19 16:08:45.719821
517	eec52e07baa946e1144e0fd3e3a101c6dd2e7280	TOFNAR	2012-12-19 16:08:45.926342	2012-12-19 16:08:45.926342
518	3c362bc0036b77b311ce7b177efcf4a7597fcfdd	KMDMCE	2012-12-19 16:08:46.177947	2012-12-19 16:08:46.177947
519	7d68031cce29bb57b30a1fb86a6b0ce389e190d0	NSVQPN	2012-12-19 16:08:46.450844	2012-12-19 16:08:46.450844
520	8be9aa4eaf2fec9d101c95dfeb116a764b7e21aa	DTIZHL	2012-12-19 16:08:46.831113	2012-12-19 16:08:46.831113
521	38b819d55c98f493c42c7a77eb11306957722fcf	TLTPEW	2012-12-19 16:08:47.08636	2012-12-19 16:08:47.08636
522	f53e9166a85772b9c49313d238527a704926d5b7	JRTBRA	2012-12-19 16:08:47.421049	2012-12-19 16:08:47.421049
523	0e1fb0596f151058ea65b391e4ac3cd4ccb816af	VTAWQB	2012-12-19 16:10:17.81569	2012-12-19 16:10:17.81569
524	bd8e27daebc2c8bbce189c0e3790e246bbeaff52	URERYA	2012-12-19 16:10:18.288951	2012-12-19 16:10:18.288951
525	69e964bfca33206d0b5fbc26c67a83346324bd6b	EJSLHL	2012-12-19 16:10:18.692868	2012-12-19 16:10:18.692868
526	a555ee2842d1049ac2eab80176419287622d7304	POINWT	2012-12-19 16:10:19.087015	2012-12-19 16:10:19.087015
527	b16607cec8ecddb4850c3058d9b761c9a5e905a2	JXGUGU	2012-12-19 16:10:19.420289	2012-12-19 16:10:19.420289
528	1c74c289bafe5c6882cba53bb458d7e9284d14c3	WVQEWP	2012-12-19 16:10:50.623866	2012-12-19 16:10:50.623866
529	cd30334603f16b69673d6226e1d4024b1fc2e02b	ESZMSO	2012-12-19 16:10:51.135713	2012-12-19 16:10:51.135713
530	ae5a3527b88d9a56e56a50052d6931c5875ec4b2	UZMRXK	2012-12-19 16:10:51.460793	2012-12-19 16:10:51.460793
531	1ace4f49b06787109244bb51d6b8db17237da451	SFIJPG	2012-12-19 16:10:51.859415	2012-12-19 16:10:51.859415
532	699b90ccbdc916980bc1443f7ee3ede66e4a6d19	SBKUCX	2012-12-19 16:10:52.254252	2012-12-19 16:10:52.254252
533	f00948557ee490dd9466db099c77de0e8718f2d4	JHBYDZ	2012-12-19 16:10:52.488871	2012-12-19 16:10:52.488871
534	1ca02a420c41ea2cd1bb8b1695c2c9de438804de	ZILCPE	2012-12-19 16:10:52.793991	2012-12-19 16:10:52.793991
535	e6a7b17a8eb1ef7f7e0b84153d2a5c3d8b97c7fa	LEHRXN	2012-12-19 16:11:32.579674	2012-12-19 16:11:32.579674
536	05d5ecf4b6919c7356afb09242622d54b9008641	KCGZPP	2012-12-19 16:11:33.647492	2012-12-19 16:11:33.647492
537	8f4b0cd657ee4af964b0c87987390d0adee5cfab	ILVTEI	2012-12-19 16:11:59.811495	2012-12-19 16:11:59.811495
538	cbff5d8c8fbf53b782ec0a7c0b3381ec176898df	RYZZKD	2012-12-19 16:12:00.109752	2012-12-19 16:12:00.109752
539	720aa5c20cd5ab1df2c5938e5e3a52c3c6c99d18	MPYULD	2012-12-19 16:12:02.308581	2012-12-19 16:12:02.308581
540	a68270c0d80bec59b403ceee61d52a94764580ad	NRKVNM	2012-12-19 16:12:34.574031	2012-12-19 16:12:34.574031
541	23368e50d71dc6419fcb1147631020a176744705	SCGALH	2012-12-19 16:12:34.986887	2012-12-19 16:12:34.986887
542	595827423b53a6feb3500dd51446075667e04e7f	KHOBWS	2012-12-19 16:13:09.024128	2012-12-19 16:13:09.024128
543	9a587c680e5821c8476247ef3b343e9d6367c7f3	QMSELH	2012-12-19 16:13:09.290487	2012-12-19 16:13:09.290487
544	12e4e2aaf5c1b3ca6e318591de9e35b6f6c313b6	UJEMSJ	2012-12-19 16:13:09.506692	2012-12-19 16:13:09.506692
545	704f444c08b3b23ae163a769a73f4176dd2223d3	TPPJSX	2012-12-19 16:13:09.7588	2012-12-19 16:13:09.7588
546	662ba35e36385aede1af84663491948108663b38	NXMVFS	2012-12-19 16:13:10.12515	2012-12-19 16:13:10.12515
547	680bfa6e916d7ffd85624ce043132175147d37d7	PTTTMA	2012-12-19 16:13:10.390685	2012-12-19 16:13:10.390685
548	0e89281fac3729aa5da789b59f0cc25cb85e1c7c	EFTVYX	2012-12-19 16:13:10.792108	2012-12-19 16:13:10.792108
549	92b2a708effac0d6fa8b8c8adaf4dd57dcb30587	OGQQDH	2012-12-19 16:13:11.079805	2012-12-19 16:13:11.079805
550	deefe4bcaaaa2fa298c4cf0167cd1f7293553900	KEBGYZ	2012-12-19 16:13:11.31477	2012-12-19 16:13:11.31477
551	874bb8cfc4af46d9cfa0867a5cd22b202e02d27f	TXMZJZ	2012-12-19 16:13:11.590177	2012-12-19 16:13:11.590177
552	4030a0cf738ebab768c50166618660313267eae2	KYDWZF	2012-12-19 16:13:12.03586	2012-12-19 16:13:12.03586
553	8898a5d5ed808f60891885a69e326d400aa3e2d0	FJOWKS	2012-12-19 16:13:12.456133	2012-12-19 16:13:12.456133
554	98ad71535e70a213cc6cf0747b70c470c7945547	XQNYSX	2012-12-19 16:13:12.684337	2012-12-19 16:13:12.684337
555	2c55c84817bc17e97a087c33fba8c19c0f60b1f1	AKFDMV	2012-12-19 16:13:13.00718	2012-12-19 16:13:13.00718
556	170f290839c96330576c9ca6450083d6a6a3c1eb	EFTTLD	2012-12-19 16:13:13.226783	2012-12-19 16:13:13.226783
557	feb34bce7939e8f9f68866d50c7885391b207e8f	WQLNMI	2012-12-19 16:13:13.514966	2012-12-19 16:13:13.514966
558	29162bf3b21ab3bfabaae9ce7eef6419b74e450f	RRBTMK	2012-12-19 16:13:14.302992	2012-12-19 16:13:14.302992
559	e68c2b78bfdbcab89d44bfda21faff6c97c64f17	CARFYS	2012-12-19 16:13:14.794436	2012-12-19 16:13:14.794436
560	f3c3b42699f1bd11c1110759665ec9db30157eeb	JGGCZN	2012-12-19 16:13:15.14841	2012-12-19 16:13:15.14841
561	16145aaaa677e7fc0008a1b3e08cb849b9ce8662	BQSVLD	2012-12-19 16:13:21.366753	2012-12-19 16:13:21.366753
562	772a14fa3f8f41dad098ca9ffac8072e6ca5e67f	QMSIFC	2012-12-19 16:13:21.771009	2012-12-19 16:13:21.771009
563	02429f27afe4c9ad56602148c5b425cc4407db48	EJRZQI	2012-12-19 16:13:24.744612	2012-12-19 16:13:24.744612
564	d9b8efc7fa3185627c1b464ecbd771537e87c135	OJPYLX	2012-12-19 16:13:25.121485	2012-12-19 16:13:25.121485
565	c77eab8d4deced999cf00da2d3b6e866a0cdb92a	CBLCFQ	2012-12-19 16:13:25.481619	2012-12-19 16:13:25.481619
566	b53a28c7639b07e0d1a255831b19b69b3a9d3980	UEUWLO	2012-12-19 16:13:25.8674	2012-12-19 16:13:25.8674
567	5d73cfd32e5a3d38d8c5689e3dd392b72f395490	EJIRCC	2012-12-19 16:13:26.149542	2012-12-19 16:13:26.149542
568	e25ee0a624a4e6803f78e35aa13c4ed31ef57077	MUDHDP	2012-12-19 16:13:26.421063	2012-12-19 16:13:26.421063
569	464899958660045cdbd5e94dea73402842da6abf	TFVOTD	2012-12-19 16:13:26.739133	2012-12-19 16:13:26.739133
570	4c69febf0630479fb81cffcbccd070db18f824cb	IAUHOM	2012-12-19 16:13:26.977617	2012-12-19 16:13:26.977617
571	23bb3f06bea45ab7996c203fc1da46bde6e74aff	XGGSYP	2012-12-19 16:13:27.254714	2012-12-19 16:13:27.254714
572	0fd08e2748d242f53e1143256df5d32f928bd9a6	VXQZPQ	2012-12-19 16:13:27.484892	2012-12-19 16:13:27.484892
573	4202ac80c792b0963e56c153cf2d142e5d7f17c4	NGASUJ	2012-12-19 16:13:27.873256	2012-12-19 16:13:27.873256
574	506a24e246579454259699625a4b13ef16df83f8	JYYTTN	2012-12-19 16:13:28.086205	2012-12-19 16:13:28.086205
575	3cfc2b6bc933021802d9332d9d182ce1fb39b77a	IJJCNI	2012-12-19 16:13:28.423711	2012-12-19 16:13:28.423711
576	96188047f1ee1db90057b7022460882bb7c3cbd9	DAZRYX	2012-12-19 16:13:28.710996	2012-12-19 16:13:28.710996
577	3fa71bc8863187c0e2c28ad6907c4dea5826229f	OTKKGB	2012-12-19 16:13:29.010927	2012-12-19 16:13:29.010927
578	0a186e09ddd8b17bb4cc43c4e1f300b0e41f0a11	BQOVAO	2012-12-19 16:13:29.581789	2012-12-19 16:13:29.581789
579	02bea0ba62dbb6ae72039772d7f1ed1552ef0ce4	ADCYZS	2012-12-20 09:58:48.00066	2012-12-20 09:58:48.00066
580	53bffb1d3495821385b2a66bef59779e4d9a52ee	URFCCW	2012-12-20 10:00:33.658447	2012-12-20 10:00:33.658447
581	a2066be1bb8a9e4b0f71ebf898e90f672240198f	QYJDTG	2012-12-21 04:03:21.320426	2012-12-21 04:03:21.320426
582	48323123e9ae79ab8ca6e61b50333d19375304d8	SNQPDP	2012-12-22 16:46:59.616985	2012-12-22 16:46:59.616985
583	4183407e15ad11fd36b0d51212e2250173d9770b	XMRYZO	2012-12-22 16:49:25.111682	2012-12-22 16:49:25.111682
584	f6d05a269206bc12effe3f8f91465a833bb9ef10	OJBZNI	2012-12-22 16:49:25.394806	2012-12-22 16:49:25.394806
585	467ae7b2d257533fb286d010458324175d34a6c2	WYUAIN	2012-12-22 16:49:25.954429	2012-12-22 16:49:25.954429
586	aacdfe36784089ae35df6cc205f43ffcfac324e7	KCFRAK	2012-12-22 16:49:26.167954	2012-12-22 16:49:26.167954
587	7fd5e9979325ff25fa9fed58a844141d12186927	WMXMLK	2012-12-22 16:49:26.472255	2012-12-22 16:49:26.472255
588	07981aa98371f541e97526af2a750c5142a6e073	PTXFZC	2012-12-22 16:49:26.686196	2012-12-22 16:49:26.686196
589	c3361adff3963ef2da7f6ba2583ffb8b088d7d69	DXJPBE	2012-12-22 16:49:26.941033	2012-12-22 16:49:26.941033
590	636d849bc6df8bc4c4837e96a7c39276033bc563	AJQOBF	2012-12-22 16:49:27.13807	2012-12-22 16:49:27.13807
591	246efbfbc34bc18d7d10b67aeef4ba63ba33121d	JYUOXO	2012-12-22 16:50:26.996725	2012-12-22 16:50:26.996725
592	6ee8be8f568721fb1923c82e443deecb9d26c55c	JDBGNN	2012-12-22 16:50:27.219997	2012-12-22 16:50:27.219997
593	f7140d89f0cf14eb876bdafc50b959105541eb07	MZVDYE	2012-12-22 16:50:27.502813	2012-12-22 16:50:27.502813
594	a88c518ab79bd18fbb6ee03416c77c49535f0aed	NOPMHA	2012-12-22 16:50:27.905533	2012-12-22 16:50:27.905533
595	ca4f531d9728e78867559f4cb8789ec9d9f6fc70	UHZEBA	2012-12-22 16:50:28.303805	2012-12-22 16:50:28.303805
596	8bd737a272d937d7adb7b8446a47d96d396f6026	HLXBCB	2012-12-22 16:50:52.407686	2012-12-22 16:50:52.407686
597	03757f66a6967cafc68ca9a60b4f038efb54ce83	WPLIPC	2012-12-22 16:50:52.751686	2012-12-22 16:50:52.751686
598	7c90f312f737eb9e7377f959a2953af45ff7ac05	ZIVVVZ	2012-12-22 16:50:52.988289	2012-12-22 16:50:52.988289
599	40cb53b1ca124565fcd6d955aad455c535bf443d	FBCZZV	2012-12-22 16:50:53.293956	2012-12-22 16:50:53.293956
600	8cccc9154dbaeae68f9145afca70e5571d8dfe89	QCDRZF	2012-12-22 16:50:53.521879	2012-12-22 16:50:53.521879
601	60b7853c4213004c23161cd787e4bac14118d152	DRPUTA	2012-12-22 16:50:53.823237	2012-12-22 16:50:53.823237
602	41b39d8c3b06722ceebdffee4842a1aed1cf183b	IFSWPM	2012-12-22 16:50:54.372443	2012-12-22 16:50:54.372443
603	cc758eb1c8ebc1f6b42d5d8d12c46a653dc7e06d	BLKVOI	2012-12-22 16:51:17.133158	2012-12-22 16:51:17.133158
604	8e4dc58a0675565998ff3d4f3ffa7a3c49bef52c	PKUKAD	2012-12-22 16:51:17.546524	2012-12-22 16:51:17.546524
605	9d299cb0d8450e9e2cd73239f8f1e30474141f5e	NRGWTG	2012-12-22 16:51:37.423341	2012-12-22 16:51:37.423341
606	94107d0ee1b64240bc27953d177a1b3110ef4e03	HGDXRZ	2012-12-22 16:51:37.709912	2012-12-22 16:51:37.709912
607	27556082e35219777507e0865ccefe45b38123f7	BEAAPN	2012-12-22 16:51:37.977042	2012-12-22 16:51:37.977042
608	4826258c3d0047ee23b893153113612baf3c579a	SJSPGX	2012-12-22 16:51:59.757481	2012-12-22 16:51:59.757481
609	1129d3dea6a7fe6c16e181d72f08c476f0bd9413	JBXCCS	2012-12-22 16:52:00.130464	2012-12-22 16:52:00.130464
610	a93917e8105568b189ef2eaabad8ecdb4fa4b853	KIWKXA	2012-12-22 16:52:28.921775	2012-12-22 16:52:28.921775
611	601c4d7b55b4f654b2ff14684b746704b3e776cf	XENSHV	2012-12-22 16:52:29.224135	2012-12-22 16:52:29.224135
612	ca5d8e7a8facb517019bce08fe482fc413d15e2b	MFHVOR	2012-12-22 16:52:29.4437	2012-12-22 16:52:29.4437
613	3408287a4ff92e96030da9fd674416ac20af6d25	SPTLJC	2012-12-22 16:52:29.705572	2012-12-22 16:52:29.705572
614	2e4a0b09e7fb6b0532e26e0ce827a174398ca027	HYCIPO	2012-12-22 16:52:30.89182	2012-12-22 16:52:30.89182
615	820e36e63b08487f97c602ec2869c3b5a2fe2a33	DOCTHQ	2012-12-22 16:52:31.260424	2012-12-22 16:52:31.260424
616	aa56886a1cff6baf5642aa0b3f2d5515669adac3	EMITTU	2012-12-22 16:52:31.670239	2012-12-22 16:52:31.670239
617	9dd0281808e43d165c5dd5ca3f6d1754b48c0a11	MKYOIB	2012-12-22 16:52:31.8789	2012-12-22 16:52:31.8789
618	cb1b2e8a6f052c88adb82a85f27b153701d22e04	MKNLYG	2012-12-22 16:52:32.130949	2012-12-22 16:52:32.130949
619	7ce5898ff191431d000ed761337472ec9f8be285	QVCOKR	2012-12-22 16:52:32.41715	2012-12-22 16:52:32.41715
620	2c9cb86f82168adb7488a76d64d4ca54d4fe5e62	TAUBWR	2012-12-22 16:52:32.634266	2012-12-22 16:52:32.634266
621	adb7e99d97584552df86d4b2d8c2874865a89395	GZJIIW	2012-12-22 16:52:32.918497	2012-12-22 16:52:32.918497
622	ed72d218fb7dc24111fad404504d90a57613c6d7	EHDKZW	2012-12-22 16:52:33.143387	2012-12-22 16:52:33.143387
623	3bb74d5c9413c92a4125309559f3dfe0b4e3443b	LZHKCG	2012-12-22 16:52:33.454105	2012-12-22 16:52:33.454105
624	481941fe6c621d0aab894bb669c16421effaad41	FVMKDR	2012-12-22 16:52:33.656347	2012-12-22 16:52:33.656347
625	85032303dd12575a496a9a48befd6acafc5e25fe	UWDECZ	2012-12-22 16:52:33.920626	2012-12-22 16:52:33.920626
626	283190bf124ede07b46bd7b2c99fbc7fe33f11b4	GPFCUK	2012-12-22 16:52:34.192001	2012-12-22 16:52:34.192001
627	edf1a0d30264bef50c96d0c366a4af6d04ec91b0	LZFFFQ	2012-12-22 16:52:34.39577	2012-12-22 16:52:34.39577
628	a107d9925b1db3569768cf2f7cd068118c62335b	EMZLIL	2012-12-22 16:52:34.653989	2012-12-22 16:52:34.653989
629	6be3b7634afbbf90b9b369d5bf2eef99a90bed9b	MZIQXF	2012-12-22 16:52:34.848435	2012-12-22 16:52:34.848435
630	57dff9c096679018608558f35b990e4a4368a28d	USJJHU	2012-12-22 16:52:35.158713	2012-12-22 16:52:35.158713
631	574ec59e7582a4eeca19752f3ff251b23c77071d	OGGNSA	2012-12-22 16:52:35.391629	2012-12-22 16:52:35.391629
632	b53a86f5e0ff767a26ab13f93cc41e9caaa95ed1	ZBYVBP	2012-12-22 16:52:35.618174	2012-12-22 16:52:35.618174
633	edba8137cc9e0a20eb99a4758c4ad1f987f1b5f2	KWAXIZ	2012-12-22 16:52:35.95809	2012-12-22 16:52:35.95809
634	32dcb03c2aef57c6f5348b93f6b45b114ddbfb5c	VZBBZH	2012-12-22 16:52:36.315073	2012-12-22 16:52:36.315073
635	f9b60b069639403b0657c74e61b22ca64e0da8ba	XVYUQN	2012-12-22 16:52:36.618395	2012-12-22 16:52:36.618395
636	28d12545919ff202bd1dae88d7f440ced88db865	ERKGJY	2012-12-22 16:52:36.865057	2012-12-22 16:52:36.865057
637	f2cbd87d402f79aab4ddea86671cb2acdac5c4b7	ZHNOKE	2012-12-22 16:52:37.170638	2012-12-22 16:52:37.170638
638	c95eb5d71e518dd1f5fa8e7d48ccae3f57a84ec9	YLPSEP	2012-12-22 16:52:37.380431	2012-12-22 16:52:37.380431
639	8d45707b0d32c71eb24cdca5f0aaaaea07aaa47d	HOWMDS	2012-12-22 16:52:37.622007	2012-12-22 16:52:37.622007
640	c3922cee5d82b7755e2869042fc775e83b67a320	SKOHHR	2012-12-22 16:52:37.899056	2012-12-22 16:52:37.899056
641	8b0fad6254036ee4baef31f59f1e070b755f6371	PPWJDH	2012-12-22 16:52:38.151746	2012-12-22 16:52:38.151746
642	5cb9755861272d005b0a7032edb750f709f10c06	MEODSF	2012-12-22 16:52:38.462678	2012-12-22 16:52:38.462678
643	5e19a2196baee58c1063c3d88edb326338143150	SXQQSL	2012-12-22 16:52:40.100376	2012-12-22 16:52:40.100376
644	2c5b190474092766c46a283c20925ddee845a496	YCPHQL	2012-12-22 16:52:40.791189	2012-12-22 16:52:40.791189
645	75219ef6dee6f78d956fcb35b9c0a97cb2eed5d6	PRMKAF	2012-12-22 16:52:41.302683	2012-12-22 16:52:41.302683
646	0e5aeac39ee8a607ede08a4a18dcaee2b5461dd9	LHVMQF	2012-12-22 16:52:41.7945	2012-12-22 16:52:41.7945
647	89bbc3a27932dd74b8c55ba25ec91d1676da68a0	GBMSKH	2012-12-22 17:39:39.210142	2012-12-22 17:39:39.210142
\.


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY tickets (id, agency_id, moderator_id, message_id, closed, messages_count, created_at, updated_at, admin_new_messages_count, agency_new_messages_count, last_message_created_at, company_name, closer_id) FROM stdin;
162	51	52	\N	f	\N	2012-09-23 10:42:04.844501	2012-10-23 15:13:51.307016	0	0	2012-09-23 10:42:04.900999	ООО "ТК "Время отдыхать!"	\N
\.


--
-- Data for Name: tickets_hotel_cities; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY tickets_hotel_cities (ticket_id, city_id) FROM stdin;
\.


--
-- Data for Name: user_admin_profiles; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY user_admin_profiles (id, name, phone, fax, skype, contract_number, admin_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: emerald_city_user
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, password_salt, failed_attempts, unlock_token, locked_at, role, type, is_partner, new_messages_count, save_hotel_search_query, hotel_search_query) FROM stdin;
3	agency@example.com	078987660c0bf07e0d843d13210f4daecf2bb3ec1f6088707460ed52cee39d8d1a1565b974f9672e7ec5fa40bcf840bbcb6653cf9357c429e8ad4a303390e243	\N	\N	\N	3	2012-11-20 05:43:43.406227	2012-08-31 13:38:19.060785	85.175.226.36	77.121.61.200	M8yCRvF7jb29cnt32QuF	1	\N	\N	\N	User::Agency	f	\N	t	
2	moderator@example.com	b0ec819dbd360b986324a4e387e98240ce697c592e603a68881ec70767712e28744a50104cf7975e47dfa5359e7f086675ccf36c057b865cd1e7bb44389df6c5	\N	\N	\N	2	2012-09-08 08:31:03.758767	2012-08-31 13:39:14.801042	77.121.61.200	77.121.61.200	5H1S7eazqnZttkqGMqYm	0	\N	\N	\N	User::Moderator	\N	0	t	
51	vremya_otdihat@mail.ru	19aa98c94a9a4232c92428ab608c2b43a2b6f5ae8088d32b80ee4101dd39cab6feb2bd01524a8cc20c5771c5161565d0f9ed9d3fe971bf2ff2c263a7801b5999	\N	\N	\N	1	2012-09-23 10:11:53.663654	2012-09-23 10:11:53.663654	83.221.209.230	83.221.209.230	68qvF1Pza6viysfvZEqy	0	\N	\N	\N	User::Agency	t	\N	t	utf8=%E2%9C%93&hotel%5Bname%5D=&hotel%5Bbooking_id%5D=1&hotel%5Bfind_city%5D=&hotel%5Bstreet%5D=&filters%5B1%5D=2&ao=&price_summer%5Bfrom%5D=100&price_summer%5Bto%5D=30000&price_high_season%5Bfrom%5D=100&price_high_season%5Bto%5D=30000&price_winter%5Bfrom%5D=100&price_winter%5Bto%5D=30000&places_count%5Bfrom%5D=1&places_count%5Bto%5D=10&additional_places_count%5Bfrom%5D=0&additional_places_count%5Bto%5D=10&per_page=10&save_hotel_search_query=yes
1	admin@emerald-world.ru	44dd7775aa93eeb5538aaeec1454c07f6ad4d49b60fd2da1c6529cedc8f0728cfed8d935f5c41f552f53926ac0349e78c24204c782009e1dc974b7d0b63981fc	\N	\N	2012-12-22 18:28:46.884627	65	2012-12-22 18:28:46.895492	2012-12-22 16:10:23.338134	46.61.11.209	46.61.11.209	vgBS4xwaDSiGsur6p5sA	0	\N	\N	\N	\N	\N	\N	t	page=1&per_page=50
52	glinda@emerald-world.ru	3e2979553729a2a56122bf50861532c8497f679cbcd093d5bd1fe286ae340661269f47d1d4c0bfd5a100238c6e413d52dc92d34a9caa146310d0b05184c94df0	\N	\N	\N	69	2012-12-19 14:55:40.111968	2012-12-19 11:25:51.970094	31.15.81.81	31.15.81.81	rdRgfbqdvJjaq4pMSxsi	0	\N	\N	\N	User::Moderator	\N	0	t	utf8=%E2%9C%93&hotel%5Bname%5D=%D0%94%D0%B5+%D0%9C%D0%B0%D1%80%D0%BA%D0%BE&hotel%5Bbooking_id%5D=&hotel%5Bfind_city%5D=&hotel%5Bstreet%5D=&filters%5B1%5D=&ao=&price_summer%5Bfrom%5D=100&price_summer%5Bto%5D=30000&price_high_season%5Bfrom%5D=100&price_high_season%5Bto%5D=30000&price_winter%5Bfrom%5D=100&price_winter%5Bto%5D=30000&places_count%5Bfrom%5D=1&places_count%5Bto%5D=10&additional_places_count%5Bfrom%5D=0&additional_places_count%5Bto%5D=10&per_page=10&save_hotel_search_query=yes
\.


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: change_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY change_logs
    ADD CONSTRAINT change_logs_pkey PRIMARY KEY (id);


--
-- Name: contact_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY contact_messages
    ADD CONSTRAINT contact_messages_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: documents_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- Name: hotel_bank_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_bank_attributes
    ADD CONSTRAINT hotel_bank_attributes_pkey PRIMARY KEY (id);


--
-- Name: hotel_bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_bookings
    ADD CONSTRAINT hotel_bookings_pkey PRIMARY KEY (id);


--
-- Name: hotel_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_cities
    ADD CONSTRAINT hotel_cities_pkey PRIMARY KEY (id);


--
-- Name: hotel_filter_items_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_filter_items
    ADD CONSTRAINT hotel_filter_items_pkey PRIMARY KEY (id);


--
-- Name: hotel_filter_values_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_filter_values
    ADD CONSTRAINT hotel_filter_values_pkey PRIMARY KEY (id);


--
-- Name: hotel_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_filters
    ADD CONSTRAINT hotel_filters_pkey PRIMARY KEY (id);


--
-- Name: hotel_images_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_images
    ADD CONSTRAINT hotel_images_pkey PRIMARY KEY (id);


--
-- Name: hotel_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_reviews
    ADD CONSTRAINT hotel_reviews_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_field_values_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_field_values
    ADD CONSTRAINT hotel_room_field_values_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_fields
    ADD CONSTRAINT hotel_room_fields_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_list_items_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_list_items
    ADD CONSTRAINT hotel_room_list_items_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_list_values_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_list_values
    ADD CONSTRAINT hotel_room_list_values_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_lists
    ADD CONSTRAINT hotel_room_lists_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_photos
    ADD CONSTRAINT hotel_room_photos_pkey PRIMARY KEY (id);


--
-- Name: hotel_room_types_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_room_types
    ADD CONSTRAINT hotel_room_types_pkey PRIMARY KEY (id);


--
-- Name: hotel_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_rooms
    ADD CONSTRAINT hotel_rooms_pkey PRIMARY KEY (id);


--
-- Name: hotel_service_values_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_service_values
    ADD CONSTRAINT hotel_service_values_pkey PRIMARY KEY (id);


--
-- Name: hotel_services_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_services
    ADD CONSTRAINT hotel_services_pkey PRIMARY KEY (id);


--
-- Name: hotel_special_offers_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_special_offers
    ADD CONSTRAINT hotel_special_offers_pkey PRIMARY KEY (id);


--
-- Name: hotel_streets_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_streets
    ADD CONSTRAINT hotel_streets_pkey PRIMARY KEY (id);


--
-- Name: hotel_types_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotel_types
    ADD CONSTRAINT hotel_types_pkey PRIMARY KEY (id);


--
-- Name: hotels_bank_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotels_bank_attributes
    ADD CONSTRAINT hotels_bank_attributes_pkey PRIMARY KEY (id);


--
-- Name: hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);


--
-- Name: mercury_images_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY mercury_images
    ADD CONSTRAINT mercury_images_pkey PRIMARY KEY (id);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: messages_users_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY messages_users
    ADD CONSTRAINT messages_users_pkey PRIMARY KEY (id);


--
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: profile_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY profile_notes
    ADD CONSTRAINT profile_notes_pkey PRIMARY KEY (id);


--
-- Name: profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: simple_captcha_data_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY simple_captcha_data
    ADD CONSTRAINT simple_captcha_data_pkey PRIMARY KEY (id);


--
-- Name: tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- Name: user_admin_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY user_admin_profiles
    ADD CONSTRAINT user_admin_profiles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: emerald_city_user; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX delayed_jobs_priority ON delayed_jobs USING btree (priority, run_at);


--
-- Name: idx_key; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX idx_key ON simple_captcha_data USING btree (key);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_cities_tickets_on_ticket_id_and_city_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_cities_tickets_on_ticket_id_and_city_id ON cities_tickets USING btree (ticket_id, city_id);


--
-- Name: index_hotel_bank_attributes_on_hotel_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_bank_attributes_on_hotel_id ON hotel_bank_attributes USING btree (hotel_id);


--
-- Name: index_hotel_filter_items_on_filter_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_filter_items_on_filter_id ON hotel_filter_items USING btree (filter_id);


--
-- Name: index_hotel_filter_values_on_filter_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_filter_values_on_filter_id ON hotel_filter_values USING btree (filter_id);


--
-- Name: index_hotel_filter_values_on_hotel_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_filter_values_on_hotel_id ON hotel_filter_values USING btree (hotel_id);


--
-- Name: index_hotel_filter_values_on_item_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_filter_values_on_item_id ON hotel_filter_values USING btree (item_id);


--
-- Name: index_hotel_images_on_hotel_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_images_on_hotel_id ON hotel_images USING btree (hotel_id);


--
-- Name: index_hotel_reviews_on_hotel_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_reviews_on_hotel_id ON hotel_reviews USING btree (hotel_id);


--
-- Name: index_hotel_room_field_values_on_field_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_room_field_values_on_field_id ON hotel_room_field_values USING btree (field_id);


--
-- Name: index_hotel_rooms_on_type_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_hotel_rooms_on_type_id ON hotel_rooms USING btree (type_id);


--
-- Name: index_messages_have_read_users_on_message_id_and_user_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_messages_have_read_users_on_message_id_and_user_id ON messages_have_read_users USING btree (message_id, user_id);


--
-- Name: index_messages_on_ticket_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_messages_on_ticket_id ON messages USING btree (ticket_id);


--
-- Name: index_messages_on_user_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_messages_on_user_id ON messages USING btree (user_id);


--
-- Name: index_profiles_on_user_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_profiles_on_user_id ON profiles USING btree (user_id);


--
-- Name: index_rooms_users_on_user_id_and_room_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_rooms_users_on_user_id_and_room_id ON rooms_users USING btree (user_id, room_id);


--
-- Name: index_tickets_on_admin_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_tickets_on_admin_id ON tickets USING btree (moderator_id);


--
-- Name: index_tickets_on_agency_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_tickets_on_agency_id ON tickets USING btree (agency_id);


--
-- Name: index_tickets_on_message_id; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE INDEX index_tickets_on_message_id ON tickets USING btree (message_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON users USING btree (unlock_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: emerald_city_user; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

