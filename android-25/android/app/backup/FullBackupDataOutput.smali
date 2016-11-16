.class public Landroid/app/backup/FullBackupDataOutput;
.super Ljava/lang/Object;
.source "FullBackupDataOutput.java"


# instance fields
.field private final mData:Landroid/app/backup/BackupDataOutput;

.field private mSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    #@6
    .line 18
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    #@a
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    #@5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@c
    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    #@e
    .line 22
    return-void
.end method


# virtual methods
.method public addSize(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 31
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 32
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    #@8
    add-long/2addr v0, p1

    #@9
    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    #@b
    .line 30
    :cond_0
    return-void
.end method

.method public getData()Landroid/app/backup/BackupDataOutput;
    .locals 1

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    #@2
    return-object v0
.end method

.method public getSize()J
    .locals 2

    #@0
    .prologue
    .line 37
    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    #@2
    return-wide v0
.end method
