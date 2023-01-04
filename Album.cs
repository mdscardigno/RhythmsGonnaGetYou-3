using System.Collections.Generic;

namespace RhythmsGonnaGetYou
{
    public class Album
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int IsExplicit { get; set; }
        public int ReleaseDate { get; set; }

        public Band BandId { get; set; }
        public List<Album> Song { get; set; }


    }
}