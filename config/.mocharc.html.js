const base = require("./.mocharc.js");

module.exports = {
  ...base,
  reporter: "mochawesome",
  reporterOptions: ["reportDir=test-results", "reportFilename=index"],
};
