const base = require("./.mocharc.js");

module.exports = {
  ...base,
  reporter: "json",
  "reporter-option": ["output=test-results/mocha-report.json"],
};
