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
            DisplayGreeting();
            var context = new RhythmsGonnaGetYouContext();

            var albumsCount = context.Album.Count();
            Console.WriteLine($"There are {albumsCount} albums in the database.");


        }
        //METHODS
        static void DisplayGreeting()
        {
            //https://www.ascii-art-generator.org/
            Console.WriteLine($"{"#################################################-----------------------WELCOME TO-----------------------###################################################".Pastel(Color.FromArgb(165, 229, 250))}");
            Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");
            Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");

            Console.WriteLine($"{"######  #     # #     # ####### #     # #     #     #####      #####  ####### #     # #     #    #        #####  ####### #######    #     # ####### #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"#     # #     #  #   #     #    #     # ##   ##    #     #    #     # #     # ##    # ##    #   # #      #     # #          #        #   #  #     # #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"#     # #     #   # #      #    #     # # # # #    #          #       #     # # #   # # #   #  #   #     #       #          #         # #   #     # #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"######  #######    #       #    ####### #  #  #     #####     #  #### #     # #  #  # #  #  # #     #    #  #### #####      #          #    #     # #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"#   #   #     #    #       #    #     # #     #          #    #     # #     # #   # # #   # # #######    #     # #          #          #    #     # #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"#    #  #     #    #       #    #     # #     #    #     #    #     # #     # #    ## #    ## #     #    #     # #          #          #    #     # #     #".Pastel(Color.Violet)}");
            Console.WriteLine($"{"#     # #     #    #       #    #     # #     #     #####      #####  ####### #     # #     # #     #     #####  #######    #          #    #######  ##### ".Pastel(Color.Violet)}");

            Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");
            Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");
            //

        }
    }
}
