'use strict';

const Elm = require('./elm.js');
const electron = require('electron').remote;
const fs = electron.require('fs');
const dialog = electron.dialog;

const app = document.getElementById('app');

let coreApplication = Elm.Main.embed(app);

coreApplication
  .ports
  .openDialog
  .subscribe((configurationList) =>
             {
               let fileNameArray = dialog.showOpenDialog({properties: configurationList});

               if(fileNameArray)
               {
                 let fileName = fileNameArray[0];
                 coreApplication.ports.dialogResult.send(fileName);
               }
             });

coreApplication
  .ports
  .readFile
  .subscribe((fileName) =>
             {
               fs.readFile(fileName,
                           {encoding: "utf-8"},
                           (err, data) =>
                           {
                             let result = err || data;
                             coreApplication
                               .ports
                               .readFileResult
                               .send([fileName, result]);
                           });
             });
