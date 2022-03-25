/* SCHEMA */

drop table if exists stellar_class;
create table stellar_class
(
	obj_ID float,
	alpha float,
	delta float,
	u float,
	g float,
	r float,
	i float,
	z float,
	run_ID int, 
	rerun_ID int,
	cam_col int,
	field_ID int,
	spec_obj_ID float,
	class varchar(40),
	redshift float,
	plate int,
	MJD int,
	fiber_ID int,
	
	PRIMARY KEY (obj_ID, spec_obj_ID)
);
SELECT * FROM stellar_class;

drop table if exists stellar_features;
create table stellar_features
(
	obj_ID float,
	spec_obj_ID float,
	alpha float,
	delta float,
	redshift float,
	class varchar(40),
	
	PRIMARY KEY (obj_ID, spec_obj_ID)
	
);

INSERT INTO stellar_features (
	obj_ID, 
	spec_obj_ID,
	alpha,
	delta,
	redshift,
	class
) SELECT 
	obj_ID,
	spec_obj_ID,
	alpha,
	delta,
	redshift,
	class
FROM stellar_class;

SELECT * FROM stellar_features

drop table if exists stellar_filters;
create table stellar_filters
(
	obj_ID float,
	spec_obj_ID float,
	u float,
	g float,
	r float,
	i float,
	z float,
	class varchar(40),
	
	PRIMARY KEY (obj_ID, spec_obj_ID)
	
);

INSERT INTO stellar_filters (
	obj_ID,
	spec_obj_ID,
	u,
	g,
	r,
	i,
	z,
	class
) SELECT 
	obj_ID,
	spec_obj_ID,
	u,
	g,
	r,
	i,
	z,
	class
FROM stellar_class;

SELECT * FROM stellar_filters

drop table if exists stellar_misc;
create table stellar_misc
(
	obj_ID float,
	spec_obj_ID float,
	run_ID int, 
	rerun_ID int,
	cam_col int,
	field_ID int,
	class varchar(40),
	redshift float,
	plate int,
	MJD int,
	fiber_ID int,
	
	PRIMARY KEY (obj_ID, spec_obj_ID)
	
);

INSERT INTO stellar_misc (
	obj_ID,
	spec_obj_ID,
	run_ID, 
	rerun_ID,
	cam_col,
	field_ID,
	class,
	redshift,
	plate,
	MJD,
	fiber_ID
) SELECT 
	obj_ID,
	spec_obj_ID,
	run_ID, 
	rerun_ID,
	cam_col,
	field_ID,
	class,
	redshift,
	plate,
	MJD,
	fiber_ID
FROM stellar_class;
SELECT * FROM stellar_misc

drop table if exists stellar_join;
create table stellar_join
(
	obj_ID float,
	alpha float,
	delta float,
	u float,
	g float,
	r float,
	i float,
	z float,
	run_ID int, 
	rerun_ID int,
	cam_col int,
	field_ID int,
	spec_obj_ID float,
	class varchar(40),
	redshift float,
	plate int,
	MJD int,
	fiber_ID int,
	
	PRIMARY KEY (obj_ID, spec_obj_ID)
);
INSERT INTO stellar_join(
	obj_ID,
	alpha,
	delta,
	u,
	g,
	r,
	i,
	z,
	run_ID,
	rerun_ID,
	cam_col,
	field_ID,
	spec_obj_ID,
	class,
	redshift,
	plate,
	MJD,
	fiber_ID
)
SELECT 
		fe.obj_ID,
		fe.alpha,
		fe.delta,
		fi.u,
		fi.g,
		fi.r,
		fi.i,
		fi.z,
		mi.run_ID, 
		mi.rerun_ID,
		mi.cam_col,
		mi.field_ID,
		fe.spec_obj_ID,
		mi.class,
		fe.redshift,
		mi.plate,
		mi.MJD,
		mi.fiber_ID
	FROM stellar_features AS fe
	INNER JOIN stellar_filters AS fi ON (fe.spec_obj_ID, fe.obj_ID) = (fi.spec_obj_ID, fi.obj_ID)
	INNER JOIN stellar_misc as mi on (mi.spec_obj_ID, mi.obj_ID) =  (fi.spec_obj_ID, fi.obj_ID)
;

SELECT * FROM stellar_join
