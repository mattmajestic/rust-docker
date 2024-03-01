#[macro_use] extern crate rocket;
extern crate comrak;

use comrak::{markdown_to_html, ComrakOptions};
use rocket::response::content;
use std::fs;

#[get("/")]
fn index() -> content::Html<String> {
    let readme = fs::read_to_string("README.md").expect("Unable to read README.md");
    let html = markdown_to_html(&readme, &ComrakOptions::default());
    content::Html(html)
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index])
}