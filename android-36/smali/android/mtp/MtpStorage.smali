.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final blacklist mIsHostWindows:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMaxFileSize:J

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private final greylist-max-o mRemovable:Z

.field private final greylist-max-o mStorageId:I

.field private final blacklist mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V
    .registers 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "storageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "I",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p3, "isHostWindows":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 42
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 46
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    .line 48
    return-void
.end method


# virtual methods
.method public final greylist-max-o getDescription()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getMaxFileSize()J
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final greylist getPath()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist getStorageId()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public blacklist getVolumeName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isHostWindows()Z
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mIsHostWindows:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isRemovable()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method
