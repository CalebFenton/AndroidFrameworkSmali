.class public final Landroid/media/metrics/MediaItemInfo$Builder;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/MediaItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioChannelCount:I

.field private blacklist mAudioSampleCount:J

.field private blacklist mAudioSampleRateHz:I

.field private blacklist mClipDurationMillis:J

.field private final blacklist mCodecNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContainerMimeType:Ljava/lang/String;

.field private blacklist mDataTypes:J

.field private blacklist mDurationMillis:J

.field private final blacklist mSampleMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceType:I

.field private blacklist mVideoDataSpace:I

.field private blacklist mVideoFrameRate:F

.field private blacklist mVideoSampleCount:J

.field private blacklist mVideoSize:Landroid/util/Size;


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    .line 316
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    .line 317
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    .line 320
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    .line 321
    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    .line 322
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    .line 323
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    .line 324
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    .line 325
    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    .line 326
    return-void
.end method


# virtual methods
.method public whitelist addCodecName(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 4
    .param p1, "codecName"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    return-object p0
.end method

.method public whitelist addDataType(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 5
    .param p1, "dataType"    # J

    .line 336
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    .line 337
    return-object p0
.end method

.method public whitelist addSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 360
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/MediaItemInfo;
    .registers 25

    .line 422
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/metrics/MediaItemInfo;

    iget v2, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    iget-wide v3, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDataTypes:J

    iget-wide v5, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    iget-wide v7, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    iget-object v9, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mSampleMimeTypes:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mCodecNames:Ljava/util/ArrayList;

    iget v12, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    iget v13, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    iget-wide v14, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    move/from16 v18, v1

    iget v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    move/from16 v20, v1

    move/from16 v19, v2

    iget-wide v1, v0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    const/16 v21, 0x0

    move-wide/from16 v22, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v2, v19

    move/from16 v18, v20

    move-wide/from16 v19, v22

    invoke-direct/range {v1 .. v21}, Landroid/media/metrics/MediaItemInfo;-><init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJLandroid/media/metrics/MediaItemInfo-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAudioChannelCount(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2
    .param p1, "audioChannelCount"    # I

    .line 381
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioChannelCount:I

    .line 382
    return-object p0
.end method

.method public whitelist setAudioSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "audioSampleCount"    # J

    .line 387
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleCount:J

    .line 388
    return-object p0
.end method

.method public whitelist setAudioSampleRateHz(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2
    .param p1, "audioSampleRateHz"    # I

    .line 375
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mAudioSampleRateHz:I

    .line 376
    return-object p0
.end method

.method public whitelist setClipDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "clipDurationMillis"    # J

    .line 348
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mClipDurationMillis:J

    .line 349
    return-object p0
.end method

.method public whitelist setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mContainerMimeType:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public whitelist setDurationMillis(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "durationMillis"    # J

    .line 342
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mDurationMillis:J

    .line 343
    return-object p0
.end method

.method public whitelist setSourceType(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2
    .param p1, "sourceType"    # I

    .line 330
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mSourceType:I

    .line 331
    return-object p0
.end method

.method public whitelist setVideoDataSpace(I)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2
    .param p1, "videoDataSpace"    # I

    .line 403
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoDataSpace:I

    .line 404
    return-object p0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 2
    .param p1, "videoFrameRate"    # F

    .line 409
    iput p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoFrameRate:F

    .line 410
    return-object p0
.end method

.method public whitelist setVideoSampleCount(J)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "videoSampleCount"    # J

    .line 415
    iput-wide p1, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSampleCount:J

    .line 416
    return-object p0
.end method

.method public whitelist setVideoSize(Landroid/util/Size;)Landroid/media/metrics/MediaItemInfo$Builder;
    .registers 3
    .param p1, "videoSize"    # Landroid/util/Size;

    .line 393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo$Builder;->mVideoSize:Landroid/util/Size;

    .line 394
    return-object p0
.end method
