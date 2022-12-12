using DirectoryService.Core.Dto;

namespace DirectoryService.Core.Entities;

public class QueuedEmail : GuidIdentifiedEntity
{
    public EmailType Type { get; set; }
    public Guid AccountId { get; set; }
    public string? Model { get; set; }
    public DateTime SendOn { get; set; }
    public int Attempt { get; set; }
    public bool Sent { get; set; }
    public DateTime SentOn { get; set; }
}

public enum EmailType
{
    Invalid,
    ActivationEmail
}