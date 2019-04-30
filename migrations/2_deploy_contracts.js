const TradeLib = artifacts.require("TradeLib");
const TradeImpl = artifacts.require("TradeImpl");

console.log("DEPLOYMENT SCRIPT");

var publicKeys = ["3WsvRC1tjtLrCXWVgb0vR+8vC8sH1Ucy9Dmw0OeEJ0E=","TBdcDDdck+QFP27i69SyRplA972luwlEburzDT6KLn4="];

module.exports = function(deployer) {

/*  deployer.deploy(TradeLib);
  deployer.link(TradeLib, TradeImpl);
  deployer.deploy(TradeImpl);
*/
  deployer.deploy(TradeLib, { privateFor: publicKeys });
  deployer.link(TradeLib, TradeImpl);
  deployer.deploy(TradeImpl, { privateFor: publicKeys });
};
