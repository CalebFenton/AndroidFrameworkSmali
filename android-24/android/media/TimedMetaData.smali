.class public final Landroid/media/TimedMetaData;
.super Ljava/lang/Object;
.source "TimedMetaData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimedMetaData"


# instance fields
.field private mMetaData:[B

.field private mTimestampUs:J


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-direct {p0, p1}, Landroid/media/TimedMetaData;->parseParcel(Landroid/os/Parcel;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "parseParcel() fails"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 44
    :cond_0
    return-void
.end method

.method static createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/media/TimedMetaData;

    #@2
    invoke-direct {v0, p0}, Landroid/media/TimedMetaData;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@4
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 69
    return v1

    #@b
    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    #@11
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    #@19
    .line 74
    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@1e
    .line 76
    const/4 v0, 0x1

    #@1f
    return v0
.end method


# virtual methods
.method public getMetaData()[B
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    #@2
    return-wide v0
.end method
