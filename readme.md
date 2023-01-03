# Example REST API for PERN app

## How to Run
Install node modules with `npm i`.

Ensure environment variables are configured correctly for your project in provided .env or create a .env.local and set values.

*The next two steps are only necessary if you want to use Prisma. You can also write queries to your db manually in endpoints*
Pull database schema into schema.prisma with `npx prisma db pull`.
Generate a new prisma client with `npx prisma generate`.

Type `npm start` to start a local instance of the server. Launches on localhost:3001 by default.

### Environment Variables
- ENV: 'development' or 'production'
- FRONTEND_URL: url of the client, used in Allow-Origin access control headers
- PG_DB_URL: connection string for PostgreSQL database
- SESSION_SECRET: user-defined secret string, used to encrypt and decrypt cookies with cookie-parser