const base = require("./.mocharc.js");

module.exports = {
  ...base,
  reporter: "mocha-junit-reporter",
  reporterOptions: [
    "mochaFile=./test-results/junit.xml",
    "testsuitesTitle=true",
    'suiteTitleSeparatedBy=" "',
  ],
};
