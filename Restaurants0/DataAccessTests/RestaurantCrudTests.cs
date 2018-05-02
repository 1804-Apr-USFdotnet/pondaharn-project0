using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Tests
{
    [TestClass()]
    public class RestaurantCrudTests
    {
        [TestMethod()]
        public void FindRestByIdTest()
        {
            int i = 1;
            RestaurantCrud crud = new RestaurantCrud();
            Restaurant rest = crud.FindRestById(i);
            Assert.AreEqual(i, rest.ID);
        }
    }
}