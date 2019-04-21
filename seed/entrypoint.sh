#!/bin/bash
MONGO_HOST=${MONGO_HOST:-database}
MONGO_PORT=${MONGO_PORT:-27017}
DATABASE_NAME=${DATABASE_NAME:-lobbyface}

mongoimport --host "$MONGO_HOST:$MONGO_PORT" --db "$DATABASE_NAME" --collection products --type json --file /data-folder/products.json --jsonArray
mongoimport --host "$MONGO_HOST:$MONGO_PORT" --db "$DATABASE_NAME" --collection categories --type json --file /data-folder/categories.json --jsonArray
