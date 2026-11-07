.class public final Landroid/media/metrics/MediaItemInfo;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/MediaItemInfo$Builder;,
        Landroid/media/metrics/MediaItemInfo$DataType;,
        Landroid/media/metrics/MediaItemInfo$SourceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_TYPE_AUDIO:J = 0x4L

.field public static final whitelist DATA_TYPE_DEPTH:J = 0x10L

.field public static final whitelist DATA_TYPE_GAIN_MAP:J = 0x20L

.field public static final whitelist DATA_TYPE_GAPLESS:J = 0x100L

.field public static final whitelist DATA_TYPE_HIGH_DYNAMIC_RANGE_VIDEO:J = 0x400L

.field public static final whitelist DATA_TYPE_HIGH_FRAME_RATE:J = 0x40L

.field public static final whitelist DATA_TYPE_IMAGE:J = 0x1L

.field public static final whitelist DATA_TYPE_METADATA:J = 0x8L

.field public static final whitelist DATA_TYPE_SPATIAL_AUDIO:J = 0x200L

.field public static final whitelist DATA_TYPE_SPEED_SETTING_CUE_POINTS:J = 0x80L

.field public static final whitelist DATA_TYPE_VIDEO:J = 0x2L

.field public static final whitelist SOURCE_TYPE_CAMERA:I = 0x2

.field public static final whitelist SOURCE_TYPE_EDITING_SESSION:I = 0x3

.field public static final whitelist SOURCE_TYPE_GALLERY:I = 0x1

.field public static final whitelist SOURCE_TYPE_GENERATED:I = 0x7

.field public static final whitelist SOURCE_TYPE_LOCAL_FILE:I = 0x4

.field public static final whitelist SOURCE_TYPE_REMOTE_FILE:I = 0x5

.field public static final whitelist SOURCE_TYPE_REMOTE_LIVE_STREAM:I = 0x6

.field public static final whitelist SOURCE_TYPE_UNSPECIFIED:I = 0x0

.field public static final whitelist VALUE_UNSPECIFIED:I = -0x1


# instance fields
.field private final blacklist mAudioChannelCount:I

.field private final blacklist mAudioSampleCount:J

.field private final blacklist mAudioSampleRateHz:I

.field private final blacklist mClipDurationMillis:J

.field private final blacklist mCodecNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContainerMimeType:Ljava/lang/String;

.field private final blacklist mDataTypes:J

.field private final blacklist mDurationMillis:J

.field private final blacklist mSampleMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSourceType:I

.field private final blacklist mVideoDataSpace:I

.field private final blacklist mVideoFrameRate:F

.field private final blacklist mVideoSampleCount:J

.field private final blacklist mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 559
    new-instance v0, Landroid/media/metrics/MediaItemInfo$1;

    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$1;-><init>()V

    sput-object v0, Landroid/media/metrics/MediaItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJ)V
    .registers 36
    .param p1, "sourceType"    # I
    .param p2, "dataTypes"    # J
    .param p4, "durationMillis"    # J
    .param p6, "clipDurationMillis"    # J
    .param p8, "containerMimeType"    # Ljava/lang/String;
    .param p11, "audioSampleRateHz"    # I
    .param p12, "audioChannelCount"    # I
    .param p13, "audioSampleCount"    # J
    .param p15, "videoSize"    # Landroid/util/Size;
    .param p16, "videoDataSpace"    # I
    .param p17, "videoFrameRate"    # F
    .param p18, "videoSampleCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Landroid/util/Size;",
            "IFJ)V"
        }
    .end annotation

    .line 174
    .local p9, "sampleMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "codecNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 175
    move/from16 v1, p1

    iput v1, v0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    .line 176
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    .line 177
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    .line 178
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    .line 179
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    .line 180
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    .line 181
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    .line 182
    move/from16 v11, p11

    iput v11, v0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    .line 183
    move/from16 v12, p12

    iput v12, v0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    .line 184
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    .line 185
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    .line 186
    move/from16 v1, p16

    iput v1, v0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    .line 187
    move/from16 v1, p17

    iput v1, v0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    .line 188
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    .line 189
    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJLandroid/media/metrics/MediaItemInfo-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Landroid/media/metrics/MediaItemInfo;-><init>(IJJJLjava/lang/String;Ljava/util/List;Ljava/util/List;IIJLandroid/util/Size;IFJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    .line 545
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    .line 547
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 552
    .local v0, "videoSizeWidth":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 553
    .local v1, "videoSizeHeight":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    .line 557
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/MediaItemInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/MediaItemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 490
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 491
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_95

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_95

    .line 492
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/MediaItemInfo;

    .line 493
    .local v2, "that":Landroid/media/metrics/MediaItemInfo;
    iget v3, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    iget v4, v2, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    if-ne v3, v4, :cond_93

    iget-wide v3, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    iget-wide v5, v2, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_93

    iget-wide v3, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_93

    iget-wide v3, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_93

    iget-object v3, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    .line 497
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    iget-object v4, v2, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    .line 498
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget-object v3, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    iget-object v4, v2, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    .line 499
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget v3, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    iget v4, v2, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    if-ne v3, v4, :cond_93

    iget v3, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    iget v4, v2, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    if-ne v3, v4, :cond_93

    iget-wide v3, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    iget-wide v5, v2, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_93

    iget-object v3, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    .line 503
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget v3, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    .line 504
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    iget v3, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    iget v4, v2, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_93

    iget-wide v3, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    iget-wide v5, v2, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_93

    goto :goto_94

    :cond_93
    move v0, v1

    .line 493
    :goto_94
    return v0

    .line 491
    .end local v2    # "that":Landroid/media/metrics/MediaItemInfo;
    :cond_95
    :goto_95
    return v1
.end method

.method public whitelist getAudioChannelCount()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    return v0
.end method

.method public whitelist getAudioSampleCount()J
    .registers 3

    .line 260
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    return-wide v0
.end method

.method public whitelist getAudioSampleRateHz()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    return v0
.end method

.method public whitelist getClipDurationMillis()J
    .registers 3

    .line 216
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    return-wide v0
.end method

.method public whitelist getCodecNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getContainerMimeType()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataTypes()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    return-wide v0
.end method

.method public whitelist getDurationMillis()J
    .registers 3

    .line 208
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    return-wide v0
.end method

.method public whitelist getSampleMimeTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getSourceType()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    return v0
.end method

.method public whitelist getVideoDataSpace()I
    .registers 2

    .line 275
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    return v0
.end method

.method public whitelist getVideoFrameRate()F
    .registers 2

    .line 283
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    return v0
.end method

.method public whitelist getVideoSampleCount()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    return-wide v0
.end method

.method public whitelist getVideoSize()Landroid/util/Size;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 511
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItemInfo { sourceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clipDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", containerMimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleMimeTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecNames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioSampleRateHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioChannelCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioSampleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoDataSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSampleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 516
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDataTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 518
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 519
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mClipDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mSampleMimeTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 522
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mCodecNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 523
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleRateHz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mAudioSampleCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 526
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoDataSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 530
    iget-wide v0, p0, Landroid/media/metrics/MediaItemInfo;->mVideoSampleCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 531
    return-void
.end method
