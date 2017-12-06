-- CREATE DATABASE js_dw;

CREATE TABLE LK_THEMES (
                id integer NOT NULL,
                theme CHAR(50) NOT NULL,
                PRIMARY KEY (id)
);

-- ALTER TABLE LK_THEMES COMMENT '';


CREATE TABLE LK_PIECES (
                id integer NOT NULL,
                min integer DEFAULT 0 NOT NULL,
                max integer DEFAULT 0 NOT NULL,
                description CHAR(30) NOT NULL
);

-- ALTER TABLE LK_PIECES COMMENT '';


CREATE TABLE LK_REGIONS_2 (
                id integer NOT NULL,
                city CHAR(30) DEFAULT 'N/A' NOT NULL,
                country CHAR(30) DEFAULT 'N/A' NOT NULL,
                region CHAR(30) DEFAULT 'N/A' NOT NULL,
                id_js integer DEFAULT 0 NOT NULL,
                start_date DATE,
                end_date DATE,
                version integer DEFAULT 1 NOT NULL,
                current CHAR(1) DEFAULT 'Y' NOT NULL,
                lastupdate DATE,
                PRIMARY KEY (id)
);

-- ALTER TABLE LK_REGIONS_2 COMMENT '';


CREATE TABLE FT_PUZZ_SALES (
                date integer NOT NULL,
                id_manufacturer integer NOT NULL,
                id_region integer NOT NULL,
                id_junk_prod integer NOT NULL,
                id_puzzle integer NOT NULL,
                id_pieces integer NOT NULL,
                quantity integer NOT NULL
);

-- ALTER TABLE FT_PUZZ_SALES COMMENT '';


CREATE TABLE FT_SALES (
                date integer NOT NULL,
                id_manufacturer integer NOT NULL,
                id_region integer NOT NULL,
                id_junk_sales integer NOT NULL,
                product_type CHAR(10) NOT NULL,
                quantity integer DEFAULT 0 NOT NULL,
                amount NUMERIC(8,2) DEFAULT 0 NOT NULL
);

-- ALTER TABLE FT_SALES COMMENT '';
-- COMMENT ON COLUMN FT_SALES.product_type IS 'puzzle or accesory';


CREATE TABLE LK_JUNK_SALES (
                id integer NOT NULL,
                buy_method CHAR(25) NOT NULL,
                payment_method CHAR(25) NOT NULL,
                PRIMARY KEY (id, buy_method, payment_method)
);

-- ALTER TABLE LK_JUNK_SALES COMMENT '';


CREATE TABLE LK_JUNK_PROD (
                id integer NOT NULL,
                glowsInDark CHAR(1) NOT NULL,
                is3D CHAR(1) NOT NULL,
                wooden CHAR(1) NOT NULL,
                isPanoramic CHAR(1) NOT NULL,
                nrPuzzles smallint NOT NULL,
                PRIMARY KEY (id, glowsInDark, is3D, wooden, isPanoramic, nrPuzzles)
);

-- ALTER TABLE LK_JUNK_PROD COMMENT '';


CREATE TABLE LK_PUZZLES (
                id integer NOT NULL,
                name CHAR(35) DEFAULT 'N/A' NOT NULL,
                theme CHAR(50) DEFAULT 'N/A' NOT NULL,
                id_js_prod CHAR(8) DEFAULT 00000000 NOT NULL,
                id_js_man CHAR(3) DEFAULT 000 NOT NULL,
                start_date DATE,
                end_date DATE,
                version integer DEFAULT 1 NOT NULL,
                current CHAR(1) DEFAULT 'Y' NOT NULL,
                lastupdate DATE,
                PRIMARY KEY (id)
);

-- ALTER TABLE LK_PUZZLES COMMENT '';


CREATE TABLE LK_MANUFACTURERS (
                id integer NOT NULL,
                name CHAR(25) DEFAULT 'N/A' NOT NULL,
                id_js CHAR(3) NOT NULL,
                lastupdate DATE,
                PRIMARY KEY (id)
);

-- ALTER TABLE LK_MANUFACTURERS COMMENT '';


CREATE TABLE LK_REGIONS (
                id integer NOT NULL,
                city CHAR(30) DEFAULT 'N/A' NOT NULL,
                country CHAR(30) DEFAULT 'N/A' NOT NULL,
                region CHAR(30) DEFAULT 'N/A' NOT NULL,
                id_js integer NOT NULL,
                lastupdate DATE,
                PRIMARY KEY (id)
);

-- ALTER TABLE LK_REGIONS COMMENT '';

CREATE TABLE LK_TIME_SIMPLE (
                dateid integer NOT NULL,
                year integer NOT NULL,
                month smallint NOT NULL,
                day smallint NOT NULL,
                week_day smallint NOT NULL,
                PRIMARY KEY (dateid)
);


CREATE TABLE LK_TIME (
                dateid integer NOT NULL,
                year integer NOT NULL,
                month smallint NOT NULL,
                day smallint NOT NULL,
                week_day smallint NOT NULL,
                week_desc CHAR(10) NOT NULL,
                week_short_desc CHAR(3) NOT NULL,
                month_desc CHAR(10) NOT NULL,
                month_short_desc CHAR(3) NOT NULL,
                PRIMARY KEY (dateid)
);

-- ALTER TABLE LK_TIME COMMENT 'Time Dimension';