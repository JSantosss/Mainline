﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Mainlinee
{
    public class oshiDAO
    {
        public List<Ativo> selectAtivo(int idAtivo)
        {
            List<Ativo> lista = new List<Ativo>();
            Ativo ativo = new Ativo();
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "select p.IDATIVO from  possui as p  Where p.IDUSER = @id order by p.IDATIVO desc";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {
                    cmd.Parameters.AddWithValue("@id", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            lista.Add(new Ativo()
                            {
                                id = reader.GetString(0)
                            });

                            //ativo.nome = reader.GetString(1);

                            //lista.Add(ativo);  
                        }

                    }
                }
                return lista;
            }


        }

        public static int selectRam()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoRAM from infoRAM order by IDRAM desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoRAM"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public static int selectCPU()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoCPU from infoCPU order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoCPU"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public static int selectHD()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoHD from infoHD order by IDHD desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoHD"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public int selectRam2()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoRAM from infoRAM order by IDRAM desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoRAM"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public int selectCPU2()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoCPU from infoCPU order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoCPU"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public List<Hd> selectHD2(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 9 infoHD from infoHD where idativo = @idAtivo order by IDHD desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        int cont = 0;
                        int hd = 0;
                        List<Hd> lista = new List<Hd>();

                        if (reader.Read())
                        {
                            while (reader.Read())
                            {

                                //return (int)float.Parse(reader["infoHD"].ToString());

                                lista.Add(new Hd()
                                {
                                    hd = (int)float.Parse(reader["infoHD"].ToString())
                                });

                                cont++;
                            }
                        }
                        else
                        {
                            lista = null;
                        }
                        
                        return lista;
                    }
                }
            }
        }

        //metodo para pegar a porcentagem do banco

        public static string getNumeros(String idHD)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            //text += new oshiDAO().selectRam2() + "+";
            //text += new oshiDAO().selectCPU2() + "+";
            text += new oshiDAO().selectHD2(idHD)[0].hd;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }
    }
}