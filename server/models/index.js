var db = require('../db');

db.dbConnection.connect();
module.exports = {
  messages: {
    get: function (req, res, callback) {
      
      db.dbConnection.query(
        'select users.username, messages.text, rooms.roomname, messages.id from users, messages, rooms ' +  
        'where messages.user_ID = users.id and messages.room_ID = rooms.id', 
        // 'select users.name, messages.message from users, messages ' +  
        // 'where messages.user_ID = users.id and ', 
        function(err, rows) {
          if (err) {
            throw err;
          }
          callback(rows);
        });


    }, // a function which produces all the messages
    post: function () {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

