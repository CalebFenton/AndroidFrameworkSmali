.class public Landroid/media/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/DemuxCapabilities$FilterCapabilities;
    }
.end annotation


# instance fields
.field private final blacklist mAudioFilterCount:I

.field private final blacklist mDemuxCount:I

.field private final blacklist mFilterCaps:I

.field private final blacklist mFilterCapsList:[I

.field private final blacklist mLinkCaps:[I

.field private final blacklist mPcrFilterCount:I

.field private final blacklist mPesFilterCount:I

.field private final blacklist mPlaybackCount:I

.field private final blacklist mRecordCount:I

.field private final blacklist mSectionFilterCount:I

.field private final blacklist mSectionFilterLength:J

.field private final blacklist mSupportTimeFilter:Z

.field private final blacklist mTsFilterCount:I

.field private final blacklist mVideoFilterCount:I


# direct methods
.method private constructor blacklist <init>(IIIIIIIIIJI[I[IZ)V
    .registers 32
    .param p1, "demuxCount"    # I
    .param p2, "recordCount"    # I
    .param p3, "playbackCount"    # I
    .param p4, "tsFilterCount"    # I
    .param p5, "sectionFilterCount"    # I
    .param p6, "audioFilterCount"    # I
    .param p7, "videoFilterCount"    # I
    .param p8, "pesFilterCount"    # I
    .param p9, "pcrFilterCount"    # I
    .param p10, "sectionFilterLength"    # J
    .param p12, "filterCaps"    # I
    .param p13, "filterCapsList"    # [I
    .param p14, "linkCaps"    # [I
    .param p15, "timeFilter"    # Z

    .line 70
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    .line 72
    move/from16 v2, p2

    iput v2, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    .line 73
    move/from16 v3, p3

    iput v3, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    .line 74
    move/from16 v4, p4

    iput v4, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    .line 75
    move/from16 v5, p5

    iput v5, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    .line 76
    move/from16 v6, p6

    iput v6, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    .line 77
    move/from16 v7, p7

    iput v7, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    .line 78
    move/from16 v8, p8

    iput v8, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    .line 79
    move/from16 v9, p9

    iput v9, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    .line 80
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    .line 81
    move/from16 v12, p12

    iput v12, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    .line 82
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    .line 83
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    .line 84
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist getAudioFilterCount()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mAudioFilterCount:I

    return v0
.end method

.method public whitelist getDemuxCount()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mDemuxCount:I

    return v0
.end method

.method public whitelist getFilterCapabilities()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCaps:I

    return v0
.end method

.method public whitelist getFilterTypeCapabilityList()[I
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mFilterCapsList:[I

    return-object v0
.end method

.method public whitelist getLinkCapabilities()[I
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mLinkCaps:[I

    return-object v0
.end method

.method public whitelist getPcrFilterCount()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPcrFilterCount:I

    return v0
.end method

.method public whitelist getPesFilterCount()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPesFilterCount:I

    return v0
.end method

.method public whitelist getPlaybackCount()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mPlaybackCount:I

    return v0
.end method

.method public whitelist getRecordCount()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mRecordCount:I

    return v0
.end method

.method public whitelist getSectionFilterCount()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterCount:I

    return v0
.end method

.method public whitelist getSectionFilterLength()J
    .registers 3

    .line 146
    iget-wide v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSectionFilterLength:J

    return-wide v0
.end method

.method public whitelist getTsFilterCount()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mTsFilterCount:I

    return v0
.end method

.method public whitelist getVideoFilterCount()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mVideoFilterCount:I

    return v0
.end method

.method public whitelist isTimeFilterSupported()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/media/tv/tuner/DemuxCapabilities;->mSupportTimeFilter:Z

    return v0
.end method
