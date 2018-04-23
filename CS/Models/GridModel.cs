using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Example.Models {
    public class GridModel {
        public Int32 Id { get; set; }
        public String Name { get; set; }

        public static List<GridModel> GetModels() {
            return new List<GridModel>() {
                new GridModel() { Id = 1, Name = "Mike" },
                new GridModel() { Id = 2, Name = "Serge" },
                new GridModel() { Id = 3, Name = "Kate" },
                new GridModel() { Id = 4, Name = "Roma R." },
                new GridModel() { Id = 5, Name = "Vest" },
                new GridModel() { Id = 6, Name = "Marion" }
            };
        }
    }
}