var models = require('../models');
var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10,
  'Content-Type': 'application/json'
};


module.exports = {
  messages: {
    get: function (req, res) {      
      if (req.method === 'GET') {
        
        models.messages.get(req, res, function(data) {
          var returnedData = {};
          // for (var i = 0; i < data.length; i++) {
            
          // }
          returnedData.results = data;
          console.log("data!!!!!!!", data);
          // returnedData.results.objectId = data.id;
          res.writeHead(200, headers);
          res.end(JSON.stringify(returnedData));
        });
      }
      // console.log(models.messages.get);
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      
      models.messages.post(req.data);
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

