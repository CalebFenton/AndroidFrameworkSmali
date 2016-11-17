.class public final Landroid/media/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field private mData:[B

.field private mDurationUs:J

.field private mStartTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-direct {p0, p1}, Landroid/media/SubtitleData;->parseParcel(Landroid/os/Parcel;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "parseParcel() fails"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 51
    :cond_0
    return-void
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@4
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 76
    return v1

    #@b
    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    #@11
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    #@17
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    #@1d
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    new-array v0, v0, [B

    #@23
    iput-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    #@25
    .line 83
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@2a
    .line 85
    const/4 v0, 0x1

    #@2b
    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    #@2
    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    #@0
    .prologue
    .line 66
    iget-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    #@2
    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    #@2
    return-wide v0
.end method

.method public getTrackIndex()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    #@2
    return v0
.end method
