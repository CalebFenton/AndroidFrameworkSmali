.class public Landroid/app/backup/FullBackupDataOutput;
.super Ljava/lang/Object;
.source "FullBackupDataOutput.java"


# instance fields
.field private final greylist mData:Landroid/app/backup/BackupDataOutput;

.field private final greylist-max-o mQuota:J

.field private greylist-max-o mSize:J

.field private final greylist-max-o mTransportFlags:I


# direct methods
.method public constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "quota"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 43
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(JI)V
    .registers 6
    .param p1, "quota"    # J
    .param p3, "transportFlags"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 51
    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    .line 53
    iput p3, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    .line 54
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 73
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    .line 74
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;J)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quota"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 59
    iput-wide p2, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 60
    iput v2, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    .line 61
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;JI)V
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quota"    # J
    .param p4, "transportFlags"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    .line 66
    iput-wide p2, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    .line 67
    iput p4, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    .line 68
    return-void
.end method


# virtual methods
.method public greylist-max-r addSize(J)V
    .registers 5
    .param p1, "size"    # J

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    .line 84
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    .line 86
    :cond_b
    return-void
.end method

.method public greylist getData()Landroid/app/backup/BackupDataOutput;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    return-object v0
.end method

.method public whitelist getQuota()J
    .registers 3

    .line 27
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public greylist-max-o getSize()J
    .registers 3

    .line 89
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    return-wide v0
.end method

.method public whitelist getTransportFlags()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/app/backup/FullBackupDataOutput;->mTransportFlags:I

    return v0
.end method
