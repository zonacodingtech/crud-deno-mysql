import { Book } from "../interface/book.ts";
import { client } from "../databases.ts";

const getAllBooks = async ({ response }: { response: any }) => {
  const books: Book[] = await client.query("select * from books");
  response.body = {
    success: true,
    data: books,
  };
};

const getOneBook = async (
  { params, response }: { params: any; response: any },
) => {
  let Book: Book = await client.query(
    "select * from books where id = ?",
    [params.id],
  );
  response.body = {
    success: true,
    data: Book,
  };
};

const postOneBook = async (
  { params, request, response }: {
    params: any;
    request: any;
    response: any;
  },
) => {
  const result = await request.body();
  const bookfix: Book = result.value;
  const results = await client.query(
    "INSERT INTO books(title,description,price) values(?,?,?)",
    [bookfix.title, bookfix.description, bookfix.price],
  );
  response.body = {
    success: true,
    data: null,
  };
};

const putOneBook = async (
  { params, request, response }: {
    params: { id: string };
    request: any;
    response: any;
  },
) => {
  const result = await request.body();

  const book: Book = result.value;
  const results = await client.query(
    "update books set title = ?,description=?,price=? where id=?",
    [book.title, book.description, book.price, params.id],
  );
  response.body = {
    success: true,
    data: null,
  };
};

const deleteOneBook = async (
  { params, response }: { params: any; response: any },
) => {
  let result = await client.execute(
    `delete from books where id = ?`,
    [params.id],
  );
  response.body = {
    success: true,
    data: null,
  };
};

export { getAllBooks, getOneBook, postOneBook, putOneBook, deleteOneBook };
