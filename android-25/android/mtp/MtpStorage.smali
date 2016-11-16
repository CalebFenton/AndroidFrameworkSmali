.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private final mReserveSpace:J

.field private final mStorageId:I


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide/16 v2, 0x400

    #@2
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 39
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    #@b
    .line 40
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    #@11
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    #@17
    .line 42
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    #@1a
    move-result v0

    #@1b
    int-to-long v0, v0

    #@1c
    mul-long/2addr v0, v2

    #@1d
    mul-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    #@20
    .line 43
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    #@23
    move-result v0

    #@24
    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    #@26
    .line 44
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    #@2c
    .line 38
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    #@2
    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getReserveSpace()J
    .locals 2

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    #@2
    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    #@2
    return v0
.end method

.method public final isRemovable()Z
    .locals 1

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    #@2
    return v0
.end method
