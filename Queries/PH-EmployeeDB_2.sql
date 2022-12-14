PGDMP         8                z           PH-EmployeeDB    14.5    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16806    PH-EmployeeDB    DATABASE     Z   CREATE DATABASE "PH-EmployeeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "PH-EmployeeDB";
                postgres    false            ?            1259    16807    departments    TABLE     }   CREATE TABLE public.departments (
    dept_no character varying(4) NOT NULL,
    dept_name character varying(40) NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            ?            1259    16932    dept_employee    TABLE     ?   CREATE TABLE public.dept_employee (
    emp_no integer NOT NULL,
    dept_no character varying NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
 !   DROP TABLE public.dept_employee;
       public         heap    postgres    false            ?            1259    16865    dept_manager    TABLE     ?   CREATE TABLE public.dept_manager (
    dept_no character varying(4) NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
     DROP TABLE public.dept_manager;
       public         heap    postgres    false            ?            1259    16819 	   employees    TABLE     ?   CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    gender character varying NOT NULL,
    hire_date date NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?            1259    16826    salaries    TABLE     ?   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
    DROP TABLE public.salaries;
       public         heap    postgres    false            ?            1259    16843    titles    TABLE     ?   CREATE TABLE public.titles (
    emp_no character varying(4) NOT NULL,
    title character varying,
    from_date date NOT NULL,
    to_date date NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false                      0    16807    departments 
   TABLE DATA           9   COPY public.departments (dept_no, dept_name) FROM stdin;
    public          postgres    false    209   ?                 0    16932    dept_employee 
   TABLE DATA           L   COPY public.dept_employee (emp_no, dept_no, from_date, to_date) FROM stdin;
    public          postgres    false    214   O                 0    16865    dept_manager 
   TABLE DATA           K   COPY public.dept_manager (dept_no, emp_no, from_date, to_date) FROM stdin;
    public          postgres    false    213   l                 0    16819 	   employees 
   TABLE DATA           a   COPY public.employees (emp_no, birth_date, first_name, last_name, gender, hire_date) FROM stdin;
    public          postgres    false    210   ?                 0    16826    salaries 
   TABLE DATA           F   COPY public.salaries (emp_no, salary, from_date, to_date) FROM stdin;
    public          postgres    false    211   ?                 0    16843    titles 
   TABLE DATA           C   COPY public.titles (emp_no, title, from_date, to_date) FROM stdin;
    public          postgres    false    212   ?       z           2606    16813 %   departments departments_dept_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_dept_name_key UNIQUE (dept_name);
 O   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_dept_name_key;
       public            postgres    false    209            |           2606    16811    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    209            ?           2606    16938     dept_employee dept_employee_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dept_employee
    ADD CONSTRAINT dept_employee_pkey PRIMARY KEY (emp_no);
 J   ALTER TABLE ONLY public.dept_employee DROP CONSTRAINT dept_employee_pkey;
       public            postgres    false    214            ?           2606    16869    dept_manager dept_manager_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no, dept_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public            postgres    false    213    213            ~           2606    16825    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    210            ?           2606    16830    salaries salaries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_pkey;
       public            postgres    false    211            ?           2606    16849    titles titles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (emp_no);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    212            ?           2606    16875 &   dept_manager dept_manager_dept_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
 P   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_dept_no_fkey;
       public          postgres    false    209    213    3452            ?           2606    16870 %   dept_manager dept_manager_emp_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 O   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_emp_no_fkey;
       public          postgres    false    213    210    3454            ?           2606    16831    salaries salaries_emp_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 G   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_emp_no_fkey;
       public          postgres    false    210    211    3454               ?   x?5??
1 ??W?$??V??@??fI?3\??Mr??{A,g?g?:????A9cVp??l???5"??T?Rnr7I???7?&
??K;?W?|t????z???$??W?#?j.)???d????PJ}l1W            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?     