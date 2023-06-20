using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Education_Ki_Dunya
{
    public class Book
    {
        private int bookID;
        private string bookName;
        private string bookDescription;
        private string authorName;
        private string imgPath;

        public Book(int bookID, string bookName, string bookDescription, string authorName, string imgPath)
        {
            this.bookID = bookID;
            this.bookName = bookName;
            this.bookDescription = bookDescription;
            this.authorName = authorName;
            this.imgPath = imgPath;
        }

        public int getBookId()
        {
            return bookID;
        }

        public string getBookName()
        {
            return bookName;
        }

        public string getBookDescription()
        {
            return bookDescription;
        }

        public string getAuthor()
        {
            return authorName;
        }

        public string getBookPath()
        {
            return imgPath;
        }
    }
}