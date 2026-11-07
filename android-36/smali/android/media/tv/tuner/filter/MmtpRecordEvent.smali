.class public Landroid/media/tv/tuner/filter/MmtpRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MmtpRecordEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mFirstMbInSlice:I

.field private final blacklist mMpuSequenceNumber:I

.field private final blacklist mPts:J

.field private final blacklist mScHevcIndexMask:I

.field private final blacklist mTsIndexMask:I


# direct methods
.method private constructor blacklist <init>(IJIJII)V
    .registers 9
    .param p1, "scHevcIndexMask"    # I
    .param p2, "dataLength"    # J
    .param p4, "mpuSequenceNumber"    # I
    .param p5, "pts"    # J
    .param p7, "firstMbInSlice"    # I
    .param p8, "tsIndexMask"    # I

    .line 40
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 41
    iput p1, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    .line 42
    iput-wide p2, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    .line 43
    iput p4, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    .line 44
    iput-wide p5, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    .line 45
    iput p7, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    .line 46
    iput p8, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getDataLength()J
    .registers 3

    .line 62
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getFirstMacroblockInSlice()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public whitelist getMpuSequenceNumber()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public whitelist getPts()J
    .registers 3

    .line 88
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScHevcIndexMask()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    return v0
.end method

.method public whitelist getTsIndexMask()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mTsIndexMask:I

    return v0
.end method
