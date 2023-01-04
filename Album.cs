using System;
using System.Collections.Generic;

namespace RhythmsGonnaGetYou
{
    public class Album
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public bool IsExplicit { get; set; }
        public DateTime ReleaseDate { get; set; }

        public Band BandId { get; set; }
        public List<Album> Song { get; set; }


    }
}