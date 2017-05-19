'use strict';

const Elm = require('./elm.js');
const { dialog } = require('electron').remote;

const app = document.getElementById('app');

let coreApplication = Elm.Main.embed(app);

coreApplication
  .ports
  .openDialog.
  subscribe((configurationList) =>
            {
              let fileNameArray = dialog.showOpenDialog({properties: configurationList});
              if(fileNameArray)
              {
                let fileName = fileNameArray [0];
                coreApplication. ports. dialogResult. send (fileName);
              }
            });
