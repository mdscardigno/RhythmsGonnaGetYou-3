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

            // var albumsCount = context.Album.Count();
            // Console.WriteLine($"There are {albumsCount} albums in the database.");

            var bandsList = context.Bands.Include(Band => Band.Albums).ThenInclude(Album => Album.Songs).ToList();

            foreach (Band b in bandsList)
            {
                Console.WriteLine($"Band name is {b.Name}.");
                foreach (Album a in b.Albums)
                {
                    Console.WriteLine($"The album {a.Title} is by the band {b.Name}");
                    foreach (Song s in a.Songs)
                    {
                        Console.WriteLine($"The song {s.Title} is on the album {a.Title}");
                    }

                }
            }

            // var songsList = context.Bands.Include(Band => Band.Albums).ThenInclude(Album => Album.Songs).ToList();
            // Console.WriteLine($"There are {songsList.Count} songs in the database.");

            // var keepGoing = true;

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
