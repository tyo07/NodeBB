db.createUser(
  {
    user: "node",
    pwd: "node",
    roles: [ { role: "readWrite", db: "nodebb" },
	     { role: "userAdminAnyDatabase", db: "admin" } ]
  }
);
