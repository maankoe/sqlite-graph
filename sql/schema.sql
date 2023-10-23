CREATE TABLE Nodes (
	nodeid INTEGER PRIMARY KEY,
);

CREATE TABLE Edges (
	edgeid INTEGER PRIMARY KEY,
	source INTEGER,
	target INTEGER,
	FOREIGN KEY(source) REFERENCES Nodes(nodeid)
);

CREATE TABLE NodeDetails (
	nodeid INTEGER,
	attributes TEXT,
	FOREIGN KEY(nodeid) REFERENCES Nodes(nodeid)
);

CREATE TABLE EdgeDetails (
	edgeid INTEGER,	
	attributes TEXT,
	FOREIGN KEY(edgeid) REFERENCES Edges(edgeid)
);