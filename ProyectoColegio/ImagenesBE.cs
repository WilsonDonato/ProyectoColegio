using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoColegio
{
    public class ImagenesBE
    {
        public int ID { get; set; }
        public byte[] Imagen { get; set; }
        public string visorImagen { get; set; }

        public ImagenesBE()
        {
        }
    }
}