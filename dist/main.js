'use strict';

const electron = require('electron');
const chokidar = require('chokidar');

const app = electron.app;
const BrowserWindow = electron.BrowserWindow;

let mainWindow;

app.on('ready', createWindow);

chokidar.watch(['dist/ports.js', 'dist/index.html', 'dist/elm.js']).on('change', () => {
  if (mainWindow) {
    mainWindow.reload();
  }
});

function createWindow () {
  mainWindow = new BrowserWindow({
    width: 1024,
    height: 768
  });

  mainWindow.loadURL(`file://${ __dirname }/index.html`);

  mainWindow.webContents.openDevTools();

  mainWindow.on('closed', () =>
                {
                  mainWindow = null;
                });
}
