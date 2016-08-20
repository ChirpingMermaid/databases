var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      // console.log(req);
      models.messages.get(req, res, function(data) {
        console.log(data);
        res.end(data);
      });
      // console.log(models.messages.get);
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      
      exports.model.messages.post(req.data);
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

