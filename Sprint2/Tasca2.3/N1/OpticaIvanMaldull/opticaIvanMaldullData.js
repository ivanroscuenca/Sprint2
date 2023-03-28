

// create only glasses, inside supplier, inside address
use('OpticaIvanMaldull');

db.glasses.insertMany([
{
"_id": 1,
"brand" : "Rayban",
"Glasses_pres_right_eye": 1.5,
"Glasses_pres_left_eye":2.25,
"frame":"Plastic",
"colour_frame":"Black",
"glass_colour":"Dark",
"price":100,
"supplier":
      { '_id': 1, 
  'Supplier_name': 'Rayban', 
  'Address': {'street':'Diagonal','number':123,'floor':4,'door':1,'city':'Barcelona','zip':'08013','country':'Spain'},
'Supplier_tel':934493939,
'Supplier_fax':934567891,
'NIF':'36546789X',
   }
},
 {
"_id": 2,
"brand" : "Oakley",
"Glasses_pres_right_eye": 2.5,
"Glasses_pres_left_eye":3.25,
"frame":"Plastic",
"colour_frame":"Red",
"glass_colour":"white",
"price":120,
"supplier":
     { '_id': 2, 
  'Supplier_name': 'Oakley', 
  'Address': {'street':"Marina",'number':300,'floor':3,'door':2,'city':'Barcelona','zip':'08025','country':'Spain'},
'Supplier_tel':934493678,
'Supplier_fax':934567679,
'NIF':'56546789L'
   }
},
{
"_id": 3,
"brand" : "Arnette",
"Glasses_pres_right_eye": 1.5,
"Glasses_pres_left_eye":2.25,
"frame":"Plastic",
"colour_frame":"Black",
"glass_colour":"white",
"price":100,
"supplier":
        { '_id': 3, 
  'Supplier_name': 'Arnette', 
  'Address': {'street':"Gran via",'number':13,'floor':1,'door':1,'city':'Barcelona','zip':'08011','country':'Spain'},
'Supplier_tel':932345678,
'Supplier_fax':932345679,
'NIF':'36546719A'
   }
},

{
"_id": 4,
"brand" : "Olle",
"Glasses_pres_right_eye": 1.25,
"Glasses_pres_left_eye":4.25,
"frame":"Metalic",
"colour_frame":"Green",
"glass_colour":"white",
"price":130,
"supplier":
{ '_id': 4, 
  'Supplier_name': 'Olle', 
  'Address': {'street':"Riera Blanca",'number':12,'floor':1,'door':1,'city':'Hospitalet','zip':'08067','country':'Spain'},
'Supplier_tel':934493931,
'Supplier_fax':934567832,
'NIF':'26546789O'
   }
},
{
"_id": 5,
"brand" : "Hawkers",
"Glasses_pres_right_eye": 1.5,
"Glasses_pres_left_eye":2.25,
"frame":"Plastic",
"colour_frame":"Yellow",
"glass_colour":"Dark",
"price":100,
"supplier":
        { '_id': 5, 
  'Supplier_name': 'Hawkers', 
  'Address': {'street':"Mayor",'number':12,'floor':4,'door':2,'city':'Madrid','zip':'28001','country':'Spain'},
'Supplier_tel':914493900,
'Supplier_fax':914493901,
'NIF':'46546789H'
   }
}
]);

//create sales inside clients

use('OpticaIvanMaldull');
db.sales.insertMany([
{"_id": 1,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Jordi",
"glass_id" : 1,
"client":
{
"client_id":1,
"Clients_name":"Antonio Prada",
"Clients_zip" :"08011",
"Clients_tel":666555444,
"Clients_email":"tprada@gmail.com",
"Clients_registration":"2021-01-01 00:00:00",
"Clients_referal":0
}
} ,
{"_id": 2,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Joan",
"glass_id" : 2,
"client":
{
"client_id":2,
"Clients_name" :"Marc Anton Fornells",
"Clients_zip" :"08015",
"Clients_tel":666555111,
"Clients_email":"mfornells@gmail.com",
"Clients_registration" :"2022-01-01 00:00:00",
"Clients_referal":1
}
} ,

{"_id": 3,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Joana",
"glass_id" : 3,
"client":
{
"client_id":3,
"Clients_name" :"Raul Gil",
"Clients_zip" :"08021",
"Clients_tel":666555222,
"Clients_email":"rgil@gmail.com",
"Clients_registration" :"2022-04-01 00:00:00",
"Clients_referal":0
}
} ,

{"_id": 4,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Jordi",
"glass_id" : 4,
"client":
{
"client_id":4,
"Clients_name" :"Salvador Santamaria",
"Clients_zip" :"08004",
"Clients_tel":666777999,
"Clients_email":"ssanta@gmail.com",
"Clients_registration" :"2022-06-01 00:00:00",
"Clients_referal":2,
}


} ,
{"_id": 5,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Jordi",
"glass_id" : 5,
"client":
{
"client_id":5,
"Clients_name" :"Manuel Cuenca",
"Clients_zip" :"08001",
"Clients_tel":666777888,
"Clients_email":"mcuenca@gmail.com",
"Clients_registration" :"2023-01-01 00:00:00",
"Clients_referal":3,
}
} ,
{"_id": 6,
"sale_date": new Date("2022-01-01T11:25"),
"price": 100,
"payment":"card",
"employee_name":"Joana",
"glass_id" : 5,
"client":
{
"client_id":1,
"Clients_name":"Antonio Prada",
"Clients_zip" :"08011",
"Clients_tel":666555444,
"Clients_email":"tprada@gmail.com",
"Clients_registration":"2021-01-01 00:00:00",
"Clients_referal":0
}
} 
]);