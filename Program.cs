using System;
using System.Linq;
using System.Collections.Generic;
using System.Drawing;
using Microsoft.EntityFrameworkCore;
using Pastel;

namespace RhythmsGonnaGetYou
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to RhythmsGonnaGetYou!");//Replace with greeting
            var context = new RhythmsGonnaGetYouContext();

            var albumsCount = context.Album.Count();
            Console.WriteLine($"There are {albumsCount} albums in the database.");


        }
    }
}
