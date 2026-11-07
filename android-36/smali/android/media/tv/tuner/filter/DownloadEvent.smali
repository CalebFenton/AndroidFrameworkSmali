.class public Landroid/media/tv/tuner/filter/DownloadEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "DownloadEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:I

.field private final blacklist mDownloadId:I

.field private final blacklist mItemFragmentIndex:I

.field private final blacklist mItemId:I

.field private final blacklist mLastItemFragmentIndex:I

.field private final blacklist mMpuSequenceNumber:I


# direct methods
.method private constructor blacklist <init>(IIIIII)V
    .registers 7
    .param p1, "itemId"    # I
    .param p2, "downloadId"    # I
    .param p3, "mpuSequenceNumber"    # I
    .param p4, "itemFragmentIndex"    # I
    .param p5, "lastItemFragmentIndex"    # I
    .param p6, "dataLength"    # I

    .line 38
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 39
    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemId:I

    .line 40
    iput p2, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDownloadId:I

    .line 41
    iput p3, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mMpuSequenceNumber:I

    .line 42
    iput p4, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemFragmentIndex:I

    .line 43
    iput p5, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mLastItemFragmentIndex:I

    .line 44
    iput p6, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDataLength:I

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist getDataLength()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDataLength:I

    return v0
.end method

.method public whitelist getDownloadId()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mDownloadId:I

    return v0
.end method

.method public whitelist getItemFragmentIndex()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemFragmentIndex:I

    return v0
.end method

.method public whitelist getItemId()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mItemId:I

    return v0
.end method

.method public whitelist getLastItemFragmentIndex()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mLastItemFragmentIndex:I

    return v0
.end method

.method public whitelist getMpuSequenceNumber()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadEvent;->mMpuSequenceNumber:I

    return v0
.end method
