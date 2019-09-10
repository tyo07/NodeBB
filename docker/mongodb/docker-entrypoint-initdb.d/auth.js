db.createUser(
  {
    user: "node",
    pwd: "node",
    roles: [ { role: "readWrite", db: "nodebb" },
	     { role: "clusterMonitor", db: "admin" } ]
  }
);
