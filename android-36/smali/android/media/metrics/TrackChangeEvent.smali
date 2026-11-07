.class public final Landroid/media/metrics/TrackChangeEvent;
.super Landroid/media/metrics/Event;
.source "TrackChangeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/TrackChangeEvent$Builder;,
        Landroid/media/metrics/TrackChangeEvent$TrackType;,
        Landroid/media/metrics/TrackChangeEvent$TrackChangeReason;,
        Landroid/media/metrics/TrackChangeEvent$TrackState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/TrackChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRACK_CHANGE_REASON_ADAPTIVE:I = 0x4

.field public static final whitelist TRACK_CHANGE_REASON_INITIAL:I = 0x2

.field public static final whitelist TRACK_CHANGE_REASON_MANUAL:I = 0x3

.field public static final whitelist TRACK_CHANGE_REASON_OTHER:I = 0x1

.field public static final whitelist TRACK_CHANGE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist TRACK_STATE_OFF:I = 0x0

.field public static final whitelist TRACK_STATE_ON:I = 0x1

.field public static final whitelist TRACK_TYPE_AUDIO:I = 0x0

.field public static final whitelist TRACK_TYPE_TEXT:I = 0x2

.field public static final whitelist TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field private final blacklist mAudioSampleRate:I

.field private final blacklist mBitrate:I

.field private final blacklist mChannelCount:I

.field private final blacklist mCodecName:Ljava/lang/String;

.field private final blacklist mContainerMimeType:Ljava/lang/String;

.field private final blacklist mHeight:I

.field private final blacklist mLanguage:Ljava/lang/String;

.field private final blacklist mLanguageRegion:Ljava/lang/String;

.field private final blacklist mReason:I

.field private final blacklist mSampleMimeType:Ljava/lang/String;

.field private final blacklist mState:I

.field private final blacklist mTimeSinceCreatedMillis:J

.field private final blacklist mType:I

.field private final blacklist mVideoFrameRate:F

