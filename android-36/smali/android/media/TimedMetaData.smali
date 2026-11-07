.class public final Landroid/media/TimedMetaData;
.super Ljava/lang/Object;
.source "TimedMetaData.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TimedMetaData"


# instance fields
.field private greylist-max-o mMetaData:[B

.field private greylist-max-o mTimestampUs:J


# direct methods
.method public constructor whitelist <init>(J[B)V
    .registers 6
    .param p1, "timestampUs"    # J
    .param p3, "metaData"    # [B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p3, :cond_a

    .line 62
    iput-wide p1, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    .line 63
    iput-object p3, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    .line 64
    return-void

    .line 60
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null metaData is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/media/TimedMetaData;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    return-void

    .line 47
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;
    .registers 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 42
    new-instance v0, Landroid/media/TimedMetaData;

    invoke-direct {v0, p0}, Landroid/media/TimedMetaData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_b

    .line 85
    return v0

    .line 88
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    .line 90
    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist getMetaData()[B
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 71
    iget-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    return-wide v0
.end method
