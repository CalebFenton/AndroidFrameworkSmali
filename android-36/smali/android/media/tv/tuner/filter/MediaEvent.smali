.class public Landroid/media/tv/tuner/filter/MediaEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MediaEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAudioPresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataGroupId:I

.field private final blacklist mDataId:J

.field private final blacklist mDataLength:J

.field private final blacklist mDts:J

.field private final blacklist mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

.field private final blacklist mIndexInDataGroup:I

.field private final blacklist mIsDtsPresent:Z

.field private final blacklist mIsPrivateData:Z

.field private final blacklist mIsPtsPresent:Z

.field private final blacklist mIsSecureMemory:Z

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMpuSequenceNumber:I

.field private blacklist mNativeContext:J

.field private final blacklist mNumDataPieces:I

.field private final blacklist mOffset:J

.field private final blacklist mPts:J

.field private blacklist mReleased:Z

.field private final blacklist mScIndexMask:I

.field private final blacklist mStreamId:I


# direct methods
.method private constructor blacklist <init>(IZJZJJJLandroid/media/MediaCodec$LinearBlock;ZJIZILandroid/media/tv/tuner/filter/AudioDescriptor;Ljava/util/List;III)V
    .registers 40
    .param p1, "streamId"    # I
    .param p2, "isPtsPresent"    # Z
    .param p3, "pts"    # J
    .param p5, "isDtsPresent"    # Z
    .param p6, "dts"    # J
    .param p8, "dataLength"    # J
    .param p10, "offset"    # J
    .param p12, "buffer"    # Landroid/media/MediaCodec$LinearBlock;
    .param p13, "isSecureMemory"    # Z
    .param p14, "dataId"    # J
    .param p16, "mpuSequenceNumber"    # I
    .param p17, "isPrivateData"    # Z
    .param p18, "scIndexMask"    # I
    .param p19, "extraMetaData"    # Landroid/media/tv/tuner/filter/AudioDescriptor;
    .param p21, "numDataPieces"    # I
    .param p22, "indexInDataGroup"    # I
    .param p23, "dataGroupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZJZJJJ",
            "Landroid/media/MediaCodec$LinearBlock;",
            "ZJIZI",
            "Landroid/media/tv/tuner/filter/AudioDescriptor;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;III)V"
        }
    .end annotation

    .line 71
    .local p20, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    .line 72
    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    .line 73
    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    .line 74
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    .line 75
    move/from16 v5, p5

    iput-boolean v5, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsDtsPresent:Z

    .line 76
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDts:J

    .line 77
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    .line 78
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    .line 79
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 80
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    .line 81
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    .line 82
    move/from16 v1, p16

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    .line 83
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    .line 84
    move/from16 v1, p18

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mScIndexMask:I

    .line 85
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    .line 86
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mAudioPresentations:Ljava/util/List;

    .line 87
    move/from16 v1, p21

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mNumDataPieces:I

    .line 88
    move/from16 v1, p22

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mIndexInDataGroup:I

    .line 89
    move/from16 v1, p23

    iput v1, v0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataGroupId:I

    .line 90
    return-void
.end method

.method private native blacklist nativeFinalize()V
.end method

.method private native blacklist nativeGetAudioHandle()Ljava/lang/Long;
.end method

.method private native blacklist nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 313
    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 314
    return-void
.end method

.method public whitelist getAudioHandle()J
    .registers 3

    .line 194
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetAudioHandle()Ljava/lang/Long;

    .line 195
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public whitelist getAudioPresentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mAudioPresentations:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mAudioPresentations:Ljava/util/List;

    :goto_b
    return-object v0
.end method

.method public whitelist getAvDataId()J
    .registers 3

    .line 180
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataId:J

    return-wide v0
.end method

.method public whitelist getDataGroupId()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataGroupId:I

    return v0
.end method

.method public whitelist getDataLength()J
    .registers 3

    .line 140
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getDts()J
    .registers 3

    .line 133
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mDts:J

    return-wide v0
.end method

.method public whitelist getExtraMetaData()Landroid/media/tv/tuner/filter/AudioDescriptor;
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mExtraMetaData:Landroid/media/tv/tuner/filter/AudioDescriptor;

    return-object v0
.end method

.method public whitelist getIndexInDataGroup()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIndexInDataGroup:I

    return v0
.end method

.method public whitelist getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v1, :cond_d

    .line 158
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeGetLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    .line 160
    :cond_d
    iget-object v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    monitor-exit v0

    return-object v1

    .line 161
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getMpuSequenceNumber()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mMpuSequenceNumber:I

    return v0
.end method

.method public whitelist getNumDataPieces()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNumDataPieces:I

    return v0
.end method

.method public whitelist getOffset()J
    .registers 3

    .line 148
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mOffset:J

    return-wide v0
.end method

.method public whitelist getPts()J
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mPts:J

    return-wide v0
.end method

.method public whitelist getScIndexMask()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mScIndexMask:I

    return v0
.end method

.method public whitelist getStreamId()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mStreamId:I

    return v0
.end method

.method public whitelist isDtsPresent()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsDtsPresent:Z

    return v0
.end method

.method public whitelist isPrivateData()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPrivateData:Z

    return v0
.end method

.method public whitelist isPtsPresent()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsPtsPresent:Z

    return v0
.end method

.method public whitelist isSecureMemory()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mIsSecureMemory:Z

    return v0
.end method

.method public whitelist release()V
    .registers 4

    .line 320
    iget-object v0, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    if-eqz v1, :cond_9

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/MediaEvent;->nativeFinalize()V

    .line 325
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mNativeContext:J

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/MediaEvent;->mReleased:Z

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
