const Migrations = artifacts.require("Migrations");

console.log("INITIAL MIGRATIONS");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
