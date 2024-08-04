DROP TABLE IF EXISTS restaurant;
DROP TABLE IF EXISTS food;

CREATE TABLE IF NOT EXISTS restaurant
(
    res_id SERIAL,
    resName VARCHAR(255) NOT NULL,
    resAddress text NOT NULL,
    cuisine text,
    resImage text,
    rating numeric,
    CONSTRAINT restaurant_pkey PRIMARY KEY (res_id)
);

CREATE TABLE IF NOT EXISTS food
(
    food_id SERIAL,
    foodName VARCHAR(255) NOT NULL,
    category text,
    amount numeric NOT NULL,
    rest_id integer,
    foodType boolean,
    CONSTRAINT food_pkey PRIMARY KEY (food_id),
    CONSTRAINT fk_rest_id FOREIGN KEY (rest_id)
        REFERENCES public.restaurant (res_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT res_id FOREIGN KEY (food_id)
        REFERENCES public.restaurant (res_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Spice Symphony','MG Road','Indian, Chinese, Continental','https://media.istockphoto.com/id/904547646/photo/modern-black-burger-on-wooden-board-toned-picture.webp?s=170667a&w=0&k=20&c=tFXWmHiigylyRvSmVGRlZFvd9guSp3xMuClJUdTIsMA=','4.5') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Ocean Breeze','Marine Drive','Seafood, Italian','https://images.unsplash.com/photo-1561586003-e1bcd340f5d9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','4.2') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Green Valley', 'Lalbagh', 'Vegetarian, South-Indian', 'https://images.unsplash.com/photo-1646614699785-2a4e78144722?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.6') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Skyline Diner', 'Brigade Road','American, Fast Food', 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?q=80&w=2050&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.4') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Mountain Retreat', 'Nandi Hills', 'Continental, Indian', 'https://images.unsplash.com/photo-1634148649480-07a33d222040?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.7') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Spice Symphony','MG Road','Indian, Chinese, Continental','https://media.istockphoto.com/id/904547646/photo/modern-black-burger-on-wooden-board-toned-picture.webp?s=170667a&w=0&k=20&c=tFXWmHiigylyRvSmVGRlZFvd9guSp3xMuClJUdTIsMA=','4.5') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Ocean Breeze','Marine Drive','Seafood, Italian','https://images.unsplash.com/photo-1561586003-e1bcd340f5d9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','4.2') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Green Valley', 'Lalbagh', 'Vegetarian, South-Indian', 'https://images.unsplash.com/photo-1646614699785-2a4e78144722?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.6') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Skyline Diner', 'Brigade Road','American, Fast Food', 'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?q=80&w=2050&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.4') ;

INSERT INTO public.restaurant(
	resName, resAddress, cuisine, resImage, rating)
	VALUES ('Mughal Hotel', 'Race Course', 'Continental, Arabian', 'https://images.unsplash.com/photo-1543992321-cefacfc2322e?q=80&w=2050&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '4.7') ;

