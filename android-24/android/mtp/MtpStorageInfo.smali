.class public final Landroid/mtp/MtpStorageInfo;
.super Ljava/lang/Object;
.source "MtpStorageInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFreeSpace:J

.field private mMaxCapacity:J

.field private mStorageId:I

.field private mVolumeIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getFreeSpace()J
    .locals 2

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mFreeSpace:J

    #@2
    return-wide v0
.end method

.method public final getMaxCapacity()J
    .locals 2

    #@0
    .prologue
    .line 52
    iget-wide v0, p0, Landroid/mtp/MtpStorageInfo;->mMaxCapacity:J

    #@2
    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget v0, p0, Landroid/mtp/MtpStorageInfo;->mStorageId:I

    #@2
    return v0
.end method

.method public final getVolumeIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/mtp/MtpStorageInfo;->mVolumeIdentifier:Ljava/lang/String;

    #@2
    return-object v0
.end method
