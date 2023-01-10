namespace WebAPI.Models
{
    public class MachineInformationModel
    {
        public int RID { get; set; }
        public string? FullName { get; set; }
        public string? IPAddress { get; set; }
        public string? OSType { get; set; }
        public string? MachineType { get; set; }
        public string? Manufacturer { get; set; }
        public string? SystemFamily { get; set; }
        public string? BIOSName { get; set; }
        public string? BIOSVersion { get; set; }
    }

    public class MachineUserModel
    {
        public int RID { get; set; }
        public string? MachineName { get; set; }
        public string? Group { get; set; }
        public string? Account { get; set; }
        public Boolean isDomain { get; set; }
        public Boolean isActive { get; set; }
    }
    public class MachineVolumeModel
    {
        public int RID { get; set; }
        public string? MachineName { get; set; }
        public string? Driver { get; set; }
        public string? DriveType { get; set; }
        public string? RemainingRate { get; set; }
        public string? RemainintSize { get; set; }
    }
}
