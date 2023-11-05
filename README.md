https://www.youtube.com/watch?v=skQXoZ8chxk&t=244s&ab_channel=MichaelGuay

In this video, we look at using the popular ORM Prisma with NestJS to build CRUD APIs, execute migrations, use relations & more.

nest new nestjs-prisma
pnpm i prisma --save-dev
pnpm prisma init

docker-compose up

A migration is essence a synchronization our Prisma schema with out current running database

- compare the current state of our database against the current state of our schema and determine if any changes need to be applied

pnpm prisma migrate
vs
pnpm prisma migrate dev "--name init" (track the changes we make to our database by auto. creating the SQL statements and saving them in a separete file)
vs
pnpm prisma migrate (execute the migrations without the extra stuff mentioned above)
vs
pnpm prisma migrate deploy (apply the changes of local to production using migration history)

Error: P1000: Authentication failed against database server at `localhost`, the provided database credentials for `johndoe` are not valid.

nest g module database<br>
nest g service database

```
export class DatabaseService extends PrismaClient implements OnModuleInit {
  async onModuleInit() {
    await this.$connect();
  }
}
```

nest g resource products

Cannot find module '@nestjs/common' or its corresponding type declarations.

npm install @nestjs/common

pnpm prisma migrate dev --name relations

nest g resource reviews
