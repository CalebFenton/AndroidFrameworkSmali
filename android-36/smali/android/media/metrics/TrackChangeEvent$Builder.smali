.class public final Landroid/media/metrics/TrackChangeEvent$Builder;
.super Ljava/lang/Object;
.source "TrackChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/TrackChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioSampleRate:I

.field private blacklist mBitrate:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mChannelCount:I

.field private blacklist mCodecName:Ljava/lang/String;

.field private blacklist mContainerMimeType:Ljava/lang/String;

.field private blacklist mHeight:I

.field private blacklist mLanguage:Ljava/lang/String;

.field private blacklist mLanguageRegion:Ljava/lang/String;

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mReason:I

.field private blacklist mSampleMimeType:Ljava/lang/String;

.field private blacklist mState:I

.field private blacklist mTimeSinceCreatedMillis:J

.field private final blacklist mType:I

.field private blacklist mVideoFrameRate:F

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "type"    # I

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    .line 419
    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    .line 424
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 428
    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    .line 429
    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    .line 430
    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    .line 431
    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    .line 432
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    .line 433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 435
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 443
    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    goto :goto_37

    .line 444
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "track type must be one of TRACK_TYPE_AUDIO, TRACK_TYPE_VIDEO, TRACK_TYPE_TEXT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_37
    :goto_37
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mType:I

    .line 448
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 641
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 645
    return-void

    .line 642
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/media/metrics/TrackChangeEvent;
    .registers 23

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 618
    iget-wide v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v3, 0x4000

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 620
    new-instance v3, Landroid/media/metrics/TrackChangeEvent;

    iget v4, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    iget v5, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    iget-object v6, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mContainerMimeType:Ljava/lang/String;

    iget-object v7, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mSampleMimeType:Ljava/lang/String;

    iget-object v8, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mCodecName:Ljava/lang/String;

    iget v9, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    iget-wide v10, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    iget v12, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mType:I

    iget-object v13, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguage:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguageRegion:Ljava/lang/String;

    iget v15, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    iget v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    move/from16 v16, v1

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    move/from16 v18, v1

    iget v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    move/from16 v19, v1

    iget-object v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move/from16 v17, v2

    invoke-direct/range {v3 .. v21}, Landroid/media/metrics/TrackChangeEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;IIIIFLandroid/os/Bundle;Landroid/media/metrics/TrackChangeEvent-IA;)V

    .line 637
    .local v3, "o":Landroid/media/metrics/TrackChangeEvent;
    return-object v3
.end method

.method public whitelist setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 565
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 566
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 567
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    .line 568
    return-object p0
.end method

.method public whitelist setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 505
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 506
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 507
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    .line 508
    return-object p0
.end method

.method public whitelist setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 553
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 554
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 555
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    .line 556
    return-object p0
.end method

.method public whitelist setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 495
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 496
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mCodecName:Ljava/lang/String;

    .line 497
    return-object p0
.end method

.method public whitelist setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 475
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 476
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mContainerMimeType:Ljava/lang/String;

    .line 477
    return-object p0
.end method

.method public whitelist setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 587
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 588
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 589
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    .line 590
    return-object p0
.end method

.method public whitelist setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 530
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 531
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguage:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public whitelist setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 541
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 542
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 543
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguageRegion:Ljava/lang/String;

    .line 544
    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 2
    .param p1, "metricsBundle"    # Landroid/os/Bundle;

    .line 611
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 612
    return-object p0
.end method

.method public whitelist setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 484
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 485
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 486
    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mSampleMimeType:Ljava/lang/String;

    .line 487
    return-object p0
.end method

.method public whitelist setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 518
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 519
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 520
    iput-wide p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 521
    return-object p0
.end method

.method public whitelist setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 464
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 465
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 466
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    .line 467
    return-object p0
.end method

.method public whitelist setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 454
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 455
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 456
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    .line 457
    return-object p0
.end method

.method public whitelist setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 2
    .param p1, "value"    # F

    .line 599
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 600
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    .line 601
    return-object p0
.end method

.method public whitelist setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 576
    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    .line 577
    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    .line 578
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    .line 579
    return-object p0
.end method
