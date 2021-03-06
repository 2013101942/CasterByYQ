﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using CaterCommon;
using CaterModel;

namespace CaterDal
{
    /// <summary>
    /// 餐桌数据层
    /// </summary>
    public partial class TableInfoDal
    {
        public List<TableInfo> GetList(Dictionary<string,string> dic)
        {
            string sql = "SELECT ti.*,hi.hTitle FROM tableinfo AS ti " +
                         "INNER JOIN hallinfo AS hi " +
                         "ON ti.HId=hi.id " +
                         "WHERE ti.isDelete=0 AND hi.IsDelete=0";
            

            List<SqlParameter> listP=new List<SqlParameter>();
            if (dic.Count > 0)
            {
                foreach (var pair in dic)
                {
                    sql += " AND " + pair.Key + "=@" + pair.Key.Substring(0, 2) + pair.Key.Substring(3, pair.Key.Length - 3);   //去掉占位符 (形参) 中间的点
                    listP.Add(new SqlParameter("@" + pair.Key.Substring(0, 2) + pair.Key.Substring(3, pair.Key.Length - 3), pair.Value));
                }
            }
            return SQLHelper.ExecuteScalarList<TableInfo>(sql, listP.ToArray());
            //DataTable dt = SQLHelper.GetDataTable(sql,listP.ToArray());

            //List<TableInfo> list=new List<TableInfo>();

            //foreach (DataRow row in dt.Rows)
            //{
            //    list.Add(new TableInfo()
            //    {
            //        Id = Convert.ToInt32(row["id"]),
            //        TTitle = row["ttitle"].ToString(),
            //        HallTitle = row["htitle"].ToString(),
            //        THallId = Convert.ToInt32(row["thallId"]),
            //        TIsFree = Convert.ToBoolean(row["tisFree"])
            //    });
            //}

            //return list;
        }

        public int Insert(TableInfo ti)
        {
            string sql = @"select distinct id from hallinfo where htitle = @htitle and isdelete = 0";
            SqlParameter sqlParam = new SqlParameter("@htitle", ti.HTitle);
            string hid = SQLHelper.ExecuteScalar(sql,sqlParam).ToString();
                     sql = @"INSERT INTO tableinfo(ttitle,Hid,TisFree,isDelete) VALUES(@title,@hid,@isfree,0)";
            SqlParameter[] ps =
            {
                new SqlParameter("@title", ti.TTitle),
                new SqlParameter("@hid", hid),
                new SqlParameter("@isfree", ti.TIsFree)
            };
            return SQLHelper.ExecuteNonQuery(sql, ps);
        }

        public int Update(TableInfo ti)
        {
            string sql = "UPDATE tableinfo SET ttitle=@title,Hid=@hid,tisfree=@isfree WHERE id=@id";
            SqlParameter[] ps =
            {
                new SqlParameter("@title", ti.TTitle),
                new SqlParameter("@hid", ti.HId),
                new SqlParameter("@isfree", ti.TIsFree),
                new SqlParameter("@id", ti.Id)
            };
            return SQLHelper.ExecuteNonQuery(sql, ps);
        }

        public int Delete(int id)
        {
            string sql = "UPDATE tableinfo SET isDelete=1 WHERE id=@id";
            SqlParameter p=new SqlParameter("@id",id);

            return SQLHelper.ExecuteNonQuery(sql, p);
        }

        /// <summary>
        /// 设置餐桌状态
        /// </summary>
        /// <param name="tableId">桌号</param>
        /// <param name="isFree">状态（是否空闲）</param>
        /// <returns></returns>
        public int SetState(int tableId, bool isFree) {
            string sql = "UPDATE tableinfo SET tIsFree=@isfree WHERE id=@tid";
            SqlParameter[] ps =
            {
                new SqlParameter("@tid", tableId),
                new SqlParameter("@isfree", isFree ? 1 : 0),
            };
            return SQLHelper.ExecuteNonQuery(sql, ps);
        }
    }
}
