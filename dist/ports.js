'use strict';

const Elm = require('./elm.js');

const app = document.getElementById('app');

const coreApplication = Elm.Main.embed(app);
