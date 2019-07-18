/**
 * Miguel �ngel Torres Vargas
 * C�digo: 55215016
 * Ingenier�a de Sistemas
 * Universidad De Boyac�
**/


/** Librerias **/
:- use_module(library(pce)).

:-pce_image_directory('./imagenes').
resource(imagen1,image,image('logo.jpg')).

%Hechos
presidente('Juan de Dios Aranzazu',[1841,1842]).
presidente('Tom�s Cipriano de Mosquera',[1845,1846,1847,1848]).
presidente('Jos� Hilario L�pez',[1849,1850,1851,1852]).
presidente('Jos� Mar�a Obando',[1853]).
presidente('Jos� de Obald�a',[1854]).
presidente('Manuel Mar�a Mallarino',[1855,1856]).
presidente('Mariano Ospina Rodriguez',[1857,1858,1859,1860]).
presidente('Tom�s Cipriano Mosquera',[1861,1862,1863]).
presidente('Jos� Manuel Marroqu�n Ricaurte',[1901,1902,1903,1904]).
presidente('Rafael Reyes Prieto',[1905,1906,1907,1908]).
presidente('Carlos Holgu�n Mari�o',[1888,1889,1890,1891]).
presidente('Miguel Antonio Caro',[1892,1893,1894,1895,1896,1897]).
presidente('Manuel Antonio Sanclemente',[1898,1899,1900]).
presidente('Laureano G�mez Castro',[1951]).
presidente('Roberto Urdaneta Arbel�ez',[1952,1953]).
presidente('Tom�s Cipriano Mosquera',[1866]).
presidente('Santos Acosta',[1867]).
presidente('Santos Guti�rrez Prieto',[1868,1869]).
presidente('Eustorgio Salgar',[1870,1871]).
presidente('Manuel Murillo Toro',[1872,1873]).
presidente('Santiago P�rez Manosalva',[1874,1875]).
presidente('Gustavo Rojas Pinilla',[1954,1955,1956,1957]).
presidente('Junta Militar de Gobierno',[1958]).
presidente('Andr�s Pastrana Arango',[1999,2000,2001,2002]).
presidente('Alvaro Uribe V�lez',[2003,2004,2005,2006,2007,2008,2009,2010]).
presidente('Juan Manuel Santos Calderon',[2011,2012,2013,2014,2015,2016,2017]).
presidente('Ram�n Gonz�lez Valencia',[1909,1910]).
presidente('Guillermo Le�n Valencia',[1963,1964,1965,1966]).
presidente('Carlos Lleras Restrepo',[1967,1968,1969,1970]).
presidente('Misael Eduardo Pastrana Borrero',[1971,1972,1973,1974]).
presidente('Alfonso L�pez Michelsen',[1975,1976,1977,1978]).
presidente('Pedro Nel Ospina V�squez',[1923,1924,1925,1926]).
presidente('Rafael N��ez Moledo',[1880,1881]).
presidente('Jos� Eusebio Ot�lora',[1882,1883]).
presidente('Julio C�sar Turbay Ayala',[1979,1980,1981,1982]).
presidente('Belisario Betancur Cuartas',[1983,1984,1984,1986]).
presidente('Virgilio Barco Vargas',[1987,1988,1989,1990]).
presidente('C�sar Augusto Gaviria Trujullo',[1991,1992,1993,1994]).
presidente('Ernesto Samper Pizano',[1995,1996,1997,1998]).
presidente('Carlos Eugenio Restrepo',[1911,1912,1913,1914]).
presidente('Jos� Vicente Concha',[1915,1916,1917,1918]).
presidente('Marco Fidel Su�rez',[1919,1920]).
presidente('Jorge Holgu�n Mallarino',[1921,1922]).
presidente('Rafael N��ez Moledo',[1884,1885]).
presidente('Eliseo Pay�n',[1887]).
presidente('Ivan Duque Marquez',[2018,2019,2020,2021,2022]).

/** Metodo de Busqueda **/
buscar(N1,R):- atom_number(N1,N1c),
               presidente(P,L),member(N1c,L),
               send(R,selection,P).


/** Desarrollo de Interfaz **/
:-
    new(Dialogo,dialog('Presidentes Colombianos')),
    new(Etiqueta,label(nombre,'Ultimos presidentes')),
    new(Caja1,text_item('Digite el a�o:')),
    new(Caja2,text_item('El presidente fue: ')),
    new(Boton1,button('Buscar',message(@prolog,buscar,Caja1?selection,Caja2))),
    new(Boton2,button('Salir',message(Dialogo,destroy))),
    new(Etiquetaimg,label(nombre2,resource(imagen1))),
    send(Etiqueta,font,font(tahoma,bold,15)),
    send(Caja2,editable,false),
    send(Dialogo,display,Etiqueta,point(70,10)),
    send(Dialogo,display,Etiquetaimg,point(60,40)),
    send(Dialogo,display,Caja1,point(30,360)),
    send(Dialogo,display,Caja2,point(15,390)),
    send(Dialogo,display,Boton1,point(140,420)),
    send(Dialogo,display,Boton2,point(230,420)),
    send(Dialogo,open).

