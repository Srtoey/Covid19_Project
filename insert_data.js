//jshint esversion: 6

var mysql = require('mysql');
var fs = require('fs');

var conn = mysql.createConnection({
  host: "database251covid.crhpcoqeujnf.us-east-2.rds.amazonaws.com",
  user: "onanong",
  password: "1212312121",
  database: "Covid19_Project"
});

var json = fs.readFileSync('data.json');
let data_RAW = JSON.parse(json);

conn.connect(function(err) {
  if (err) throw err;
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

var countDeleted = 0;

function deleteDataCallBack() {

  countDeleted++;
  if(countDeleted == 7) {
    console.log("delete succeed.");
  }

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
    console.log("Stockmask Deleted");
    deleteDataCallBack();
  });

  //delete_stockhand_RAW
  conn.query(delete_stockhand_RAW, function (err, result) {
    if (err) throw err;
    console.log("Stockhand Deleted");
    deleteDataCallBack();
  });

  //delete_storeInfo_RAW
  conn.query(delete_storeInfo_RAW, function (err, result) {
    if (err) throw err;
    console.log("StoreInfo Deleted");
    deleteDataCallBack();
  });

  //delete_patientsInfo_RAW
  conn.query(delete_patientsInfo_RAW, function (err, result) {
    if (err) throw err;
    console.log("PatientsInfo Deleted");
    deleteDataCallBack();
  });

  //delete_mask_RAW
  conn.query(delete_mask_RAW, function (err, result) {
    if (err) throw err;
    console.log("Mask Deleted");
    deleteDataCallBack();
  });

  //delete_location_RAW
  conn.query(delete_location_RAW, function (err, result) {
    if (err) throw err;
    console.log("Location Deleted");
    deleteDataCallBack();
  });

  //delete_Handsanitizer
  conn.query(delete_Handsanitizer, function (err, result) {
    if (err) throw err;
    console.log("Handsanitizer Deleted");
    deleteDataCallBack();
  });


}

var countInserted = 0;

function insertDataCallBack() {

  countInserted++;
  if(countInserted == 7) {
    console.log("insert succeed.");
  }

}

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
    console.log("Handsanitizer Inserted");
    insertDataCallBack();
  });

  //sql_location_RAW
  conn.query(sql_location_RAW,  [insert_location_RAW], function (err, result) {
    if (err) throw err;
    console.log("Location Inserted");
    insertDataCallBack();
  });

  //sql_mask_RAW
  conn.query(sql_mask_RAW,  [insert_mask_RAW], function (err, result) {
    if (err) throw err;
    console.log("Mask Inserted");
    insertDataCallBack();
  });

  //sql_patientsInfo_RAW
  conn.query(sql_patientsInfo_RAW,  [insert_patientsInfo_RAW], function (err, result) {
    if (err) throw err;
    console.log("PatientsInfo Inserted");
    insertDataCallBack();
  });

  //sql_storeInfo_RAW
  conn.query(sql_storeInfo_RAW,  [insert_storeInfo_RAW], function (err, result) {
    if (err) throw err;
    console.log("StoreInfo Inserted");
    insertDataCallBack();
  });

  //sql_stockhand_RAW
  conn.query(sql_stockhand_RAW,  [insert_stockhand_RAW], function (err, result) {
    if (err) throw err;
    console.log("Stockhand Inserted");
    insertDataCallBack();
  });

  //sql_stockmask_RAW
  conn.query(sql_stockmask_RAW,  [insert_stockmask_RAW], function (err, result) {
    if (err) throw err;
    console.log("Stockmask Inserted");
    insertDataCallBack();
  });


}
