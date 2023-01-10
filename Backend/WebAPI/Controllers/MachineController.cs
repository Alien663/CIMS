using Dapper;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using WebAPI.Lib;
using WebAPI.Models;
using WebAPI.Filter;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [Login] // this will call Login Filter, you can also use in fron of api instead of controller
    public class MachineController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetMachineInformation()
        {
            List<MachineInformationModel> data = new List<MachineInformationModel>();
            using(var db = new AppDb())
            {
                string sql = "select * from vd_MachineInformation";
                data = db.Connection.Query<MachineInformationModel>(sql).ToList();
            }
            return Ok(data);
        }

        [HttpGet("user/{mid}")]
        public IActionResult GetMachineUsers(int mid)
        {
            List<MachineUserModel> data = new List<MachineUserModel>();
            using (var db = new AppDb())
            {
                string sql = @"select * from vd_MachineUsers where RID = @mid";
                data = db.Connection.Query<MachineUserModel>(sql, new { mid }).ToList();
            }
            return Ok(data);
        }

        [HttpGet("volume/{mid}")]
        public IActionResult GetMachineVolumes(int mid)
        {
            List<MachineVolumeModel> data = new List<MachineVolumeModel>();
            using (var db = new AppDb())
            {
                string sql = @"select * from vd_MachineVolumes where RID = @mid";
                data = db.Connection.Query<MachineVolumeModel>(sql, new { mid }).ToList();
            }
            return Ok(data);
        }
    }
}
