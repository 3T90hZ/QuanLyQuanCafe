﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanCafe.DTO
{
    public class Category
    {
        public Category(int id, string name)
        {
            this.ID = id;
            this.Name = name;
        }
        public Category(DataRow row)
        {
            this.ID = (int)row["id"];
            this.Name =(string)row["name"];
        }
        private int iD;
        private string name;

        public string Name { get => name; set => name = value; }
        public int ID { get => iD; set => iD = value; }
    }
}
