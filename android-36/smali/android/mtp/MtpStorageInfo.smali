.class public final Landroid/mtp/MtpStorageInfo;
.super Ljava/lang/Object;
.source "MtpStorageInfo.java"


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mFreeSpace:J

.field private greylist-max-o mMaxCapacity:J

.field private greylist-max-o mStorageId:I

.field private greylist-max-o mVolumeIdentifier:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getFreeSpace()J
    .registers 3

    .line 63
    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mFreeSpace:J

    return-wide v0
.end method

.method public final whitelist getMaxCapacity()J
    .registers 3

    .line 54
    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mMaxCapacity:J

    return-wide v0
.end method

.method public final whitelist getStorageId()I
    .registers 2

    .line 45
    iget v0, p0, Landroid/mtp/MtpStorageInfo;->mStorageId:I

    return v0
.end method

.method public final whitelist getVolumeIdentifier()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mVolumeIdentifier:Ljava/lang/String;

    return-object v0
.end method
