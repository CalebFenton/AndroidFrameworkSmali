.class public Landroid/media/tv/tuner/filter/TsRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "TsRecordEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mFirstMbInSlice:I

.field private final blacklist mPid:I

.field private final blacklist mPts:J

.field private final blacklist mScIndexMask:I

.field private final blacklist mTsIndexMask:I


# direct methods
.method private constructor blacklist <init>(IIIJJI)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "tsIndexMask"    # I
    .param p3, "scIndexMask"    # I
    .param p4, "dataLength"    # J
    .param p6, "pts"    # J
    .param p8, "firstMbInSlice"    # I

    .line 40
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 41
    iput p1, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    .line 42
    iput p2, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    .line 43
    iput p3, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    .line 44
    iput-wide p4, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    .line 45
    iput-wide p6, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    .line 46
    iput p8, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getDataLength()J
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getFirstMacroblockInSlice()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mFirstMbInSlice:I

    return v0
.end method

.method public whitelist getPacketId()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPid:I

    return v0
.end method

.method public whitelist getPts()J
    .registers 3

    .line 91
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScIndexMask()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mScIndexMask:I

    return v0
.end method

.method public whitelist getTsIndexMask()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/media/tv/tuner/filter/TsRecordEvent;->mTsIndexMask:I

    return v0
.end method
