//jshint esversion: 6

var express = require('express');
var mysql = require('mysql');
const pug = require("pug");
var path = require('path');
var fs = require('fs');

var json = fs.readFileSync('data.json');
let data_RAW = JSON.parse(json);

const homepageTemplate = pug.compileFile("./templates/index.pug");
//create connection
var conn = mysql.createConnection({
  host: "database251covid.crhpcoqeujnf.us-east-2.rds.amazonaws.com",
  user: "onanong",
  password: "1212312121",
  database: "Covid19_Project"
});

var retrieved = false;

var queryData = {
  patient_ID_Count : undefined,
  confirmed_cases_by_Province_State : undefined,
  total_Active : undefined,
  total_Deaths : undefined,
  total_Recovered : undefined,
  deaths : undefined,
  recovered_Cases : undefined,
  daily_Increased : undefined,
  confirmed_cases : undefined,
  patients_Positions : undefined,
  stockmask : undefined,
  stockhand : undefined,
};

function insert_data() {

  console.log("insert_data()");

  var insert_Handsanitizer_RAW = [];
  var insert_location_RAW = [];
  var insert_mask_RAW = [];
  var insert_patientsInfo_RAW = [];
  var insert_storeInfo_RAW = [];
  var insert_stockhand_RAW = [];
  var insert_stockmask_RAW = [];

  var sql_Handsanitizer_RAW = "INSERT INTO Handsanitizer (PID , Price, Volume) VALUES ?";
  var sql_location_RAW = "INSERT INTO Location (routeID, latitude, longtitude, city, province, district) VALUES ?";
  var sql_mask_RAW = "INSERT INTO Mask (PID , Price, Type) VALUES ?";
  var sql_patientsInfo_RAW = "INSERT INTO PatientsInfo (Patient_ID, Last_Updated_Date, Confirmed_Date, Status, RouteID) VALUES ?";
  var sql_storeInfo_RAW = "INSERT INTO StoreInfo (StoreID, Name, Last_Updated_Date, RouteID) VALUES ?";
  var sql_stockhand_RAW = "INSERT INTO Stockhand (PID , StoreID, Stock) VALUES ?";
  var sql_stockmask_RAW = "INSERT INTO Stockmask (PID , StoreID, Stock) VALUES ?";

  //insert_Handsanitizer_RAW
  for(let i = 0; i < data_RAW.Handsanitizer_RAW.length; i++) {
    insert_Handsanitizer_RAW.push([data_RAW.Handsanitizer_RAW[i].PID, data_RAW.Handsanitizer_RAW[i].Price, data_RAW.Handsanitizer_RAW[i].Volume]);
  }

  //insert_location_RAW
  for(let i = 0; i < data_RAW.Location_RAW.length; i++) {
    insert_location_RAW.push([data_RAW.Location_RAW[i].routeID, data_RAW.Location_RAW[i].latitude, data_RAW.Location_RAW[i].longtitude, data_RAW.Location_RAW[i].city, data_RAW.Location_RAW[i].province, data_RAW.Location_RAW[i].district]);
  }

  //insert_mask_RAW
  for(let i = 0; i < data_RAW.Mask_RAW.length; i++) {
    insert_mask_RAW.push([data_RAW.Mask_RAW[i].PID, data_RAW.Mask_RAW[i].Price, data_RAW.Mask_RAW[i].Type]);
  }

  //insert_patientsInfo_RAW
  for(let i = 0; i < data_RAW.PatientsInfo_RAW.length; i++) {
    insert_patientsInfo_RAW.push([data_RAW.PatientsInfo_RAW[i].Patient_ID, data_RAW.PatientsInfo_RAW[i].Last_Updated_Date, data_RAW.PatientsInfo_RAW[i].Confirmed_Date, data_RAW.PatientsInfo_RAW[i].Status, data_RAW.PatientsInfo_RAW[i].RouteID]);
  }

  //insert_storeInfo_RAW
  for(let i = 0; i < data_RAW.StoreInfo_RAW.length; i++) {
    insert_storeInfo_RAW.push([data_RAW.StoreInfo_RAW[i].StoreID, data_RAW.StoreInfo_RAW[i].Name, data_RAW.StoreInfo_RAW[i].Last_Updated_Date, data_RAW.StoreInfo_RAW[i].RouteID]);
  }

  //insert_stockhand_RAW
  for(let i = 0; i < data_RAW.Stockhand_RAW.length; i++) {
    insert_stockhand_RAW.push([data_RAW.Stockhand_RAW[i].PID, data_RAW.Stockhand_RAW[i].StoreID, data_RAW.Stockhand_RAW[i].Stock]);
  }

  //insert_stockmask_RAW
  for(let i = 0; i < data_RAW.Stockmask_RAW.length; i++) {
    insert_stockmask_RAW.push([data_RAW.Stockmask_RAW[i].PID, data_RAW.Stockmask_RAW[i].StoreID, data_RAW.Stockmask_RAW[i].Stock]);
  }

  //sql_Handsanitizer_RAW
  conn.query(sql_Handsanitizer_RAW,  [insert_Handsanitizer_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_location_RAW
  conn.query(sql_location_RAW,  [insert_location_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_mask_RAW
  conn.query(sql_mask_RAW,  [insert_mask_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_patientsInfo_RAW
  conn.query(sql_patientsInfo_RAW,  [insert_patientsInfo_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_storeInfo_RAW
  conn.query(sql_storeInfo_RAW,  [insert_storeInfo_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_stockhand_RAW
  conn.query(sql_stockhand_RAW,  [insert_stockhand_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

  //sql_stockmask_RAW
  conn.query(sql_stockmask_RAW,  [insert_stockmask_RAW], function (err, result) {
    if (err) throw err;
    insertDataCallBack();
  });

}

function delete_data() {

  console.log("delete_data()");

  var delete_Handsanitizer = "Delete from Handsanitizer;";
  var delete_location_RAW = "Delete from Location;";
  var delete_mask_RAW = "Delete from Mask;";
  var delete_patientsInfo_RAW = "Delete from PatientsInfo;";
  var delete_storeInfo_RAW = "Delete from StoreInfo;";
  var delete_stockhand_RAW = "Delete from Stockhand;";
  var delete_stockmask_RAW = "Delete from Stockmask;";

  //delete_stockmask_RAW
  conn.query(delete_stockmask_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_stockhand_RAW
  conn.query(delete_stockhand_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_storeInfo_RAW
  conn.query(delete_storeInfo_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_patientsInfo_RAW
  conn.query(delete_patientsInfo_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_mask_RAW
  conn.query(delete_mask_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_location_RAW
  conn.query(delete_location_RAW, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });

  //delete_Handsanitizer
  conn.query(delete_Handsanitizer, function (err, result) {
    if (err) throw err;
    deleteDataCallBack();
  });


}

function query_data() {

  console.log("query_data()");

  patient_ID_Count = "SELECT COUNT(Patient_ID) AS totalPatient FROM PatientsInfo;";

  confirmed_cases_by_Province_State = "SELECT COUNT(PatientsInfo.RouteID) AS confirmed_cases, PatientsInfo.Patient_ID , Location.city, Location.province FROM PatientsInfo INNER JOIN Location ON PatientsInfo.RouteID = Location.RouteID GROUP BY Location.city ORDER BY COUNT(PatientsInfo.RouteID) DESC";

  total_Active = "SELECT COUNT(Status) AS total_Active FROM PatientsInfo WHERE Status = 'A';";

  total_Deaths = "SELECT COUNT(Status) AS total_Deaths FROM PatientsInfo WHERE Status = 'D';";

  total_Recovered = "SELECT COUNT(Status) AS total_Recovered FROM PatientsInfo WHERE Status = 'R';";

  deaths = "SELECT Count(PatientsInfo.Status) AS deaths , PatientsInfo.Status, Location.city, Location.province FROM PatientsInfo INNER JOIN Location ON PatientsInfo.RouteID = Location.routeID WHERE status = 'D' Group BY Location.city;";

  recovered_Cases = "SELECT Count(PatientsInfo.Status) AS recovered_Cases , PatientsInfo.Status, Location.city, Location.province FROM PatientsInfo INNER JOIN Location ON PatientsInfo.RouteID = Location.routeID WHERE status = 'R' Group BY Location.city;";

  daily_Increased = "SELECT Count(Confirmed_Date) AS daily_Increased, Confirmed_Date FROM PatientsInfo GROUP BY Confirmed_Date;";

  patients_Positions = "SELECT PatientsInfo.Patient_ID, PatientsInfo.Confirmed_Date, PatientsInfo.Status, Location.routeID, Location.longtitude, Location.latitude, Location.city, Location.province, Location.district FROM PatientsInfo INNER JOIN Location ON PatientsInfo.RouteID = Location.routeID;";

  stockmask = "SELECT StoreInfo.StoreID, StoreInfo.Name, StoreInfo.Last_Updated_Date, StoreInfo.RouteID, Location.latitude , Location.longtitude, Location.city, Location.province, Location.district, Stockmask.Stock, Mask.* FROM StoreInfo INNER JOIN Stockmask ON StoreInfo.StoreID = Stockmask.StoreID INNER JOIN Mask ON Stockmask.PID = Mask.PID INNER JOIN Location ON StoreInfo.RouteID = Location.routeID ORDER BY StoreInfo.StoreID;";

  stockhand = "SELECT StoreInfo.StoreID, StoreInfo.Name, StoreInfo.Last_Updated_Date , StoreInfo.RouteID, Location.latitude, Location.longtitude, Location.city, Location.province, Location.district, Stockhand.Stock, Handsanitizer.* FROM StoreInfo INNER JOIN Stockhand ON StoreInfo.StoreID = Stockhand.StoreID INNER JOIN Handsanitizer ON Stockhand.PID = Handsanitizer.PID INNER JOIN Location ON StoreInfo.RouteID = Location.routeID ORDER BY StoreInfo.StoreID;";

  //patient_ID_Count
  conn.query(patient_ID_Count, function(err, result) {
    if(err) throw err;
    var data = { patient_ID_Count: result };
    getData(data, retrieveAllDataCallback);
  });

  //confirmed_cases_by_Province_State
  conn.query(confirmed_cases_by_Province_State, function(err, result) {
    if(err) throw err;
    var data = { confirmed_cases_by_Province_State : result };
    getData(data, retrieveAllDataCallback);
  });

  //total_Active
  conn.query(total_Active, function(err, result) {
    if(err) throw err;
    var data = { total_Active : result };
    getData(data, retrieveAllDataCallback);
  });

  //total_Deaths
  conn.query(total_Deaths, function(err, result) {
    if(err) throw err;
    var data = { total_Deaths : result };
    getData(data, retrieveAllDataCallback);
  });

  //total_Recovered
  conn.query(total_Recovered, function(err, result) {
    if(err) throw err;
    var data = { total_Recovered : result };
    getData(data, retrieveAllDataCallback);
  });

  //deaths
  conn.query(deaths, function(err, result) {
    if(err) throw err;
    var data = { deaths : result };
    getData(data, retrieveAllDataCallback);
  });

  //recovered_Cases
  conn.query(recovered_Cases, function(err, result) {
    if(err) throw err;
    var data = { recovered_Cases : result };
    getData(data, retrieveAllDataCallback);
  });

  //daily_Increased
  conn.query(daily_Increased, function(err, result) {
    if(err) throw err;
    var data = { daily_Increased : result };
    getData(data, retrieveAllDataCallback);
  });

  //confirmed_cases
  conn.query(daily_Increased, function(err, result) {
    if(err) throw err;
    var data = { confirmed_cases : result };
    getData(data, retrieveAllDataCallback);
    for(var i = 0; i < queryData.confirmed_cases.length; i++) {
      if(i > 0) {
        queryData.confirmed_cases[i].daily_Increased = queryData.confirmed_cases[i].daily_Increased + queryData.confirmed_cases[i - 1].daily_Increased;
      }
    }
  });

  //patients_Positions
  conn.query(patients_Positions, function(err, result) {
    if(err) throw err;
    var data = { patients_Positions : result };
    getData(data, retrieveAllDataCallback);
  });

  //stockmask
  conn.query(stockmask, function(err, result) {
    if(err) throw err;
    var data = { stockmask : result };
    getData(data, retrieveAllDataCallback);
  });

  //stockhand
  conn.query(stockhand, function(err, result) {
    if(err) throw err;
    var data = { stockhand : result };
    getData(data, retrieveAllDataCallback);
  });
}

function getData(info, callback)
{
    Object.keys(queryData).forEach(function(key) {
      if (info.hasOwnProperty(key)) {
          queryData[key] = info[key];
        }
    });

    if (isAllQueryReceive(queryData)) {
      callback();
    }
}

function isAllQueryReceive(data) {
  var result = true;
  Object.keys(data).forEach(function(key) {
    //console.log(data[key]);
      if (data[key] == undefined) {
        result = false;
        return result;
      }
  });
  return result;
}

function retrieveAllDataCallback() {
  console.log("query succeed");
  retrieved = true;
}

var countDeleted = 0;

function deleteDataCallBack() {

  countDeleted++;
  if(countDeleted == 7) {
    console.log("delete succeed.");
    insert_data();
  }

}

var countInserted = 0;

function insertDataCallBack() {

  countInserted++;
  if(countInserted == 7) {
    console.log("insert succeed.");
    query_data();
  }

}

//Connect DB
conn.connect(function(err) {
  if(err) throw err;
  console.log("Connected Covid19_Project!");

  var sql = "SELECT * FROM Handsanitizer;";

  conn.query(sql, function (err, result) {
    if (err) throw err;

    if(result == "") {
      insert_data();
    }
    else {
      delete_data();
    }

  });


});

//server HTTPS web environment
var app = express();

app.set('views', 'views');
app.set('view engine', 'pug');

app.use(express.static(path.join("templates", "public")));

app.get('/', function (req, res) {
  if(retrieved) {
    var result = {
      author: "Toey(Apinan)",
    queryData : queryData
    };

  res.send(homepageTemplate(result));

  }
  else {
    res.send("Please Wait");
  }
});

//port 3000
app.listen(3000);
