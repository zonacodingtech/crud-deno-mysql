import { Application, Router } from "https://deno.land/x/oak/mod.ts";
import {
  getOneBook,
  getAllBooks,
  postOneBook,
  putOneBook,
  deleteOneBook,
} from "./controllers/books.ts";
const router = new Router();
router
  .get("/books", getAllBooks)
  .get("/book/:id", getOneBook)
  .post("/book", postOneBook)
  .put("/book/:id", putOneBook)
  .delete("/book/:id", deleteOneBook);

const app = new Application();
app.use(router.routes());
app.use(router.allowedMethods());

await app.listen({ port: 8000 });