.field private final blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 350
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/TrackChangeEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/TrackChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;IIIIFLandroid/os/Bundle;)V
    .registers 34
    .param p1, "state"    # I
    .param p2, "reason"    # I
    .param p3, "containerMimeType"    # Ljava/lang/String;
    .param p4, "sampleMimeType"    # Ljava/lang/String;
    .param p5, "codecName"    # Ljava/lang/String;
    .param p6, "bitrate"    # I
    .param p7, "timeSinceCreatedMillis"    # J
    .param p9, "type"    # I
    .param p10, "language"    # Ljava/lang/String;
    .param p11, "languageRegion"    # Ljava/lang/String;
    .param p12, "channelCount"    # I
    .param p13, "sampleRate"    # I
    .param p14, "width"    # I
    .param p15, "height"    # I
    .param p16, "videoFrameRate"    # F
    .param p17, "extras"    # Landroid/os/Bundle;

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/media/metrics/Event;-><init>()V

    .line 122
    move/from16 v1, p1

    iput v1, v0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    .line 123
    move/from16 v2, p2

    iput v2, v0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    .line 124
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    .line 125
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    .line 126
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    .line 127
    move/from16 v6, p6

    iput v6, v0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    .line 128
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    .line 129
    move/from16 v9, p9

    iput v9, v0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    .line 130
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    .line 131
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    .line 132
    move/from16 v12, p12

    iput v12, v0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    .line 133
    move/from16 v13, p13

    iput v13, v0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    .line 134
    move/from16 v14, p14

    iput v14, v0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    .line 135
    move/from16 v15, p15

    iput v15, v0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    .line 136
    move/from16 v1, p16

    iput v1, v0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    .line 137
    invoke-virtual/range {p17 .. p17}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/media/metrics/TrackChangeEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;IIIIFLandroid/os/Bundle;Landroid/media/metrics/TrackChangeEvent-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/media/metrics/TrackChangeEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;IIIIFLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 22
    .param p1, "in"    # Landroid/os/Parcel;

    .line 313
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/media/metrics/Event;-><init>()V

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, "flg":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .local v3, "reason":I
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_18

    move-object v4, v5

    goto :goto_1c

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "containerMimeType":Ljava/lang/String;
    :goto_1c
    and-int/lit8 v6, v1, 0x8

    if-nez v6, :cond_22

    move-object v6, v5

    goto :goto_26

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "sampleMimeType":Ljava/lang/String;
    :goto_26
    and-int/lit8 v7, v1, 0x10

    if-nez v7, :cond_2c

    move-object v7, v5

    goto :goto_30

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "codecName":Ljava/lang/String;
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 321
    .local v8, "bitrate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 322
    .local v9, "timeSinceCreatedMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 323
    .local v11, "type":I
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_42

    move-object v12, v5

    goto :goto_46

    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "language":Ljava/lang/String;
    :goto_46
    and-int/lit16 v13, v1, 0x200

    if-nez v13, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "languageRegion":Ljava/lang/String;
    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 326
    .local v13, "channelCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 327
    .local v14, "sampleRate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 328
    .local v15, "width":I
    move/from16 v16, v1

    .end local v1    # "flg":I
    .local v16, "flg":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .local v1, "height":I
    move/from16 v17, v1

    .end local v1    # "height":I
    .local v17, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 330
    .local v1, "videoFrameRate":F
    move/from16 v18, v1

    .end local v1    # "videoFrameRate":F
    .local v18, "videoFrameRate":F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 332
    .local v1, "extras":Landroid/os/Bundle;
    iput v2, v0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    .line 333
    iput v3, v0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    .line 334
    iput-object v4, v0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    .line 335
    iput-object v6, v0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    .line 336
    iput-object v7, v0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    .line 337
    iput v8, v0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    .line 338
    iput-wide v9, v0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    .line 339
    iput v11, v0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    .line 340
    iput-object v12, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    .line 341
    iput-object v5, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    .line 342
    iput v13, v0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    .line 343
    iput v14, v0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    .line 344
    iput v15, v0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    .line 345
    move/from16 v19, v2

    move/from16 v2, v17

    .end local v17    # "height":I
    .local v2, "height":I
    .local v19, "state":I
    iput v2, v0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    .line 346
    move/from16 v2, v18

    .end local v18    # "videoFrameRate":F
    .local v2, "videoFrameRate":F
    .restart local v17    # "height":I
    iput v2, v0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    .line 347
    iput-object v1, v0, Landroid/media/metrics/TrackChangeEvent;->mMetricsBundle:Landroid/os/Bundle;

    .line 348
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/metrics/TrackChangeEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/TrackChangeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 386
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 387
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_8b

    .line 388
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/TrackChangeEvent;

    .line 389
    .local v2, "that":Landroid/media/metrics/TrackChangeEvent;
    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mState:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    if-ne v3, v4, :cond_89

    iget-object v3, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    .line 391
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    .line 392
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    .line 393
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    if-ne v3, v4, :cond_89

    iget-wide v3, p0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mType:I

    if-ne v3, v4, :cond_89

    iget-object v3, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    .line 397
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    .line 398
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    if-ne v3, v4, :cond_89

    iget v3, p0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    iget v4, v2, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_89

    goto :goto_8a

    :cond_89
    move v0, v1

    .line 389
    :goto_8a
    return v0

    .line 387
    .end local v2    # "that":Landroid/media/metrics/TrackChangeEvent;
    :cond_8b
    :goto_8b
    return v1
.end method

.method public whitelist getAudioSampleRate()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    return v0
.end method

.method public whitelist getBitrate()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    return v0
.end method

.method public whitelist getCodecName()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContainerMimeType()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    return v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLanguageRegion()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getSampleMimeType()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimeSinceCreatedMillis()J
    .registers 3

    .line 196
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public whitelist getTrackChangeReason()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    return v0
.end method

.method public whitelist getTrackState()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    return v0
.end method

.method public whitelist getTrackType()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    return v0
.end method

.method public whitelist getVideoFrameRate()F
    .registers 2

    .line 268
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 408
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    iget-object v6, v0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    iget-object v11, v0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 408
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackChangeEvent { state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", containerMimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleMimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codecName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", languageRegion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "flg":I
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x4

    .line 285
    :cond_7
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x8

    .line 286
    :cond_d
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x10

    .line 287
    :cond_13
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    if-eqz v1, :cond_19

    or-int/lit16 v0, v0, 0x100

    .line 288
    :cond_19
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    if-eqz v1, :cond_1f

    or-int/lit16 v0, v0, 0x200

    .line 289
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mContainerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    :cond_35
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mSampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    :cond_3e
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mCodecName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    :cond_47
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mBitrate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-wide v1, p0, Landroid/media/metrics/TrackChangeEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    :cond_5f
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mLanguageRegion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    :cond_68
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mChannelCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mAudioSampleRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v1, p0, Landroid/media/metrics/TrackChangeEvent;->mVideoFrameRate:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 305
    iget-object v1, p0, Landroid/media/metrics/TrackChangeEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 306
    return-void
.end method
